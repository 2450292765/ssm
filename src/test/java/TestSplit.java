import org.junit.Test;

import java.util.Arrays;
import java.util.List;

/**
 * @author JiaZQ
 * @create 2021-09-22-18:07
 */
public class TestSplit {
    @Test
    public void test(){
        String string="1-2-3";
        String[] split = string.split("-");
        List<String> list = Arrays.asList(split);
        System.out.println(list);
    }
}
