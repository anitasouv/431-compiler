package ast;

import java.util.List;
import java.util.ArrayList;
import cfg.*;
import llvm.*;


public class ConditionalStatement
   extends AbstractStatement
{
   private final Expression guard;
   private final Statement thenBlock;
   private final Statement elseBlock;

   public ConditionalStatement(int lineNum, Expression guard,
      Statement thenBlock, Statement elseBlock)
   {
      super(lineNum);
      this.guard = guard;
      this.thenBlock = thenBlock;
      this.elseBlock = elseBlock;
   }


   public void typeOpCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      if (! guard.getType(types, decls, func, curFunc).equals(new BoolType())) {
          System.out.println("IF STATEMNET NEEDS A BOOLEAN TYPE FOR GUARD: " + this.getLineNum());
      }
      thenBlock.typeOpCheck(types, decls, func, curFunc);
      elseBlock.typeOpCheck(types, decls, func, curFunc);
   }

   public void typeCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
        thenBlock.typeCheck(types, decls, func, curFunc);
        elseBlock.typeCheck(types, decls, func, curFunc);
   }


   public boolean checkReturn() {
        return thenBlock.checkReturn() && elseBlock.checkReturn();
   }

   public CFGNode cfg(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {
       startNode.addGuard(guard);
       startNode.addLLVMList(guard.toLLVM(types, decls, func, curFunc, startNode, exitNode));
<<<<<<< HEAD
       String compareReg = startNode.getLLVM().get(startNode.getLLVM().size() - 1).getResultReg();

       CFGNode thenNode = new CFGNode(startNode.name, exitNode.labelCountAndIncrement(), 0, 0, 0);
=======
 
       CFGNode thenNode = new CFGNode( startNode.name, exitNode.blockNum );
       exitNode.incrementBlock();
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
       thenNode.addParent(startNode);
       startNode.addChild(thenNode);
       CFGNode thenEndNode = thenBlock.cfg(types, decls, func, curFunc, thenNode, exitNode);

<<<<<<< HEAD
       CFGNode elseNode = new CFGNode(startNode.name, exitNode.labelCountAndIncrement(), 0, 0, 0);
=======
       CFGNode elseNode = new CFGNode(startNode.name, exitNode.blockNum);
       exitNode.incrementBlock();
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
       elseNode.addParent(startNode);
       startNode.addChild(elseNode);
       CFGNode elseEndNode = elseBlock.cfg(types, decls, func, curFunc, elseNode, exitNode);
       
<<<<<<< HEAD
       CFGNode ifEndNode = new CFGNode( startNode.name, exitNode.labelCountAndIncrement(), 0, 0, 0);
=======
       CFGNode ifEndNode = new CFGNode(startNode.name, exitNode.blockNum );
       exitNode.incrementBlock();
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
       ifEndNode.addParent(thenEndNode);
       ifEndNode.addParent(elseEndNode);

       thenEndNode.addChild(ifEndNode);
       elseEndNode.addChild(ifEndNode);

// add branches
<<<<<<< HEAD
/*	String type = "";
       if (!(startNode.getLLVM().get(startNode.getLLVM().size() - 1) instanceof ComparisonLLVM )) {
       	    if (!(startNode.getLLVM().get(startNode.getLLVM().size() - 1) instanceof LoadLLVM )) {
		type = startNode.getLLVM().get(startNode.getLLVM().size() - 1).getResultType();
	    } else {
		type = "i32";
	    }
            startNode.addLLVM(new ComparisonLLVM("%u" + exitNode.regNum, "EQ", type, compareReg, "1"));
            startNode.addLLVM(new BranchLLVM( "%u" + exitNode.regNum , thenNode.name + thenNode.blockNum, elseNode.name + elseNode.blockNum));
	    exitNode.incrementReg();
       } else {
       	    startNode.addLLVM(new BranchLLVM( compareReg , thenNode.name + thenNode.blockNum, elseNode.name + elseNode.blockNum));
	}*/
       	    startNode.addLLVM(new BranchLLVM( compareReg , thenNode.name + thenNode.blockNum, elseNode.name + elseNode.blockNum));

// check for a branch statement already before inputing. if there is a break statement,then do not put it in 
       if ( thenNode.getLLVM().size() == 0 || !(thenNode.getLLVM().get(thenNode.getLLVM().size()-1) instanceof BranchImmLLVM)) {
          thenNode.addLLVM(new BranchImmLLVM(ifEndNode.name + ifEndNode.blockNum));
       }

       if ( elseNode.getLLVM().size() == 0 || !(elseNode.getLLVM().get(elseNode.getLLVM().size()-1) instanceof BranchImmLLVM)) {
          elseNode.addLLVM(new BranchImmLLVM(ifEndNode.name + ifEndNode.blockNum));
       }

       if ( thenEndNode.getLLVM().size() == 0 || !(thenEndNode.getLLVM().get(thenEndNode.getLLVM().size()-1) instanceof BranchImmLLVM)) {
          thenEndNode.addLLVM(new BranchImmLLVM(ifEndNode.name + ifEndNode.blockNum));
       }

       if ( elseEndNode.getLLVM().size() == 0 || !(elseEndNode.getLLVM().get(elseEndNode.getLLVM().size()-1) instanceof BranchImmLLVM)) {
          elseEndNode.addLLVM(new BranchImmLLVM(ifEndNode.name + ifEndNode.blockNum));
       }
       
       
=======
       String op = ((BinaryExpression) guard).getOp();
       startNode.addLLVM(new BranchLLVM( op , thenNode.name + thenNode.count, elseNode.name + elseNode.count));
       thenNode.addLLVM(new BranchImmLLVM(ifEndNode.name + ifEndNode.count));
       elseNode.addLLVM(new BranchImmLLVM(ifEndNode.name + ifEndNode.count));
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

       return ifEndNode;
   }

   public String typeToLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return "conditionalType";
   }

   public List<LLVM> toLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return new ArrayList<LLVM>();     
   }
}

