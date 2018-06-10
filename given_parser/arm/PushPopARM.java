package arm;

import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class PushPopARM implements ARM {
     public Operation op;
     public List<String> listRegs;

     public PushPopARM(String op, List<String> list) {
         this.op = Operation.valueOf(op);
         this.listRegs = list;
     }

     public enum Operation {
         PUSH, POP;

         @Override
            public String toString() {
                return name().toLowerCase();
        }
     }

     public void printOut(Map<String, Integer> map) {
         System.out.print( "\t" + op + "\t{");
         for (int i = 0; i < listRegs.size(); i++) {
             System.out.print(listRegs.get(i));
             if (i != listRegs.size() - 1) {
                 System.out.print(",");
             }
         } 
         System.out.println("}");
     }
     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
	if(op == Operation.PUSH) {
		for(int i = 0; i < listRegs.size(); i++) {
			sources.add(listRegs.get(i));
		}
	}
	return sources;
     }
     
     public Set<String> getTargets() {
        HashSet<String> targets = new HashSet<String>();
	if(op == Operation.POP) {
		for(int i = 0; i < listRegs.size(); i++) {
			targets.add(listRegs.get(i));
		}
	}
        return targets;
     }

}

