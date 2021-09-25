import com.jzq.bean.Student;
import com.jzq.dao.StudentDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author JiaZQ
 * @create 2021-09-20-20:01
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/applicationContext.xml"})
public class testMapper {
    @Autowired
    StudentDao studentDao;
    @Test
    public void testDao(){
        Student student = studentDao.getStudentById("777");
        System.out.println(student);
    }
    @Test
    public void test(){
        Student student = new Student("5121", "zed", 50, 80, 60);
        studentDao.insertStudent(student);
    }            
}
