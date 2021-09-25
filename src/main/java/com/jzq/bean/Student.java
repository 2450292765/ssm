package com.jzq.bean;

import javax.validation.constraints.*;

//实现Serializable接口，实现对象序列化
public class Student {
    @Pattern(regexp = "^[0-9]{4}$",message = "id必须是0-4位数字")
    @NotNull
    private String id;
    @NotNull
    private String name;
    @Min(0)@Max(100)
    private Integer chinese;
    @Min(0)@Max(100)
    private Integer math;
    @Min(0)@Max(100)
    private Integer english;

    @Override
    public String toString() {
        return "Student{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", chinese=" + chinese +
                ", math=" + math +
                ", english=" + english +
                '}';
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getChinese() {
        return chinese;
    }

    public void setChinese(Integer chinese) {
        this.chinese = chinese;
    }

    public Integer getMath() {
        return math;
    }

    public void setMath(Integer math) {
        this.math = math;
    }

    public Integer getEnglish() {
        return english;
    }

    public void setEnglish(Integer english) {
        this.english = english;
    }

    public Student(String id, String name, Integer chinese, Integer math, Integer english) {
        this.id = id;
        this.name = name;
        this.chinese = chinese;
        this.math = math;
        this.english = english;
    }

    public Student() {
    }
}
