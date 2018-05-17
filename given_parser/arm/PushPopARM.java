package arm;

import java.util.List;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

public class PushPopARM implements ARM {
     public Operation op;
     public List<String> listRegs;

     public PushPopARM(String op, List<String> list) {
         this.op = Operation.valueOf(op);
         this.listRegs = list;
     }

     public enum Operation {
         PUSH, POP
     }

     public void printOut() {
         System.out.print( "\t" + op + "\t{");
         for (int i = 0; i < listRegs.size(); i++) {
             System.out.print(listRegs.get(i));
             if (i != listRegs.size() - 1) {
                 System.out.print(",");
             }
         } 
         System.out.println("}");
     }
<<<<<<< HEAD
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

=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}

