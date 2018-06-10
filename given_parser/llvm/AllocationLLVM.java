package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import arm.*;

public class AllocationLLVM implements LLVM {
    
    public String result;
    public String type;
    public List<ARM> arms;

    public AllocationLLVM (String result, String type) {
          this.result = result;
          this.type = type;
          this.arms = new ArrayList<ARM>();
    }

    public void printOut() {
         System.out.println("\t" + result + " = alloca " + type);
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
	
    // don't have to translate to arm woohoo
    public List<ARM> getARMS() {
	return arms;
    }
}

