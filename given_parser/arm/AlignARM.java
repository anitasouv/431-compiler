package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class AlignARM implements ARM {
     public int size;

     public AlignARM(int size) {
         this.size = size;
     }

     public void printOut() {
         System.out.println("\t.align  " + size);
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

