package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class ComparisonARM implements ARM {
     public String reg;
     public String operand2;

     public ComparisonARM(String reg, String operand2) {
          this.reg = reg;
          this.operand2 = operand2;
     }

     public void printOut(Map<String, Integer> map) {
	 String temp1;
	 String temp2;

	 if (map.get(reg) != null ) {
		int t = map.get(reg);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr10, fp, #" + (map.get(reg)-4) * 4 ) ;
         		System.out.println( "\tldr\tr10, [r10]" );
			// print the math
			 
			temp1 = "r10";
		}
		// else if (t < 0) {
		// 	// is a id
  //        		System.out.println( "\tadd\tr9, fp, #" + ((-1 *map.get(reg)) + 1) * 4 ) ;
  //        		System.out.println( "\tldr\tr10, [r9]" );
			
		// 	temp1 = "r10";
		// } 
		else {
			temp1 = "r" + (t+4);
		}
	 } else {
 		boolean isNumber = true;
 		for (int i = 0; i < reg.length(); i++) {
			if (!Character.isDigit(reg.charAt(i))) {
				isNumber = false;
			}
	 	}
		if (isNumber) {
         		System.out.println( "\tmov\tr10, #"+ reg  );
			temp1 = "r10";
		} else {
			temp1 = reg;
		}
	 }

	 if (map.get(operand2) != null ) {
		int t = map.get(operand2);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr9, fp, #" + (map.get(operand2)-4) * 4 ) ;
         		System.out.println( "\tldr\tr9, [r9]" );
			// print the math
			 
			temp2 = "r9";
		} else {
			temp2 = "r" + (t+4);
		}
	 } else {
		temp2 = operand2;
	 }

 	boolean isNumber = true;
 	for (int i = 0; i < temp2.length(); i++) {
		if (!Character.isDigit(temp2.charAt(i))) {
			isNumber = false;
		}
	 }
	 if (isNumber) {
		int t = Integer.parseInt(temp2);
	 	if (t > 128 || t < -127) {
	 		System.out.println( "\tmovw\t" + "r9" + ", #:lower16:" + temp2);
         		System.out.println( "\tmovt\t" + "r9" + ", #:upper16:" + temp2);
			temp2 = "r9";
	 	} else {
	 		temp2 = "#" + temp2;
	 	}
	 }

	 if (temp2.equals("null")) {
	 	temp2 = "#0";
	 }
         System.out.println( "\tcmp\t" + temp1 + "," + temp2);
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
        return new HashSet<String>();
     }
}

