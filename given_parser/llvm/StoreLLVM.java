package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
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
	 
	// if (!value.contains("@_scanned_")) {
         	//arms.add(new LoadStoreARM("STR", pointer, value));
         //	arms.add(new MovesARM("MOV", pointer, value));
	 //}
         if (pointer.contains("@_scanned_")) {
           arms.add(new LoadStoreARM("STR", value, pointer));
         } else {
           //arms.add(new LoadStoreARM("LDR", pointer, value));
           //arms.add(new LoadStoreARM("STR", pointer, value));
            arms.add(new MovesARM("MOV", pointer, value));
         }
         	//arms.add(new MovesARM("MOV", pointer, value));

         //arms.add(new LoadStoreARM("STR", value, pointer ));
    }

    public void printOut() {
	if (value.equals("null")) {
		this.type1 = type2;
	}
         System.out.println("\tstore " + type1 + " " + value + ", " + type2 + "* " + pointer);
    }
    public void printOutARM(Map<String, Integer> map) {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut(map);
         }
    }

    public String getResultReg() { return pointer; }
    public String getResultType() { return type1; }

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

