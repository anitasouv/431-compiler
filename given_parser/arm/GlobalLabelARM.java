package arm;
import java.util.Set;
import java.util.HashSet;

public class GlobalLabelARM implements ARM {
     public String name;

     public GlobalLabelARM(String name) {
         this.name = name;
     }

     public void printOut() {
         System.out.println("\t.global " + name);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

