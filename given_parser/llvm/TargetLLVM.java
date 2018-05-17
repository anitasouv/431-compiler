package llvm;

import java.util.List;
import java.util.ArrayList;
import arm.*;

public class TargetLLVM implements LLVM {
    
    public List<ARM> arms;

    public TargetLLVM () {
          this.arms = new ArrayList<ARM>();
    }

    public void printOut() {
         System.out.println("target triple=\"i686\"");
    }

    public void printOutARM() {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut();
         }
    }

    public String getResultReg() { return "targetReg";}
    public String getResultType() {return "targetType";}

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
