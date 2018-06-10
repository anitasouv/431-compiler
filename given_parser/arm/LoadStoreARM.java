package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class LoadStoreARM implements ARM {
     public Operation op;
     public String reg;
     public String addr;

     public LoadStoreARM(String op, String reg, String addr) {
         this.op = Operation.valueOf(op);
         this.reg = reg;
         this.addr = addr;
     }

     public enum Operation {
         LDR, STR;
         @Override
    		public String toString() {
        		return name().toLowerCase();
    		}
     }

     public void printOut(Map<String, Integer> map) {
	 String temp;
	 String temp2;

	 if (map.get(reg) != null ) {
		int t = map.get(reg);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr9, fp, #" + (map.get(reg)-4) * 4 ) ;
         		System.out.println( "\tldr\tr9, [r9]" );
			// print the math
			 
			temp = "r9";
		} else {
			temp = "r" + (t+4);
		}
	 } else {
		temp = reg;
	 }
	 if (map.get(addr) != null ) {
		int t = map.get(addr);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr10, sp, #" + (map.get(addr)-4) * 4 ) ;
         		System.out.println( "\tldr\tr10, [r10]" );
			// print the math
			 
			temp2 = "r10";
		} 
	/*	if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr9, sp, #" + (map.get(addr)-5) * 4 ) ;
         		System.out.println( "\tldr\tr10, [r9]" );
			// print the math
			 
			temp2 = "r10";
		} */
	/*	else if (t < 0) {
			// is a id
         		System.out.println( "\tadd\tr9, fp, #" + ((-1 *map.get(addr)) + 1) * 4 ) ;
         		System.out.println( "\tldr\tr10, [r9]" );
			
			temp2 = "r10";
			}*/	 else {
			temp2 = "r" + (t+4);
		}
	 } else {
		temp2 = addr;
	 }
/*
	 if (map.get(addr) != null ) {
		temp2 = "r" + map.get(addr);
	 } else {
		temp2 = addr;
	 }
*/
         System.out.println( "\t" + op + "\t" + temp + ", [" + temp2 + "]");
     }
     
     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
	if (op == Operation.LDR) {
		sources.add(reg);
	} else {
		sources.add(addr);
	}
	return sources;
     }
     
     public Set<String> getTargets() {
	HashSet<String> targets = new HashSet<String>();
	if (op == Operation.LDR) {
		targets.add(addr);
	} else {
		targets.add(reg);
	}

	return targets;
     }
}

