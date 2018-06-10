package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import arm.*;

public class ComparisonLLVM implements LLVM {
    
    public String result;
    public String cond;
    public String type;
    public String op1;
    public String op2;
    public List<ARM> arms;

    public ComparisonLLVM (String result, String cond, String type, String op1, String op2) {
         this.result = result;
         this.cond = cond;
         this.type = type;
         this.op1 = op1;
         this.op2 = op2;
         this.arms = new ArrayList<ARM>();

         arms.add(new MovesARM("MOV", result, "#0"));
         arms.add(new ComparisonARM(op1, op2));

         if (cond.toLowerCase().equals("eq")) {
              arms.add(new MovesARM("MOVEQ", result, "#1"));
         } else if (cond.toLowerCase().equals("ne")) {
              arms.add(new MovesARM("MOVNE", result, "#1"));
         } else if (cond.toLowerCase().equals("sge")) {
              arms.add(new MovesARM("MOVGE", result, "#1"));
         } else if (cond.toLowerCase().equals("slt")) {
              arms.add(new MovesARM("MOVLT", result, "#1"));
         } else if (cond.toLowerCase().equals("sgt")) { 
              arms.add(new MovesARM("MOVGT", result, "#1"));
         } else if (cond.toLowerCase().equals("sle")) {
              arms.add(new MovesARM("MOVLE", result, "#1"));
         }
    }

    public void printOut() {
        // String temp = result + "t";
         System.out.println("\t" + result + " = icmp " + cond.toLowerCase() + " " + type + " " + op1 + ", " + op2 );

      //   System.out.println("\t" + result + " = bitcast i1 " + temp + " to i32");
    }
    public void printOutARM(Map<String, Integer> map) {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut(map);
         }
    }

    public String getResultReg() { return result;}
    public String getResultType() {return "i1";}

    public void addARM( ARM arm ) {
         this.arms.add(arm);
    }
    public void addARMList(List<ARM> arms ) {
         this.arms.addAll(arms);
    }

    public List<ARM> getARMS() {
	return arms;
    }
}
