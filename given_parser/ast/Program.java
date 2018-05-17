package ast;

import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;
import cfg.*;
import llvm.*;
import arm.*;

public class Program
{
   private final List<TypeDeclaration> types;
   private final List<Declaration> decls;
   private final List<Function> funcs;
   private final List<CFGNode> cfgNodes;

   private boolean printLLVM;
   private boolean printARM;

   public Program(List<TypeDeclaration> types, List<Declaration> decls,
      List<Function> funcs)
   {
      this.types = types;
      this.decls = decls;
      this.funcs = funcs;
      this.cfgNodes = new ArrayList<CFGNode>();
      if (! this.checkMain()) {
          System.out.println("ERROR: NO VALID MAIN");
      } 

      this.checkTypes();
      this.checkReturn();
      this.checkReturnTypes();
  

      // M2
      //this.cfg();
   }

   public void setPrintLLVM() {
        printLLVM = true;
   }

   public void setPrintARM() {
        printARM = true;
   }




   public void checkTypes() {
      for (int i = 0; i < funcs.size(); i++) {
	 funcs.get(i).typeOpCheck(types, decls, funcs, funcs.get(i));
      }
   }

   public void checkReturnTypes() {
      for (int i = 0; i < funcs.size(); i++) {
	 funcs.get(i).typeCheck(types, decls, funcs, funcs.get(i));
      }
   }

   public boolean checkMain() {
      for (int i = 0; i < funcs.size(); i++) {
          if (funcs.get(i).getName().equals("main")) {
	      return true;
          }
      }
      return false;
   }

   public boolean checkReturn() {
      for (int i = 0; i < funcs.size(); i++) {
	 if ( !funcs.get(i).checkReturn() && !funcs.get(i).getReturnType().equals(new VoidType())) {
	    System.out.println("ERROR: NOT ALL PATHS HAVE RETURN");
            System.out.println("Function: " + funcs.get(i).getName());
	    return false;
         }
      }
      return true;
   }

