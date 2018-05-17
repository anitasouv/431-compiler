package arm;
import java.util.Set;
import java.util.HashSet;

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
         MOV, MOVW, MOVT, MOVEQ, MOVLT, MOVNE, MOVGE, MOVLE, MOVGT
     }

     public void printOut() {
         System.out.println( "\t" + m + "\t" + reg + "," + operand2);
     }
     
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
}

