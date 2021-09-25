package com.jzq.service;

import com.jzq.bean.Student;
import com.jzq.dao.StudentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author JiaZQ
 * @create 2021-09-20-10:59
 */
@Service
public class StudentService {
    @Autowired
    StudentDao studentDao;

    //根据id查询学生
    public Student getStudent(String id) {
        Student student = studentDao.getStudentById(id);
        return student;
    }

    //查询所有学生
    public List<Student> getAll(){
        List<Student> studentList = studentDao.getAllStudent();
        return studentList;
    }

    //删除
    public void delete(String id) {
        studentDao.deleteById(id);
    }

    public void update(Student student) {
        studentDao.updateStudent(student);
    }

    /**
     * 员工保存
     * @param student
     */
    public void saveStudent(Student student) {
        studentDao.insertStudent(student);
    }

    public Boolean checkId(String id) {
        Student student = studentDao.getStudentById(id);
        if (student==null){
            return true;
        }
        return false;
    }

}
