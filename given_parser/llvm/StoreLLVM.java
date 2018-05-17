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

<<<<<<< HEAD
    public StoreLLVM(String type1, String value, String type2, String pointer) {
=======
    public StoreLLVM(String value, String type1, String pointer, String type2) {
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
         this.value = value;
         this.type1 = type1;
         this.pointer = pointer;
         this.type2 = type2;
         this.arms = new ArrayList<ARM>();
<<<<<<< HEAD
	 arms.add(new LoadStoreARM("STR", value, pointer ));
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
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

