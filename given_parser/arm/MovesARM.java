package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

import java.util.Arrays;

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
         MOV, MOVW, MOVT, MOVEQ, MOVLT, MOVNE, MOVGE, MOVLE, MOVGT;

         @Override
    		public String toString() {
        		return name().toLowerCase();
    		}
     }

     public void printOut(Map<String, Integer> map) {
		String temp;
		String temp1;

		boolean after = false;
		if (map.get(reg) != null ) {
			int t = map.get(reg);
			if (t > 4) {
				after = true;
				temp = "r9";
			} else {
				temp = "r" + (t+4);
			}
		} else {
			temp = reg;
		}

		if (map.get(operand2) != null ) {
			int t = map.get(operand2);
			if (t > 4) {  
				System.out.println( "\tsub\tr10, fp, #" + (map.get(operand2)-4) * 4 ) ;
				System.out.println( "\tldr\tr10, [r10]" );
				 
				temp1 = "r10";
			} else {
				temp1 = "r" + (t+4);
			}
		} else {
			temp1 = operand2;
		}

		boolean isNumber = true;
		for (int i = 0; i < temp1.length(); i++) {
			if (!Character.isDigit(temp1.charAt(i))) {
				isNumber = false;
			}
		}
		if (isNumber) {
			temp1 = "#" + temp1;
		}

		if (temp1.equals("null")) {
			temp1 = "#0";
		}
	if (after && !isNumber && !temp1.contains("#0")) {
		System.out.println( "\tsub\tr9, fp, #" + (map.get(reg)-4) * 4 ) ;
	 	System.out.println( "\tstr\t" + temp1 + ", [r9]" );
	} else {
        	System.out.println( "\t" + m + "\t" + temp + "," + temp1);
	}
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

