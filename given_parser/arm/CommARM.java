package arm;
import java.util.Set;
import java.util.HashSet;

public class CommARM implements ARM {
     public String name;

     public CommARM(String name ) {
         this.name = name;
     }

     public void printOut() {
         System.out.println("\t.comm  " + name + ",4,4");
     }

     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}


