package ast;

import java.util.List;
import java.util.ArrayList;
import cfg.*;
import llvm.*;

public class NullExpression
   extends AbstractExpression
{
   public NullExpression(int lineNum)
   {
      super(lineNum);
   }

   public Type getType(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc){
       return new NullType();
   }

   public void typeOpCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
   }

   public void cfg(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
   	System.out.println("null expression");
   }

   public String typeToLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
       return "i32NULL";
   }

   public List<LLVM> toLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {
       LLVM inst = new NOPLLVM("null", "i32*");
       
       List<LLVM> list = new ArrayList<LLVM>();
       list.add(inst);
       return list;    
   }
}
