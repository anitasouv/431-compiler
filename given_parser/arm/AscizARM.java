package arm;

import java.util.Set;
import java.util.HashSet;
import java.util.Map;


public class AscizARM implements ARM {
     public String body;

     public AscizARM(String body) {
         this.body = body;
     }

     public void printOut(Map<String, Integer> map) {
        if (body.charAt(0) == 'c') {
            body = body.substring(1);
        }
         System.out.println("\t.asciz  " + body);
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}


