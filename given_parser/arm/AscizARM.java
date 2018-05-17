package arm;

import java.util.Set;
import java.util.HashSet;


public class AscizARM implements ARM {
     public String body;

     public AscizARM(String body) {
         this.body = body;
     }

     public void printOut() {
         System.out.println("\t.asciz  " + body);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}


