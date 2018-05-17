package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Arrays;

public class BinaryARM implements ARM {
     public Operation op;
     public String dest;
     public String reg;
     public String operand2;

     public BinaryARM(String op, String dest, String reg, String operand2) {
          this.op = Operation.valueOf(op);
          this.dest = dest;
          this.reg = reg;
          this.operand2 = operand2;
     }

     public enum Operation {
         ADD, SUB, MUL, AND, ORR, EOR
     }

     public void printOut() {
         System.out.println( "\t" + op + "\t" + dest + "," + reg + "," + operand2);
     }

     public Set<String> getSources() {
 //System.out.println("in binary get source");
        HashSet<String> sources = new HashSet<String>();
	sources.add(reg);
	if(operand2.charAt(0) == '%') {
	   sources.add(operand2);
	}
//System.out.println("Gen in binary: " + Arrays.toString(sources.toArray()));
	return sources;
     }
     
     public Set<String> getTargets() {
	HashSet<String> destination = new HashSet<String>();
	destination.add(dest);
	return destination;
     }

}
