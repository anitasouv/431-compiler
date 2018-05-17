package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======

>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class BranchARM implements ARM {
     public String label;
     public Branch b;

     public BranchARM(String branch, String label) {
         this.b = Branch.valueOf(branch);
         this.label = label;
     }

     enum Branch {
         BEQ, BNE, BGE, BLT, B, BL
     }

     public void printOut() {
<<<<<<< HEAD
         System.out.println( "\t" + b + "\t." + label);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
=======
         System.out.println( "\t" + b + "\t" + label);
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
     }
}
