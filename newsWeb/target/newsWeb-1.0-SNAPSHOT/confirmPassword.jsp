<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/2
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="404.jsp" %>
<html>
<head>
    <title>小余新闻密码确认中心</title>
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script src="js/jquery-2.1.4.min.js"></script>
</head>
<body class="login_bj">
<div class="zhuce_body">
    <div class="logo"><a href="#"><img src="images/logo.png" width="200" height="70" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
        <div class="zc">
            <div style="background-color: #FFFFFF;width: 400px;height: 400px;margin-left: 10%;text-align: center">
               <div style="padding: 100px"><a style="color: #FF0000;font-size: 30px"  href="http://localhost/newsWeb/userConfirmPasswordServlet?email=${param.email}&code=${param.code}">确认本人操作,点击修改密码!</a></div>
                <div class="alert alert-danger" style="color: red" role="alert">${ConfirmPasswordInfo}</div>
                <script>
                    $(window).ready(function () {
                        var val = "${ConfirmPasswordInfo}";
                        if (val!=""){
                        alert(val);}
                    })

                </script>

                <div style="margin-top: 80px">注:用户在未确认状态下,无法修改小余新闻网的密码</div>
            </div>
        </div>
    </div>


</div>



</body>
</html>
