<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/15
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="404.jsp" %>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改用户</title>
    <link rel="stylesheet" href="css/citySelect.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>


<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">忘记密码?</h3>
    <form action="${pageContext.request.contextPath}/updateUserPasswordServlet"
          method="post">


        <div class="form-group">
            <label for="email">邮箱：</label>
            <input type="text" class="form-control"
                   id="email"  name="email" placeholder="请输入邮箱"/>
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" class="form-control"
                   id="password"  name="password" placeholder="请输入密码"/>
        </div>

        <div class="form-group">
            <label for="confirm_password">确认密码:</label>
            <input type="password" class="form-control"
                   id="confirm_password" name="confirm_password" placeholder="请再次确认密码"/>
        </div>
        
       <div class="alert alert-danger" role="alert">${ResultInfo.msg}</div>
        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交"/>
            <a  class="btn btn-primary" type="button" href="javascript:history.back(-1)">返回</a>
<%--            <a href="javascript:history.back(-1)">返回上一页</a>--%>
        </div>
    </form>
</div>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/citySelect.js"></script>
</body>

