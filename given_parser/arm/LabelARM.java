package arm;
import java.util.Set;
import java.util.HashSet;

public class LabelARM implements ARM {
     public String label;

     public LabelARM(String label) {
         this.label = label;
     }

     public void printOut() {
         System.out.println( label + ":");
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

