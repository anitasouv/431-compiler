package llvm;

import java.util.List;
import java.util.ArrayList;
import arm.*;

public class DefineFuncLLVM implements LLVM {
    
    public String name;
    public String retType;
    public List<String> argTypes;
    public List<String> argNames;
    public List<ARM> arms;

    public DefineFuncLLVM (String name, String retType, List<String> argTypes, List<String> argNames) {
         this.name = name;
         this.retType = retType;
         this.argTypes = argTypes;
         this.argNames = argNames;
         this.arms = new ArrayList<ARM>();

         arms.add(new AlignARM(2));
         arms.add(new GlobalLabelARM(name));
         arms.add(new LabelARM(name));


         List<String> push = new ArrayList<String>();
         push.add("fp");
         push.add("lr");

         arms.add(new PushPopARM("PUSH", push));
<<<<<<< HEAD


         arms.add(new BinaryARM("ADD", "fp", "sp", "#" + 4));

         List<String> pushReg = new ArrayList<String>();
         pushReg.add("r4");
         pushReg.add("r5");
         pushReg.add("r6");
         pushReg.add("r7");
         pushReg.add("r8");
         arms.add(new PushPopARM("PUSH", pushReg));
         

=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
    }

    public void printOut() {
         System.out.print("define " + retType + " @" + name + "("); 

         for (int i = 0; i < argTypes.size(); i++) {
             System.out.print(argTypes.get(i) + " %" + "_P_" + argNames.get(i));
             if (i != argTypes.size() -1) {
                 System.out.print(", ");
             }
         }

         System.out.print(")\n");

    }
    public void printOutARM() {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut();
         }
    }

    public String getResultReg() { return "";}
    public String getResultType() {return retType;}

    public void addARM( ARM arm ) {
         this.arms.add(arm);
    }
    public void addARMList(List<ARM> arms ) {
         this.arms.addAll(arms);
    }

<<<<<<< HEAD
    public List<ARM> getARMS() {
	return arms;
    }
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}