package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======

>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class MovesARM implements ARM {
     public String reg;
     public String operand2;
     public Moves m;

     public MovesARM(String moves, String reg, String operand2) {
         this.reg = reg;
         this.operand2 = operand2;
         this.m = Moves.valueOf(moves);
     }

     public enum Moves {
<<<<<<< HEAD
         MOV, MOVW, MOVT, MOVEQ, MOVLT, MOVNE, MOVGE, MOVLE, MOVGT
=======
         MOV, MOVW, MOVT, MOVEQ, MOVLT, MOVNE, MOVGE
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
     }

     public void printOut() {
         System.out.println( "\t" + m + "\t" + reg + "," + operand2);
     }
<<<<<<< HEAD
     
     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
        if(operand2.charAt(0) == '%') {
	   sources.add(operand2);
	}
	return sources;
     }
     
     public Set<String> getTargets() {
        HashSet<String> targets = new HashSet<String>();
	targets.add(reg);
        return targets;
     }
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}

