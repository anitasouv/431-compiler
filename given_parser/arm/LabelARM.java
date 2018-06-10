package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class LabelARM implements ARM {
     public String label;

     public LabelARM(String label) {
         this.label = label;
     }

     public void printOut(Map<String, Integer> map) {
         System.out.println( label + ":");
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

