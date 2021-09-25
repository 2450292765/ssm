<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/9/20
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>成绩管理系统</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"
            integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
            crossorigin="anonymous"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
</head>
<body>
<!-- Modal员工添加的模态框 -->
<div class="modal fade" id="StudentAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加学生</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" name="id" class="form-control" id="stdId_add_input" placeholder="id">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="stdName_add_input" placeholder="姓名">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">语文</label>
                        <div class="col-sm-10">
                            <input type="text" name="chinese" class="form-control " id="stdChinese_add_input" >
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">数学</label>
                        <div class="col-sm-10">
                            <input type="text" name="math" class="form-control " id="stdMath_add_input">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">英语</label>
                        <div class="col-sm-10">
                            <input type="text" name="english" class="form-control " id="stdEnglish_add_input">
                            <span  class="help-block"></span>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="std_save_btn" type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal员工修改的模态框 -->
<div class="modal fade" id="StudentUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改学生</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" name="id" class="form-control" id="stdId_update_input" placeholder="id">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="stdName_update_input" placeholder="姓名">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">语文</label>
                        <div class="col-sm-10">
                            <input type="text" name="chinese" class="form-control " id="stdChinese_update_input" >
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">数学</label>
                        <div class="col-sm-10">
                            <input type="text" name="math" class="form-control " id="stdMath_update_input">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">英语</label>
                        <div class="col-sm-10">
                            <input type="text" name="english" class="form-control " id="stdEnglish_update_input">
                            <span  class="help-block"></span>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="std_update_btn" type="button" class="btn btn-primary">更新</button>
            </div>
        </div>
    </div>
</div>
<%--搭建显示页面--%>
<div class="container">
    <%--    标题--%>
    <div class="row">
        <div class="col-md-12">
            <h1 style="color: darkcyan">SSM-CRUD By JiaZQ</h1>
        </div>
    </div>
    <%--    按钮--%>
    <div class="row">
        <div class="col-4 col-md-offset-10">
            <button class="btn btn-primary btn-primary btn-lg" id="std_add_modal_btn">新增</button>
            <button class="btn btn-danger btn-primary btn-lg" id="std_delete_all_btn" delete_ids="">删除</button>
        </div>
    </div>
    <%--    显示表格数据--%>
    <div class="row">
        <table id="std_table" class="table table-border text-center table table-hover" border="1" align="center">
            <thead>
            <tr style="background-color:skyblue;text-align: center">
                <td>
                    <input type="checkbox" id="check_all">
                </td>
                <th style="text-align: center">姓名</th>
                <th style="text-align: center">语文</th>
                <th style="text-align: center">数学</th>
                <th style="text-align: center">英语</th>
                <th style="text-align: center">操作</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <%--    显示分页信息--%>
    <div class="row">
        <%--        分页文字信息--%>
        <div class="col-md-6" id="page_info_area">

        </div>
        <%--    分页条--%>
        <div class="col-md-6" id="page_nav_area">

        </div>
    </div>
