package arm;
<<<<<<< HEAD
import java.util.Set;
import java.util.HashSet;
=======

>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b

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
         LDR, STR
     }

     public void printOut() {
<<<<<<< HEAD
         System.out.println( "\t" + op + "\t" + reg + ", [" + addr + "]");
     }
     
     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
	sources.add(reg);
        sources.add(addr);
	return sources;
     }
     
     public Set<String> getTargets() {
	return new HashSet<String>();
=======
         System.out.println( "\t" + op + "\t" + reg + "," + addr);
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
     }
}

