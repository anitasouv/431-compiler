package arm;
import java.util.Set;
import java.util.HashSet;

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
         System.out.println( "\t" + b + "\t." + label);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}
