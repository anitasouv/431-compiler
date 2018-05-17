package ast;

import java.util.List;
import java.util.ArrayList;
import cfg.*;
import llvm.*;


public class ReturnStatement
   extends AbstractStatement
{
   private final Expression expression;

   public ReturnStatement(int lineNum, Expression expression)
   {
      super(lineNum);
      this.expression = expression;
   }

   public void typeOpCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      expression.typeOpCheck(types, decls, func, curFunc);
   }

   public void typeCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      //System.out.println("TYPECHECK: Return");
      
      //System.out.println("compare types: " + (expression.getType(types, decls, func).equals(returnType)));
      if ( !(expression.getType(types, decls, func, curFunc).equals(curFunc.getReturnType())) && !(curFunc.getReturnType() instanceof StructType && expression.getType(types, decls, func, curFunc) instanceof NullType) ) {
          System.out.println("RETURN TYPE DOES NOT Match in: " + curFunc.getName()  + " attempt: " + expression.getType(types, decls, func, curFunc).toString() + " return type: " + curFunc.getReturnType().toString() );
      }
   }

   public boolean checkReturn() {
        return true;
   }
<<<<<<< HEAD
 
   public CFGNode cfg(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {

       startNode.addStatement(this);
=======
   /*
   public boolean sameNode(CFGNode node1, CFGNode node2) {
      return node1 instanceof CFGNode && node1.equals(((CFGNode)node2).a); 
   }
   */
   public CFGNode cfg(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {
       //expression.cfg(types, decls, func, curFunc);
       //CFGNode newNode = new CFGNode(startNode.name, startNode.count + 1);

       CFGNode retNode = new CFGNode(startNode.name , exitNode.blockNum);
       exitNode.incrementBlock();

       startNode.addChild(retNode);
       retNode.addParent(startNode);

       retNode.addChild(exitNode);
       exitNode.addParent(retNode);

       retNode.addLLVM(new ReturnEmptyLLVM());
       retNode.addStatement(this);
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

       List<LLVM> inst = expression.toLLVM(types, decls, func, curFunc, startNode, exitNode);
       String resultReg = inst.get(inst.size() - 1).getResultReg();
       String resultType = inst.get(inst.size() - 1).getResultType();
<<<<<<< HEAD
       startNode.addLLVMList(inst);

       if (resultReg.equals("null")) { 
	   resultType = curFunc.getReturnType().toLLVMType();
	   if (resultType.contains("%struct.")) {resultType = resultType + "*"; }
       }

       LLVM storeRet = new StoreLLVM(resultType, resultReg, resultType, "%_retval_");
       LLVM breakToRet = new BranchImmLLVM(exitNode.name + exitNode.blockNum);
       startNode.addLLVM(storeRet);
       startNode.addLLVM(breakToRet); 

       //startNode.addLLVM(new BranchImmLLVM(exitNode.name + exitNode.blockNum));
       startNode.addChild(exitNode);
       exitNode.addParent(startNode);

       return startNode;
=======
       LLVM ret = new ReturnLLVM(resultType, resultReg);
       retNode.addLLVMList(inst);
       retNode.addLLVM(ret);

       // store the value int _retval_
       // break to the blockLabel       


       
       return retNode;
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
   }


   public String typeToLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return "returnType";
   }


   public List<LLVM> toLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return new ArrayList<LLVM>();     
   }


}
