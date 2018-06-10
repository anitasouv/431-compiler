package arm;

import java.util.Set;
import java.util.HashSet;
import java.util.Map;


public class SectionARM implements ARM {

     public SectionARM() {
     }

     public void printOut(Map<String, Integer> map) {
         System.out.println("\t.section\t.rodata");
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

