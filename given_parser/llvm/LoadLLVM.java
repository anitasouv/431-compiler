package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import arm.*;

public class LoadLLVM implements LLVM {
    
    public String result;
    public String type;
    public String pointer;
    public List<ARM> arms;

    public LoadLLVM (String result, String type, String pointer) {
         this.result = result;
         this.type = type;
         this.pointer = pointer;
         this.arms = new ArrayList<ARM>();
        
	if (type.contains("*")) {
		arms.add(new LoadStoreARM("LDR", result, pointer, true));
	} else {
         	arms.add(new LoadStoreARM("LDR", result, pointer));
	}
        /* if (pointer.contains("_scanned_")) {
           arms.add(new LoadStoreARM("LDR", result, pointer));
         } else {
           //arms.add(new LoadStoreARM("LDR", result, pointer));
            arms.add(new MovesARM("MOV", result, pointer));
         }*/

    }
    public LoadLLVM (String result, String type, String pointer, boolean flag) {
         this.result = result;
         this.type = type;
         this.pointer = pointer;
         this.arms = new ArrayList<ARM>();
         //arms.add(new LoadStoreARM("LDR", result, pointer));
	if (type.contains("*")) {
		arms.add(new LoadStoreARM("LDR", result, pointer, true));
	} else {
         	arms.add(new LoadStoreARM("LDR", result, pointer));
	}
        /* if (pointer.contains("_scanned_")) {
           arms.add(new LoadStoreARM("LDR", result, pointer));
         } else if (flag) {
           arms.add(new LoadStoreARM("LDR", result, pointer));
           //arms.add(new LoadStoreARM("LDR", pointer, result));
		 
	} else {
           //arms.add(new LoadStoreARM("LDR", result, pointer));
            arms.add(new MovesARM("MOV", result, pointer));
         }*/

    }

    public void printOut() {
         System.out.println("\t" + result + " = load " + type + "* " + pointer );
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