</div>
<script type="text/javascript">
    var currentPage;
    //1.页面加载完成以后，直接发ajax请求，要到分页数据
    $(function () {
        to_page(1);
    });

    //发起ajax请求，去第几页
    function to_page(pn) {
        $.ajax({
            url: "${pageContext.request.contextPath}/student",
            data: "pn="+pn,
            type: "GET",
            success: function (result) {
                // console.log(result);
                //解析并显示员工数据
                build_std_table(result);
                //解析显示分页信息
                build_page_info(result);
                //解析显示分页条
                build_page_nav(result);
            }
        });
    }

    function build_std_table(result) {
        //清空table表格
        $("#std_table tbody").empty();
        var students = result.extend.pageInfo.list;
        $.each(students, function (index, item) {
            var checkBoxTd=$("<td><input type='checkbox' class='check_item'/></td>");
            var studentName = $("<td></td>").append(item.name);
            var studentChinese = $("<td></td>").append(item.chinese);
            var studentMath = $("<td></td>").append(item.math);
            var studentEnglish = $("<td></td>").append(item.english);

            var editBtn = $("<button></button>").addClass("btn btn-primary btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            //为编辑按钮添加一个自定义属性，表示当前员工id
            editBtn.attr("edit-id",item.id);
            var deleteBtn = $("<button></button>").addClass("btn btn-danger btn-primary btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            //为删除按钮添加一个id属性
            deleteBtn.attr("delete-id",item.id);

            var btnTd=$("<td></td>").append(editBtn).append("  ").append(deleteBtn);
            $("<tr></tr>")
                .append(checkBoxTd)
                .append(studentName)
                .append(studentChinese)
                .append(studentMath)
                .append(studentEnglish)
                .append(btnTd)
                .appendTo("#std_table tbody").attr("DeleteId",item.id);//为当前tr添加当前item的id
        })
    }
    //解析显示分页信息
    function build_page_info(result) {
        $("#page_info_area").empty();
        var pageInfo=result.extend.pageInfo;
        $("#page_info_area").append("当前第"+pageInfo.pageNum+"页，总共"+pageInfo.pages+"页，"+pageInfo.total+"条记录");
    }

    //解析显示分页条
    function build_page_nav(result) {
        $("#page_nav_area").empty();
        var pageInfo=result.extend.pageInfo;
        currentPage=pageInfo.pageNum;

        var ul=$("<ul></ul>").addClass("pagination");

        //首页
        var firstPageLi=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        //上一页
        var prePageLi=$("<li></li>").append($("<a></a>").append("&laquo;"));

        if (pageInfo.hasPreviousPage==false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //添加翻页事件
            firstPageLi.click(function () {
                to_page(1);
            });
            prePageLi.click(function () {
                to_page(pageInfo.prePage);
            });
        }

        //下一页
        var nextPageLi=$("<li></li>").append($("<a></a>").append("&raquo;"));
        //末页
        var lastPageLi=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));

        if (pageInfo.hasNextPage==false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function () {
                to_page(pageInfo.nextPage);
            });
            lastPageLi.click(function () {
                to_page(pageInfo.pages);
            });
        }

        ul.append(firstPageLi).append(prePageLi);
        //遍历显示的页数
        $.each(pageInfo.navigatepageNums,function (index,item) {
            var numLi=$("<li></li>").append($("<a></a>").append(item));
            if (pageInfo.pageNum==item){
                numLi.addClass("active");
            }
            numLi.click(function () {
                to_page(item);
            });
            ul.append(numLi);
        });
        ul.append(nextPageLi).append(lastPageLi);
        var  navEle=$("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }

    //完整清空表单
    function reset_form(ele){
        $(ele)[0].reset();
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }

    //点击新增，弹出模态框
    $("#std_add_modal_btn").click(function () {
        //清楚之前的表单数据
        reset_form("#StudentAddModal form");
        $("#StudentAddModal").modal({
            backdrop:"static"
        });
    });

    //校验表单数据
    function validate_add_form(){
        //拿到校验数据
        //校验姓名
        var studentName=$("#stdName_add_input").val();
        var studentId=$("#stdId_add_input").val();
        var regId=/^\d{4}$/;
        var regName=/^([a-zA-Z0-9_-]{6,16})|(^[\u2E80-\u9FFF]{2,5})$/;
        //校验id
        if (!regId.test(studentId)){
            show_validate_msg("#stdId_add_input","error","id必须由4位数字组成！");
            return false;
        }else{
            show_validate_msg("#stdId_add_input","success","");
        }
        //校验用户名
        if(!regName.test(studentName)){
            // alert("用户名必须是2-5位中文或6-16位英文和数字的组合！");
            show_validate_msg("#stdName_add_input","error","用户名必须是2-5位中文或6-16位英文和数字的组合！");
            return false;
        }else{
            show_validate_msg("#stdName_add_input","success","");
        }
        //校验成绩
        var studentChinese=$("#stdChinese_add_input").val().trim();
        var studentMath=$("#stdMath_add_input").val().trim();
        var studentEnglish=$("#stdEnglish_add_input").val().trim();
        var regName=/^[1-9]\d*|0$/;
        if (studentChinese==""||studentMath==""||studentEnglish==""){
            alert("成绩不能为空！");
            return false;
        }
        if(regName.test(studentChinese)){
            if (!(studentChinese>=0&&studentChinese<=100)){
                // alert("成绩的范围是[0-100]");
                show_validate_msg("#stdChinese_add_input","error","成绩的范围是[0-100]");
                return false;
            }else{
                show_validate_msg("#stdChinese_add_input","success","");
            }
        }else{
            // alert("请输入正确的数字格式！");
            show_validate_msg("#stdChinese_add_input","error","请输入正确的数字格式！");
            return false;
        }
        if(regName.test(studentMath)){
            if (!(studentMath>=0&&studentMath<=100)){
                // alert("成绩的范围是[0-100]");
                show_validate_msg("#stdMath_add_input","error","成绩的范围是[0-100]");
                return false;
            }else{
                show_validate_msg("#stdMath_add_input","success","");
            }
        }else{
            // alert("请输入正确的数字格式！");
            show_validate_msg("#stdMath_add_input","error","请输入正确的数字格式！");
            return false;
        }
        if(regName.test(studentEnglish)){
            if (!(studentEnglish>=0&&studentEnglish<=100)){
                // alert("成绩的范围是[0-100]");
                show_validate_msg("#stdEnglish_add_input","error","成绩的范围是[0-100]");
                return false;
            }else{
                show_validate_msg("#stdEnglish_add_input","success","");
            }
        }else{
            // alert("请输入正确的数字格式！");
            show_validate_msg("#stdEnglish_add_input","error","请输入正确的数字格式！");
            return false;
        }
        return true;
    }
    function show_validate_msg(ele,status,msg){
        //清楚当前元素的校验状态
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if ("success"==status){
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text("");
        }else if ("error"==status){
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }
    //发送ajax请求检验id是否存在
    $("#stdId_add_input").change(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/checkId",
            data:"id="+this.value,
            type:"POST",
            success:function (result) {
                if (result.code==100){
                    show_validate_msg("#stdId_add_input","success","");
                    $("#std_save_btn").attr("ajax-va","success");
                }else{
                    show_validate_msg("#stdId_add_input","error",result.extend.va_msg);
                    $("#std_save_btn").attr("ajax-va","error");
                }
            }
        });
    });

    //点击保存学生信息
    $("#std_save_btn").click(function () {
        //1.模态框中填写的表单数据提交给服务器进行保存
        //2.先对要提交给服务器的数据进行校验
        if (!validate_add_form()){
            return false;
        }
        //判断之前的ajax校验id是否成功
        if ($(this).attr("ajax-va")=="error"){
            return false;
        }
        //发送ajax请求保存员工
        $.ajax({
            url: "${pageContext.request.contextPath}/student",
            type:"POST",
            data:$("#StudentAddModal form").serialize(),
            success:function (result) {
                if (result.code==100){
                    alert(result.msg);
                    //关闭模态框
                    $("#StudentAddModal").modal("hide");
                }else {
                    if (undefined!=result.extend.errorFields.id){
                        show_validate_msg("#stdId_add_input","error",result.extend.errorFields.id)
                    }
                    if (undefined!=result.extend.errorFields.name){
                        show_validate_msg("#stdName_add_input","error",result.extend.errorFields.name);
                    }
                    if (undefined!=result.extend.errorFields.chinese){
                        show_validate_msg("#stdChinese_add_input","error",result.extend.errorFields.chinese);
                    }
                    if (undefined!=result.extend.errorFields.math){
                        show_validate_msg("#stdMath_add_input","error",result.extend.errorFields.math);
                    }
                    if (undefined!=result.extend.errorFields.english){
                        show_validate_msg("#stdEnglish_add_input","error",result.extend.errorFields.english);
                    }
                }
            }
        });
    });
    //点击修改弹出模态框
    $(document).on("click",".edit_btn",function () {
        getStudent($(this).attr("edit-id"));
        //把员工的id传递给模态框的更新按钮
        $("#std_update_btn").attr("edit-id",$(this).attr("edit-id"));
        //弹出模态框
        $("#StudentUpdateModal").modal({
            backdrop:"static"
        });
    });
    //获取学生信息，返回到修改表单中
    function getStudent(id) {
        $.ajax({
            url:"${pageContext.request.contextPath}/getStudent/"+id,
            type:"GET",
            success:function (result) {
                var student=result.extend.student;
                //设置id为不可编辑
                $("#stdId_update_input").attr("readonly",true);
                $("#stdId_update_input").val(student.id);
                $("#stdName_update_input").val(student.name);
                $("#stdChinese_update_input").val(student.chinese);
                $("#stdMath_update_input").val(student.math);
                $("#stdEnglish_update_input").val(student.english);
            }
        });
    }
    //提交修改
    $("#std_update_btn").click(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/student/"+$(this).attr("edit-id"),
            type:"PUT",
            data:$("#StudentUpdateModal form").serialize(),
            success:function (result) {
                alert(result.msg);
                $("#StudentUpdateModal").modal("hide");
                //回到当前页面
                to_page(currentPage);
            }
        });
    });
    //单个删除
    $(document).on("click",".delete_btn",function () {
        studentName=$(this).parents("tr").find("td:eq(1)").text();
        var isDelete=confirm("确认删除【"+studentName+"】吗？");
        console.log(currentPage);
        if (isDelete){
            //确认，发送ajax请求删除
            $.ajax({
                url:"${pageContext.request.contextPath}/student/"+$(this).attr("delete-id"),
                type:"DELETE",
                success:function (result) {
                    alert(result.msg);
                    //取当前页面
                    to_page(currentPage);
                }
            });
        }
    });
    //完成全选、全不选
    $("#check_all").click(function () {
        $(".check_item").prop("checked",$(this).prop("checked"));
    });
    //
    $(document).on("click",".check_item",function () {
        var flag= $(".check_item:checked").length==$(".check_item").length;
        $("#check_all").prop("checked",flag);
    });
    //点击批量删除
    $("#std_delete_all_btn").click(function () {
        if($(".check_item:checked").length==0){
            alert("请先勾选！");
            return false;
        }
        var studentNames="";
        var studentId="";
        $.each($(".check_item:checked"),function () {
            studentNames+=$(this).parents("tr").find("td:eq(1)").text()+",";
            studentId+=$(this).parents("tr").attr("DeleteId")+",";
        });
        studentNames=studentNames.substring(0,studentNames.length-1);
        studentId=studentId.substring(0,studentId.length-1);
        if (confirm("确认删除【"+studentNames+"】吗？")){
            //发起ajax请求
            $.ajax({
                //最开始把studentNames传进去，然后怎么也找不到哪错了...
                url:"${pageContext.request.contextPath}/student/"+studentId,
                type:"DELETE",
                success:function (result) {
                    alert(result.msg);
                    to_page(currentPage);
                }
            });
        }
    });
</script>
</body>
</html>
