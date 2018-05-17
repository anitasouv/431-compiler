package arm;
import java.util.Set;
import java.util.HashSet;

public class AlignARM implements ARM {
     public int size;

     public AlignARM(int size) {
         this.size = size;
     }

     public void printOut() {
         System.out.println("\t.align  " + size);
     }

     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
}

