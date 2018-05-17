package ast;

import java.lang.Exception;
import java.util.List;
import java.util.ArrayList;
import cfg.*;
import llvm.*;

public class IdentifierExpression
   extends AbstractExpression
{
   private final String id;

   public IdentifierExpression(int lineNum, String id)
   {
      super(lineNum);
      this.id = id;
   }
   public void typeOpCheck(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      
   }

   public Type getType(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
      try {
      	 for (int i = 0; i < curFunc.getDecls().size(); i++ ) {
            if (curFunc.getDecls().get(i).getName().equals(this.id)) {
               return curFunc.getDecls().get(i).getType();
	    } 
         }
         for (int i = 0; i < curFunc.getParams().size(); i++) {
            if (curFunc.getParams().get(i).getName().equals(this.id)) {
                return curFunc.getParams().get(i).getType();
            }
         }
      	 for (int i = 0; i < decls.size(); i++ ) {
            if (decls.get(i).getName().equals(this.id)) {
               return decls.get(i).getType();
	    } 
         }
      	 for (int i = 0; i < types.size(); i++ ) {
            if (types.get(i).getName().equals(this.id)) {
              return types.get(i).getType();
	    } 
         }

         throw new Exception("Identifier: " + this.id + " not found");
      } catch (Exception e) {
      	   System.out.println("Caught exception\n" + e);
      }
      return new NullType();
   }

   public void cfg(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
   	System.out.println("identifier expression: " + id);
   }
   
   public String typeToLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc) {
         for (int i = 0; i < curFunc.getParams().size(); i++) {
            if (curFunc.getParams().get(i).getName().equals(this.id)) {
                return curFunc.getParams().get(i).getType().toLLVMType();
            }
         }
      	 for (int i = 0; i < curFunc.getDecls().size(); i++ ) {
            if (curFunc.getDecls().get(i).getName().equals(this.id)) {
               return curFunc.getDecls().get(i).getType().toLLVMType();
	    } 
         }

      	 for (int i = 0; i < decls.size(); i++ ) {
            if (decls.get(i).getName().equals(this.id)) {
               return decls.get(i).getType().toLLVMType();
	    } 
         }
       return "i32wut";
   }

   public List<LLVM> toLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {

       String type = this.typeToLLVM(types, decls, func, curFunc);
	String temp = "%" + id;
       if (type.contains("%struct")) {
	 type = type + "*";
	}

       for(int i = 0; i < decls.size(); i++) {
	  if(decls.get(i).getName().equals(id)) {
	  	temp = "@" + id;
	  }
       }
         for (int i = 0; i < curFunc.getParams().size(); i++) {
            if (curFunc.getParams().get(i).getName().equals(this.id)) {
         	temp = "%" + id;
            }
         }
      	 for (int i = 0; i < curFunc.getDecls().size(); i++ ) {
            if (curFunc.getDecls().get(i).getName().equals(this.id)) {
         	temp = "%" + id;
	    } 
         }

       LLVM inst = new LoadLLVM("%u" + exitNode.regNum, type, temp);
       exitNode.incrementReg();       


       //LLVM inst = new NOPLLVM( "%" + id, type);
       List<LLVM> list = new ArrayList<LLVM>();
       list.add(inst);
       return list;    
   }
}
