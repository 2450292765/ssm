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
    <title>所有学生</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>成绩管理系统</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
</head>
<body>
<%--搭建显示页面--%>
<div class="container">
    <%--    标题--%>
    <div class="row">
        <div class="col-md-12">
            <h1>SSM-CRUD</h1>
        </div>
    </div>
    <%--    按钮--%>
    <div class="row">
        <div class="col-4 col-md-offset-10">
            <button class="btn btn-primary btn-primary btn-lg">新增</button>
            <button class="btn btn-danger btn-primary btn-lg">删除</button>
        </div>
    </div>
    <%--    显示表格数据--%>
    <div class="row">
        <table class="table table-border text-center table table-hover" border="1" align="center">
            <tr style="background-color:skyblue;text-align: center">
                <th style="text-align: center">姓名</th>
                <th style="text-align: center">语文</th>
                <th style="text-align: center">数学</th>
                <th style="text-align: center">英语</th>
                <th style="text-align: center">操作</th>
            </tr>
            <c:forEach items="${pageInfo.getList()}" var="student">
                <tr>
                    <td>${student.name}</td>
                    <td>${student.chinese}</td>
                    <td>${student.math}</td>
                    <td>${student.english}</td>
                    <td>
                        <button class="btn btn-primary btn-primary btn-sm">
                            编辑
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                        </button>
                        <button class="btn btn-danger btn-primary btn-sm">
                            删除
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <%--    显示分页信息--%>
    <div class="row">
        <%--        分页文字信息--%>
        <div class="col-md-6">
            当前第${pageInfo.getPageNum()}页，总共页${pageInfo.getPages()}，${pageInfo.total}条记录
        </div>
        <%--    分页条--%>
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/student?pn=1">首页</a></li>
                    <li>
                        <%--                        有上一页就显示--%>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/student?pn=${pageInfo.getPrePage()}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <c:forEach items="${pageInfo.getNavigatepageNums()}" var="num">
                        <c:if test="${num==pageInfo.pageNum}">
                            <li class="active"><a href="#">${num}</a></li>
                        </c:if>
                        <c:if test="${num!=pageInfo.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/student?pn=${num}">${num}</a></li>
                        </c:if>
                    </c:forEach>
                    <li>
                        <%--                        没有下一页不显示--%>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/student?pn=${pageInfo.getNextPage()}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/student?pn=${pageInfo.getPages()}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
