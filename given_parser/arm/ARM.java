package arm;

import java.util.Set;
import java.util.Map;

public interface ARM {
    public void printOut(Map<String, Integer> map);
    public Set<String> getSources();
    public Set<String> getTargets();
}
