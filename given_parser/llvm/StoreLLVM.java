package llvm;

import java.util.List;
import java.util.ArrayList;
import arm.*;

public class StoreLLVM implements LLVM {
    
    public String value;
    public String type1;
    public String pointer;
    public String type2;
    public List<ARM> arms;

    public StoreLLVM(String type1, String value, String type2, String pointer) {
         this.value = value;
         this.type1 = type1;
         this.pointer = pointer;
         this.type2 = type2;
         this.arms = new ArrayList<ARM>();
	 arms.add(new LoadStoreARM("STR", value, pointer ));
    }

    public void printOut() {
	if (value.equals("null")) {
		this.type1 = type2;
	}
         System.out.println("\tstore " + type1 + " " + value + ", " + type2 + "* " + pointer);
    }
    public void printOutARM() {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut();
         }
    }

    public String getResultReg() { return pointer;}
    public String getResultType() {return type1;}

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

