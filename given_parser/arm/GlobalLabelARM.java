package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class GlobalLabelARM implements ARM {
     public String name;

     public GlobalLabelARM(String name) {
         this.name = name;
     }

     public void printOut() {
         System.out.println("\t.global " + name);
     }
<<<<<<< HEAD
     
     public Set<String> getSources() {
	return new HashSet<String>();
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
     }
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}

