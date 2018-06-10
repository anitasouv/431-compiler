package arm;

import java.util.Set;
import java.util.HashSet;
import java.util.Map;


public class TextARM implements ARM {

     public TextARM() {
     }

     public void printOut(Map<String, Integer> map) {
         System.out.println("\t.text");
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

