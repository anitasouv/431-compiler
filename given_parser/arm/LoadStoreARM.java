package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

import java.util.HashMap;

public class LoadStoreARM implements ARM {
     public Operation op;
     public String reg;
     public String addr;
     public boolean pointer;

     public LoadStoreARM(String op, String reg, String addr) {
         this.op = Operation.valueOf(op);
         this.reg = reg;
         this.addr = addr;
	 this.pointer = false;
     }

     public LoadStoreARM(String op, String reg, String addr, boolean flag) {
         this.op = Operation.valueOf(op);
         this.reg = reg;
         this.addr = addr;
	 this.pointer = flag;
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
         boolean after = false;
	//map = new HashMap<String, Integer>();
	

	 if (map.get(reg) != null && !reg.contains("%_")) {
		int t = map.get(reg);
		if (t > 4) {  
			// spill space
			if (op == Operation.STR) {
				System.out.println( "\tsub\tr10, fp, #" + (map.get(reg)-4) * 4 ) ;
         			System.out.println( "\tldr\tr10, [r10]" );
			} else {
				after = true;
			}
			temp = "r10";
		} else {
			temp = "r" + (t+4);
		}
	 } else {
		temp = reg;
	 }
	 if (map.get(addr) != null && !reg.contains("%_")) {
		int t = map.get(addr);
		if (t > 4) {  
			// spill space
         		System.out.println( "\tsub\tr9, fp, #" + (map.get(addr)-4) * 4 ) ;	 
			temp2 = "r9";
		}  else {
			temp2 = "r" + (t+4);
		}
	 } else {
		temp2 = addr;
	 }

	 if (temp2.equals("@_scanned_")) {
		temp2 = "r9";
         	System.out.println( "\tmovw\t" + temp2 + ", #:lower16:" + "_scanned_");
         	System.out.println( "\tmovt\t" + temp2 + ", #:upper16:" + "_scanned_");
	 }

	 boolean isNumber = true;
	 for (int i = 0; i < reg.length(); i++) {
		if (!Character.isDigit(reg.charAt(i))) {
			isNumber = false;
		}
	 }
	 if (isNumber) {
        	System.out.println( "\t" + "mov" + "\t" + "r10" + ", #" + reg);
		temp = "r10";
	 }	
	 // if addr contains "%u", check to make sure that there is some number afterwards => register
	 if (reg.contains("%_") || addr.contains("%_")) {

	// } else if (!addr.contains("%u") && !addr.equals("@_scanned_") && !reg.contains("%_")/* is identifier, then need to do a move */) {
	 } else if ( !addr.equals("@_scanned_") && !reg.contains("%_")/* is identifier, then need to do a move */) {
         	System.out.println( "\t" + op + "\t" + temp + ", [" + temp2 + "]");
	 } else {
         	System.out.println( "\t" + op + "\t" + temp + ", [" + temp2 + "]");
	 }
	
	if (after) {
		System.out.println( "\tsub\tr9, fp, #" + (map.get(reg)-4) * 4 ) ;
		System.out.println( "\tstr\tr10, [r9]" ) ;
	}

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
	 boolean isNumber = true;
	 for (int i = 0; i < reg.length(); i++) {
		if (!Character.isDigit(reg.charAt(i))) {
			isNumber = false;
		}
	 }
		
	if (!isNumber) {
			targets.add(reg);

		}
	}

	return targets;
     }
}

