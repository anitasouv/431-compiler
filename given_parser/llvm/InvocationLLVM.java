package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import arm.*;


public class InvocationLLVM implements LLVM {
    
    public String result;
    public String type;
    public String fnptrval;
    public List<String> args;
    public List<String> argTypes;
    public List<ARM> arms;

    public InvocationLLVM (String result, String type, String fnptrval, List<String> args, List<String> argTypes) {
         this.result = result;
         this.type = type;
         this.fnptrval = fnptrval;
         this.args = args;
         this.arms = new ArrayList<ARM>();
         this.argTypes = argTypes;
	/* if (args.get(1).contains("getelementptr")) {
              arms.add(new MovesARM("MOVW", "%r" + 1, "#:lower16:.read_scratch"));
              arms.add(new MovesARM("MOVT", "%r" + 1, "#:upper16:.read_scratch"));
              arms.add(new MovesARM("MOVW", "%r" + 0, "#:lower16:.READ_FMT"));
              arms.add(new MovesARM("MOVT", "%r" + 0, "#:upper16:.READ_FMT"));	
          
 	      arms.add(new BranchARM("BL", fnptrval));

              arms.add(new MovesARM("MOVW", result, "#:lower16:.read_scratch"));
              arms.add(new MovesARM("MOVT", result, "#:upper16:.read_scratch"));
	 }
*/
	 if (args.size() == 2 && args.get(0).contains("getelementptr inbounds") && args.get(1).contains("@_scanned_")) {

		arms.add(new MoveSegmentsARM("%r1", "_scanned_"));
		arms.add(new MoveSegmentsARM("%r0", ".read"));
        	arms.add(new BranchARM("BL", fnptrval));
		//arms.add(new MoveSegmentsARM(result, "_scanned_"));
         	if (!result.equals("")) {
			arms.add(new MoveSegmentsARM(result, "_scanned_"));
             		//arms.add(new MovesARM("MOV", result, "%r0"));
         	}

	 } else if (args.size() == 2 && args.get(0).contains("getelementptr inbounds") && args.get(0).contains("@.println")) {

		arms.add(new MovesARM("MOV", "%r1", args.get(1)));
		arms.add(new MoveSegmentsARM("%r0", ".println"));
        	arms.add(new BranchARM("BL", fnptrval));
		
	 } else if (args.size() == 2 && args.get(0).contains("getelementptr inbounds") && args.get(0).contains("@.print")) {

        arms.add(new MovesARM("MOV", "%r1", args.get(1)));
        arms.add(new MoveSegmentsARM("%r0", ".print"));
            arms.add(new BranchARM("BL", fnptrval));
        
     } else {
         	for (int i = 0; i < args.size(); i++) {
              		arms.add(new MovesARM("MOV", "%r" + i, args.get(i)));
         	}
         	arms.add(new BranchARM("BL", fnptrval));
         	if (!result.equals("") || !result.equals("@_scanned_")) {
             		arms.add(new MovesARM("MOV", result, "%r0"));
         	}
	 }

    }

    public void printOut() {
	if (result.equals("") || result.equals("@_scanned_")) {
         System.out.print("\tcall " + type + " @" + fnptrval + "(");

	} else {
         System.out.print("\t" + result + " = call " + type + " @" + fnptrval + "(");

	}



         for (int i = 0; i < args.size(); i++) {
             System.out.print(argTypes.get(i) + " "+ args.get(i));
             if (i != args.size() -1) {
                 System.out.print(", ");
             }
         }

         System.out.print(")\n");
    }
    public void printOutARM(Map<String, Integer> map) {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut(map);
         }
    }

    public String getResultReg() { return result;}
    public String getResultType() {return type;}

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

