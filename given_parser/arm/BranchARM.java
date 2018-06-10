package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class BranchARM implements ARM {
     public String label;
     public Branch b;

     public BranchARM(String branch, String label) {
         this.b = Branch.valueOf(branch);
         this.label = label;
     }

     enum Branch {
         BEQ, BNE, BGE, BLT, B, BL;
         @Override
            public String toString() {
                return name().toLowerCase();
            }
     }

     public void printOut(Map<String, Integer> map) {
	 String optional = "";
	 if (b != Branch.BL ) {
		optional = ".";
	 }

         System.out.println( "\t" + b + "\t" + optional + label);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}
