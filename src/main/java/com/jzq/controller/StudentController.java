package com.jzq.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jzq.bean.Msg;
import com.jzq.bean.Student;
import com.jzq.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author JiaZQ
 * @create 2021-09-20-11:01
 */
@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    /**
     * 根据id查询学生
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/getStudent/{id}",method = RequestMethod.GET)
    public Msg getStudent(@PathVariable(value = "id") String id) {
        Student student = studentService.getStudent(id);
        return Msg.success().add("student",student);
    }

    /**
     * 修改信息
     * @param student
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/student/{id}",method = RequestMethod.PUT)
    public Msg updateStudent(Student student,@PathVariable("id") String id){
        if (student.getName().length()==0||"".equals(student.getName())){
            return Msg.fail();
        }else if (student.getChinese()<0||student.getChinese()>100){
            return Msg.fail();
        }else if (student.getMath()<0||student.getMath()>100){
            return Msg.fail();
        }else if (student.getEnglish()<0||student.getEnglish()>100){
            return Msg.fail();
        }else{
            studentService.update(student);
            return Msg.success();
        }
    }

    /**
     * 查询全部学生，并将pageInfo以json格式返回，而不是直接返回一个页面
     * @param pn
     * @return
     */
    @RequestMapping(value = "/student",method = RequestMethod.GET)
    @ResponseBody
    public Msg getStudentWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn){
//        紧跟着这条语句的就是一个分页查询
        PageHelper.startPage(pn, 5);
        List<Student> students = studentService.getAll();
        //将查询结果封装到PageInfo中
        PageInfo<Student> pageInfo = new PageInfo<>(students,5);
        return Msg.success().add("pageInfo",pageInfo);
    }
//    @RequestMapping(value = "/student",method = RequestMethod.GET)
//    public String getAllStudent(@RequestParam(value = "pn",defaultValue = "1") Integer pn,  Model model){
//        //紧跟着这条语句的就是一个分页查询
//        PageHelper.startPage(pn, 5);
//        List<Student> students = studentService.getAll();
//        //将查询结果封装到PageInfo中
//        PageInfo<Student> pageInfo = new PageInfo<>(students,5);
//        int[] nums = pageInfo.getNavigatepageNums();
//        model.addAttribute("pageInfo",pageInfo);
//        return "all";
//    }

    /**
     * 新增学生
     * @param student
     * @return
     */
    @RequestMapping(value = "/student",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveStudent(@Valid Student student, BindingResult result){
        Map<String,Object> map=new HashMap<>();
        if (result.hasErrors()){
            //返回失败，在模态框中显示校验失败的错误信息
            List<FieldError> errors = result.getFieldErrors();
            for (FieldError error : errors) {
                map.put(error.getField(),error.getDefaultMessage());
            }
            return Msg.fail().add("errorFields",map);
        }else{
            studentService.saveStudent(student);
            return Msg.success();
        }
    }

    /**
     * 检查id是否存在
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/checkId",method = RequestMethod.POST)
    public Msg checkId(@RequestParam("id") String id){
        //后端校验id是否合法
        String regID="^[0-9]{4}$";
        Pattern pattern = Pattern.compile(regID);
        Matcher matcher = pattern.matcher(id);
        boolean b = matcher.matches();
        if (!b){
            return Msg.fail().add("va_msg","id必须由四位数字组成");
        }
        //id重复校验
        Boolean checkId = studentService.checkId(id);
        if (checkId){
            return Msg.success();
        }else{
            return Msg.fail().add("va_msg","用户名已存在！");
        }
    }

    /**
     * 单个删除与批量删除二合一
     * 删除学生，请求重定向到all页面
     * 批量删除：1,2,3
     * 单个：1
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/student/{ids}",method = RequestMethod.DELETE)
    public Msg deleteStudent(@PathVariable(value = "ids") String ids){
        if (ids.contains(",")){
            String[] split = ids.split(",");
            for (String id : split) {
                studentService.delete(id);
            }
            return Msg.success();
        }else{
            studentService.delete(ids);
            return Msg.success();
        }
    }
}
