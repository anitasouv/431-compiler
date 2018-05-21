package ast;

import java.util.List;
import java.util.ArrayList;
import cfg.*;
import llvm.*;


public class WhileStatement
   extends AbstractStatement
{
   private final Expression guard;
   private final Statement body;

   public WhileStatement(int lineNum, Expression guard, Statement body)
   {
      super(lineNum);
      this.guard = guard;
      this.body = body;
   }

   public void typeOpCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      guard.typeOpCheck(types, decls, func, curFunc);
      body.typeOpCheck(types, decls, func, curFunc);
   }

   public void typeCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      //System.out.println("TYPECHECK: While");
   }

   public boolean checkReturn() {
        return false;
   }

   public CFGNode cfg(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {


      CFGNode guardNode = new CFGNode( startNode.name, exitNode.labelCountAndIncrement(), 0, 0, 0);
      guardNode.addGuard(guard);
      guardNode.addLLVMList(guard.toLLVM(types, decls, func, curFunc, startNode, exitNode));  
      String compareReg = guardNode.getLLVM().get(guardNode.getLLVM().size() - 1).getResultReg();
 

      // adding break statement to the next block
      startNode.addLLVM(new BranchImmLLVM(guardNode.name + guardNode.blockNum) );

    
      guardNode.addParent(startNode);
      startNode.addChild(guardNode); 

      // two more nodes end node and the body
      CFGNode bodyNode = new CFGNode( startNode.name, exitNode.labelCountAndIncrement(), 0, 0, 0);
      guardNode.addChild(bodyNode);
      bodyNode.addParent(guardNode);

      CFGNode endNode = new CFGNode(startNode.name, exitNode.labelCountAndIncrement(), 0, 0, 0);
      endNode.addParent(guardNode);
      guardNode.addChild(endNode);   

      // String op = ((BinaryExpression) guard).getOp();
      guardNode.addLLVM(new BranchLLVM( compareReg , bodyNode.name + bodyNode.blockNum, endNode.name + endNode.blockNum));


      
      bodyNode = body.cfg(types, decls, func, curFunc, bodyNode, exitNode);
      bodyNode.addChild(guardNode);
      guardNode.addParent(bodyNode);

      bodyNode.addLLVM(new BranchImmLLVM(guardNode.name + guardNode.blockNum));

      return endNode;
  }


   public String typeToLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return "whileType";
   }


   public List<LLVM> toLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return new ArrayList<LLVM>();     
   }

}
