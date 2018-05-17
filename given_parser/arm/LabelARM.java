package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class LabelARM implements ARM {
     public String label;

     public LabelARM(String label) {
         this.label = label;
     }

     public void printOut() {
<<<<<<< HEAD
         System.out.println( label + ":");
     }
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
=======
         System.out.println("." + label + ":");
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
     }
}

