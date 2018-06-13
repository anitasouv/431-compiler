package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Arrays;
import java.util.Map;

public class BinaryARM implements ARM {
     public Operation op;
     public String dest;
     public String reg;
     public String operand2;
     public boolean flag;

     public BinaryARM(String op, String dest, String reg, String operand2) {
          this.op = Operation.valueOf(op);
          this.dest = dest;
          this.reg = reg;
          this.operand2 = operand2;
          this.flag = false;
     }
     public BinaryARM(String op, String dest, String reg, String operand2, boolean flag) {
          this.op = Operation.valueOf(op);
          this.dest = dest;
          this.reg = reg;
          this.operand2 = operand2;
	  this.flag = flag;
     }

     public enum Operation {
         ADD, SUB, MUL, AND, ORR, EOR;
         @Override
    	public String toString() {
        	return name().toLowerCase();
    	}
     }

     public void printOut(Map<String, Integer> map) {
	 String temp;
	 String temp2;
	 String temp3;
	 boolean spillDest = false;
	 if (map.get(dest) != null ) {
		int t = map.get(dest);
		if (t > 4) {  
			// spill space
			spillDest = true; 
			temp = "r10";
		} else {
			temp = "r" + (t+4);
		}
	 } else {
		temp = dest;
	 }

	 if (map.get(reg) != null ) {
		int t = map.get(reg);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr9, fp, #" + (map.get(reg)-4) * 4 ) ;
         		if (flag) {
				System.out.println( "\tldr\tr9, [r9]" );
			}
			// print the math
			 
			temp2 = "r9";
		} else {
			temp2 = "r" + (t+4);
		}
	 } else {
	 	boolean isNumber = true;
	 	for (int i = 0; i < reg.length(); i++) {
			if (!Character.isDigit(reg.charAt(i))) {
				isNumber = false;
			}
	 	}
	 	if (isNumber) {
         		System.out.println( "\tmovw\t" + "r9" + ", #:lower16:" + reg);
         		System.out.println( "\tmovt\t" + "r9" + ", #:upper16:" + reg);
			temp2 = "r9";
	 	} else {
			temp2 = reg;
		}
	 }

	 if (map.get(operand2) != null ) {
		int t = map.get(operand2);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr10, fp, #" + (map.get(operand2)-4) * 4 ) ;
			if (flag) {
         		System.out.println( "\tldr\tr10, [r10]" );

			}
			// print the math
			 
			temp3 = "r10";
		} else {
			temp3 = "r" + (t+4);
		}
	 } else {
		temp3 = operand2;
	 }

	 boolean isNumber = true;
	 for (int i = 0; i < temp3.length(); i++) {
		if (!Character.isDigit(temp3.charAt(i))) {
			isNumber = false;
		}
	 }
	 if (isNumber) {
	 	// check the range of the number
	 	// mov upper and lower accrodingly 
	 	// move the number to r9 (scratch register)
	 	// sub it in to temp3
	 	// print out the move statements 
	 	// System.out.println( "\tmov\t" + temp + "," + temp1);
         	System.out.println( "\tmovw\t" + "r10" + ", #:lower16:" + temp3);
         	System.out.println( "\tmovt\t" + "r10" + ", #:upper16:" + temp3);

		temp3 = "r10";
	 }

         System.out.println( "\t" + op + "\t" + temp + "," + temp2 + "," + temp3);

	 	if (spillDest) {
			int t = map.get(dest);
			if (t > 4) {  
				// spill space
	         		System.out.println( "\tsub\tr9, fp, #" + (map.get(dest)-4) * 4 ) ;
	         		System.out.println( "\tstr\tr10, [r9]" );
			} 
	 	}
     }

     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
	sources.add(reg);
	if(operand2.charAt(0) == '%') {
	   sources.add(operand2);
	}

	return sources;
     }
     
     public Set<String> getTargets() {
	HashSet<String> destination = new HashSet<String>();
	destination.add(dest);
	return destination;
     }

}
