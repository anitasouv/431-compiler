package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import arm.*;

public class BranchImmLLVM implements LLVM {
    
    public String label;
    public List<ARM> arms;

    public BranchImmLLVM (String label) {
         this.label = label;
         this.arms = new ArrayList<ARM>();
         arms.add(new BranchARM("B", label));
    }
    
    public void printOut() {
         System.out.println("\tbr label %" + label);
    }
    public void printOutARM(Map<String, Integer> map) {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut(map);
         }
    }

    public String getResultReg() { return "";}
    public String getResultType() {return "";}

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

