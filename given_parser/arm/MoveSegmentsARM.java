package arm;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;

public class MoveSegmentsARM implements ARM {
     public String reg;
     public String name;

     public MoveSegmentsARM(String reg, String name) {
         this.reg = reg;
         this.name = name;
     }


     public void printOut(Map<String, Integer> map) {
	 String temp;
	 // if (map.get(reg) != null ) {
		// temp = "r" + map.get(reg);
	 // } else {
		// temp = reg;
	 // }
	 if (map.get(reg) != null ) {
        int t = map.get(reg);
        if (t > 4) {  
            // spill space
                System.out.println( "\tsub\tr10, fp, #" + (map.get(reg)-4) * 4 ) ;
                System.out.println( "\tldr\tr10, [r10]" );
            // print the math
             
            temp = "r10";
        } 
        // else if (t < 0) {
        //     // is a id
        //         System.out.println( "\tadd\tr9, fp, #" + ((-1 *map.get(reg)) - 1) * 4 ) ;
        //         System.out.println( "\tldr\tr10, [r9]" );
            
        //     temp = "r10";
        // } 
        else {
            temp = "r" + (t+4);
        }
    } else {
        temp = reg;
    }

	//if (temp = reg)

         System.out.println( "\tmovw\t" + temp + ", #:lower16:" + name);
         System.out.println( "\tmovt\t" + temp + ", #:upper16:" + name);
     }
     
     public Set<String> getSources() {
        HashSet<String> sources = new HashSet<String>();
	return sources;
     }
     
     public Set<String> getTargets() {
        HashSet<String> targets = new HashSet<String>();
	if (reg.equals("")) {
		targets.add("@_scanned_");
	} else {
		targets.add(reg);

	}
        return targets;
     }
}


