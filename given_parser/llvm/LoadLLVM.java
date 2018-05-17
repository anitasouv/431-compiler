package llvm;

import java.util.List;
import java.util.ArrayList;
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
<<<<<<< HEAD

	 arms.add(new LoadStoreARM("LDR", pointer, result));
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
    }

    public void printOut() {
         System.out.println("\t" + result + " = load " + type + "* " + pointer );
    }
    public void printOutARM() {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut();
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

<<<<<<< HEAD
    public List<ARM> getARMS() {
	return arms;
    }
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}

