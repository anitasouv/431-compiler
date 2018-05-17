package ast;

import java.util.List;
import llvm.*;
import cfg.*;
import java.util.ArrayList;

public class LvalueId
   implements Lvalue
{
   private final int lineNum;
   private final String id;

   public LvalueId(int lineNum, String id)
   {
      this.lineNum = lineNum;
      this.id = id;
   }

   public Type getType( List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc){
         for (int i = 0; i < curFunc.getParams().size(); i++) {
            if (curFunc.getParams().get(i).getName().equals(this.id)) {
                return curFunc.getParams().get(i).getType();
            }
         }
      	 for (int i = 0; i < curFunc.getDecls().size(); i++ ) {
            if (curFunc.getDecls().get(i).getName().equals(this.id)) {
               return curFunc.getDecls().get(i).getType();
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
	 System.out.println("Cann find lvalueId");
         return new NullType();
   }
   public List<LLVM> toLLVM(List<TypeDeclaration> types, List<Declaration> decls, List<Function> func, Function curFunc, CFGNode startNode, CFGNode exitNode) {
      String type = this.getType(types,decls, func, curFunc).toLLVMType();
       if (type.contains("%struct")) {
	type = type + "*";
	}
	String temp = "%" + id;
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

	//if (temp.contains("@")) {
	//	type = type + "*";
	//}
       LLVM inst = new NOPLLVM( temp, type);

       List<LLVM> list = new ArrayList<LLVM>();
       list.add(inst);

       return list;
   }

   
}
