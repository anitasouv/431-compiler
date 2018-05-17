package llvm;

import java.util.List;
import arm.*;

public interface LLVM {

    public void printOut();
    public void printOutARM();

    public String getResultReg();
    public String getResultType();

    public void addARM( ARM arm );
    public void addARMList(List<ARM> arms );
<<<<<<< HEAD
    public List<ARM> getARMS();
=======
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
}
