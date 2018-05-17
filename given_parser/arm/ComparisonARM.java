package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======

>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class ComparisonARM implements ARM {
     public String reg;
     public String operand2;

     public ComparisonARM(String reg, String operand2) {
          this.reg = reg;
          this.operand2 = operand2;
     }

     public void printOut() {
         System.out.println( "\tcmp\t" + reg + "," + operand2);
     }
<<<<<<< HEAD
     
     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
	sources.add(reg);
	if(operand2.charAt(0) == '%') {
	   sources.add(operand2);
	}
	return sources;
     }
     
     public Set<String> getTargets() {
        return new HashSet<String>();
     }
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}

