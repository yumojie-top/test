<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="404.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <meta name="keywords" content="小余新闻">
    <meta name="content" content="小余新闻">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
</head>
<body class="login_bj" >
<div class="zhuce_body">
    <div class="logo"><a href="#"><img  src="images/logo.png" width="200" height="70" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
        <div class="zc">
            <div class="bj_bai">
                <h3>登录</h3>
                <form action="userLoginServlet" id="userLoginForm" method="post">
                    <span id="hint_msg" style="color: #FF0000;">${loginErrorMsg}</span>
                    <input name="email" id="email" type="email" class="kuang_txt" placeholder="邮箱">
                    <input name="password" id="password" type="password" class="kuang_txt" placeholder="密码">
                    <div>
                        <a href="forgetPassword.jsp">忘记密码？</a><input name="" type="checkbox" value="" checked><span>记住我</span>
                    </div>
                    <input name="登录" type="submit" class="btn_zhuce" value="登录">

                </form>
            </div>
            <div class="bj_right">
                <p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>没有账号？<a href="register.jsp">立即注册</a></p>

            </div>
        </div>
        <P>yumojie.top&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您登录小余新闻网</P>
    </div>

</div>
<script src="js/login.js"></script>
</body>
</html>
