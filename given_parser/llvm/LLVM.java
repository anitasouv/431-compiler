package llvm;

import java.util.List;
import java.util.Map;
import arm.*;

public interface LLVM {

    public void printOut();
    public void printOutARM(Map<String, Integer> map);

    public String getResultReg();
    public String getResultType();

    public void addARM( ARM arm );
    public void addARMList(List<ARM> arms );
    public List<ARM> getARMS();
}
