package llvm;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import arm.*;

public class GetElementPtrLLVM implements LLVM {
    
    public String result;
    public String type;
    public String ptrval;
    public String index;
    public List<ARM> arms;
    public String realResultType;

    public GetElementPtrLLVM (String result, String type, String ptrval, String index, String realResultType) {
         this.result = result;
         this.type = type;
         this.ptrval = ptrval;
         this.index = index;
         this.realResultType = realResultType;
         this.arms = new ArrayList<ARM> ();

         int i = Integer.parseInt(index);
         
	 //if (i != 0) {
             arms.add(new BinaryARM("ADD", result, ptrval, "#" + i*4, true));
	 //}
         //arms.add(new LoadStoreARM("STR", "a0", "[" + result + "]"));


    }

    public void printOut() {
         System.out.println("\t" + result + " = getelementptr " + type + " " + ptrval + ", i1 0, i32 " + index );
    }

    public void printOutARM(Map<String, Integer> map) {
         for (int i = 0; i < arms.size(); i++) {
              arms.get(i).printOut(map);
         }
    }

    public String getResultReg() { return result;}
    public String getResultType() {return realResultType;}

    public void addARM( ARM arm ) {
         this.arms.add(arm);
    }
    public void addARMList(List<ARM> arms ) {
         this.arms.addAll(arms);
    }

    public List<ARM> getARMS() {
	return arms;
    }
}

