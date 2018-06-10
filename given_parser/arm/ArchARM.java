package arm;

import java.util.Set;
import java.util.HashSet;
import java.util.Map;


public class ArchARM implements ARM {

     public ArchARM() {
     }

     public void printOut(Map<String, Integer> map) {
         System.out.println("\t.arch armv7-a");
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}