   public void cfg() {
      int globalLabelNum = 0;
      CFGNode globalNode = new CFGNode("globals", globalLabelNum, 0, 0, 0);
      globalLabelNum++;

      cfgNodes.add(globalNode);

      List<LLVM> globalDec = new ArrayList<LLVM>();

	//declarations
      globalDec.add(new TargetLLVM());

      LLVM struct = null;
      for( int i = 0; i < types.size(); i++) {
           List<String> props = new ArrayList<String>();
           String t = "";
           for(int j = 0; j < types.get(i).getFields().size(); j++) {
                t = types.get(i).getFields().get(j).getType().toLLVMType();
                if(t.contains("%struct.")) {
                    props.add(t + "*");
                } else {
                    props.add(t);
                }
           }

           struct = new DeclareStructLLVM(types.get(i).getName(), props);
           globalDec.add(struct);
      }
      globalNode.addLLVMList(globalDec);


      // global vars
      List<LLVM> globalVarDec = new ArrayList<LLVM>();
      String type = "";
      String content = "0";
      for (int i = 0; i < decls.size(); i++) {
	   content = "0";
	   type = decls.get(i).getType().toLLVMType();
	   if (type.contains("%struct.")) { 
		type = type + "*";
	   	content = "null";
	   }
           globalVarDec.add(new GlobalDecLLVM(decls.get(i).getName(), "common", "global", type, content, 4));
      }
      globalNode.addLLVMList(globalVarDec);



// print as we go
      if (printLLVM) {
         globalNode.printOut();
      } else if (printARM) {
          globalNode.printOutARM();
      }
      



      int globalRegNum = 0;
      LLVM funcDef = null;
      for (int i = 0; i < funcs.size(); i++) {
         // CFGNode initNode = new CFGNode(funcs.get(i).getName(), globalLabelNum, 0, 0);
         CFGNode initNode = new CFGNode("LU", globalLabelNum, 0, 0, 0);
         globalLabelNum++;

	       // and func definition, local declaration
	 List<String> funcArgs = new ArrayList<String>();
         List<String> props = new ArrayList<String>();

	 String temp = "";
         for(int j = 0; j < funcs.get(i).getParams().size(); j++) {
	     temp = funcs.get(i).getParams().get(j).getType().toLLVMType();
	     if (temp.contains("%struct")) { temp = temp + "*";}
             props.add(temp);
             funcArgs.add(funcs.get(i).getParams().get(j).getName());
         }
	 

	 String retType = funcs.get(i).getReturnType().toLLVMType();
	 if (retType.contains("%struct.")) {retType = retType + "*";}

         funcDef = new DefineFuncLLVM(funcs.get(i).getName(), retType, props, funcArgs);

         initNode.addLLVM(funcDef);


         // CFGNode allocateNode = new CFGNode(funcs.get(i).getName(), globalLabelNum, 0, 0);
         CFGNode allocateNode = new CFGNode("LU", globalLabelNum, 0, 0, 0);
         globalLabelNum++;


         List<LLVM> localVars = new ArrayList<LLVM>();
	String returnType = "";
         if (!funcs.get(i).getReturnType().equals(new VoidType())) {
	      returnType = funcs.get(i).getReturnType().toLLVMType();
	      if (returnType.contains("%struct.")) {returnType = returnType + "*";}
              localVars.add(new AllocationLLVM( "%_retval_", returnType));
         }

	 for (int j = 0; j < funcs.get(i).getDecls().size(); j++) {
              if(funcs.get(i).getDecls().get(j).getType().toLLVMType().contains("%struct")) {
                  localVars.add(new AllocationLLVM( "%" +funcs.get(i).getDecls().get(j).getName(), funcs.get(i).getDecls().get(j).getType().toLLVMType() + "*"));
              } else {
                  localVars.add(new AllocationLLVM( "%" +funcs.get(i).getDecls().get(j).getName(), funcs.get(i).getDecls().get(j).getType().toLLVMType()));
              }
              //localVars.add(new AllocationLLVM( "%" +funcs.get(i).getDecls().get(j).getName(), funcs.get(i).getDecls().get(j).getType().toLLVMType()));
         }

         for (int j = 0; j < funcs.get(i).getParams().size(); j++) {
		// _P_num load to this alloacated area (that is named the real name (eg num))
              if(funcs.get(i).getParams().get(j).getType().toLLVMType().contains("%struct")) {
                  localVars.add(new AllocationLLVM( "%" + funcs.get(i).getParams().get(j).getName(), funcs.get(i).getParams().get(j).getType().toLLVMType() + "*"));

              } else {
                  localVars.add(new AllocationLLVM( "%" +funcs.get(i).getParams().get(j).getName(), funcs.get(i).getParams().get(j).getType().toLLVMType()));
              }
             // localVars.add(new AllocationLLVM( "%" +funcs.get(i).getParams().get(j).getName(), funcs.get(i).getParams().get(j).getType().toLLVMType()));
	      temp = funcs.get(i).getParams().get(j).getType().toLLVMType();
	      if (temp.contains("%struct")) { temp = temp + "*";}
	      localVars.add(new StoreLLVM( temp, 
					   "%" + "_P_" + funcs.get(i).getParams().get(j).getName(),
				           temp,
					   "%" + funcs.get(i).getParams().get(j).getName()));

         }

         allocateNode.addLLVMList(localVars);

         initNode.addChild(allocateNode);
         allocateNode.addParent(initNode);

         // CFGNode startNode = new CFGNode(funcs.get(i).getName(), globalLabelNum, 0, 0);
         CFGNode startNode = new CFGNode("LU", globalLabelNum, 0, 0, 0);
         globalLabelNum = globalLabelNum + 1;

         startNode.addParent(allocateNode);
         allocateNode.addChild(startNode);

        // add branch to the start node after allocation
         allocateNode.addLLVM(new BranchImmLLVM(startNode.name + startNode.blockNum));



         cfgNodes.add(initNode);
         // CFGNode exitNode = new CFGNode(funcs.get(i).getName(), globalLabelNum, globalLabelNum, -1);
         CFGNode exitNode = new CFGNode("LU", globalLabelNum, globalLabelNum, -1, globalRegNum);
         exitNode.incrementLabelNum();

         // we will keep track of the Block number and Register number for LLVM reference in the exit node (since it is always passed around)
         CFGNode lastNodeOfFunc = funcs.get(i).cfg(types, decls, funcs, funcs.get(i), startNode, exitNode);

         if ( lastNodeOfFunc.getLLVM().size() == 0 || !(lastNodeOfFunc.getLLVM().get(lastNodeOfFunc.getLLVM().size()-1) instanceof BranchImmLLVM)) {
              lastNodeOfFunc.addLLVM(new BranchImmLLVM(exitNode.name + exitNode.blockNum));
         }

         globalLabelNum = exitNode.getLabelCount();
         globalRegNum = exitNode.getGlobalRegNum();

         if (funcs.get(i).getReturnType().equals(new VoidType())) {
            exitNode.addLLVM(new ReturnEmptyLLVM());
         } else {
	    returnType = funcs.get(i).getReturnType().toLLVMType();
	    if (returnType.contains("%struct.")) {returnType = returnType + "*";}
            exitNode.addLLVM(new LoadLLVM("%u" + exitNode.regNum, returnType , "%_retval_"));
            exitNode.addLLVM(new ReturnLLVM("%u" + exitNode.regNum, returnType));
            exitNode.incrementReg();          
         }

	 LLVM closureThings = new NOPLLVM("for the ", "end closures");

	 List<String> reg = new ArrayList<String>();
         reg.add("r4");
         reg.add("r5");
         reg.add("r6");
         reg.add("r7");
         reg.add("r8");
         closureThings.addARM(new PushPopARM("POP", reg));

	 List<String> r = new ArrayList<String>();
         r.add("fp");
         r.add("pc");
         closureThings.addARM(new PushPopARM("POP", r));

	 closureThings.addARM(new SizeARM(funcs.get(i).getName()));

	 exitNode.addLLVM(closureThings);

 //  initNode.generateGenAndKill();

// print as we go
         if (printLLVM) {
           initNode.printOut();
           exitNode.printOut();
           System.out.println("}\n");
         }else if (printARM) {
            initNode.printOutARM();
           exitNode.printOutARM();
         }

      }

      List<LLVM> endGlobalDec = new ArrayList<LLVM>();

      List<String> args = new ArrayList<String>();
      args.add("i8*");
      args.add("...");
      LLVM s = new DeclareFuncLLVM("scanf", "i32", args);
      LLVM p  = new DeclareFuncLLVM("printf", "i32", args);
      List<String> argsFree = new ArrayList<String>();
      argsFree.add("i8*");
      LLVM f  = new DeclareFuncLLVM("free", "void", argsFree);

      List<String> args1 = new ArrayList<String>();
      args1.add("i32");
      LLVM m = new DeclareFuncLLVM("malloc", "i8*", args1);

      endGlobalDec.addAll(Arrays.asList(s,p,m,f));
      endGlobalDec.add(new GlobalDecLLVM(".println", "private", "unnamed_addr", "constant [5 x i8]", "c\"%ld\\0A\\00\"", 1));
      endGlobalDec.add(new GlobalDecLLVM(".print", "private", "unnamed_addr", "constant [5 x i8]", "c\"%ld \\00\"", 1));
      endGlobalDec.add(new GlobalDecLLVM(".read", "private", "unnamed_addr", "constant [4 x i8]", "c\"%ld\\00\"", 1));
      endGlobalDec.add(new GlobalDecLLVM(".read_scratch", "common", "global", "i32", "0", 4));
  
      endGlobalDec.add(new GlobalDecLLVM("_scanned_", "common", "global", "i32", "0", 4));

      CFGNode lastNode = new CFGNode("end", globalLabelNum, 0, 0, 0);
      globalLabelNum++;
      lastNode.addLLVMList(endGlobalDec);

      cfgNodes.add(lastNode);
      for (int i = 0; i < cfgNodes.size(); i++) {
            cfgNodes.get(i).generateGenAndKill();
      }

// print as we go
      if (printLLVM) {
        lastNode.printOut();
      } else if (printARM) {
        lastNode.printOutARM();
      }

   }

   public void printLLVM() {
      for (int i = 0; i < cfgNodes.size(); i++) {
         cfgNodes.get(i).printOut();
         if (i != 0 && i != cfgNodes.size() - 1) {

	          System.out.println("}\n");
         }
      }
   }

   public void printARM() {
      for (int i = 0; i < cfgNodes.size(); i++) {
         cfgNodes.get(i).printOutARM();
      }
   }
}
