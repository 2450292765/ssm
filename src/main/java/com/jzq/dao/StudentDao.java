package com.jzq.dao;

import com.jzq.bean.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author JiaZQ
 * @create 2021-09-20-10:59
 */
public interface StudentDao {
    public Student getStudentById(String id);
    //获取所有学生
    public List<Student> getAllStudent();

    public void deleteById(String id);

    public void updateStudent(Student student);

    public void insertStudent(@Param("student") Student student);

}
