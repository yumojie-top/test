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
    <title>小余当家用户激活中心</title>
    <link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body class="login_bj">
<div class="zhuce_body">
    <div class="logo"><a href="#"><img src="images/logo.png" width="200" height="70" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
        <div class="zc">
            <div style="background-color: #FFFFFF;width: 400px;height: 400px;margin-left: 10%;text-align: center">
               <div style="padding: 100px"><a style="color: #FF0000;font-size: 30px"  href="http://localhost/newsWeb/userActivateServlet?sqm=${param.sqm}">点击激活</a></div>
                <div style="margin-top: 80px">注:用户在未激活状态下,无法登录小鱼新闻网</div>
            </div>
        </div>
    </div>


</div>
</body>
</html>
