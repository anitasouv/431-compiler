package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class GlobalLabelARM implements ARM {
     public String name;

     public GlobalLabelARM(String name) {
         this.name = name;
     }

     public void printOut(Map<String, Integer> map) {
         System.out.println("\t.global " + name);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

