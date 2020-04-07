<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="404.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <meta name="keywords" content="注册">
    <meta name="content" content="注册">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body class="login_bj" >

<div class="zhuce_body">
    <div class="logo"><a href="#"><img  src="images/logo.png" width="200" height="70"></a></div>
    <div class="zhuce_kong">
        <div class="zc">
            <div class="bj_bai">
                <h3>欢迎注册</h3>
                <form id="register_submit" action="userRegisterServlet" method="post">

                    <input name="name" id="name"   type="text" class="kuang_txt name" placeholder="昵称">
                    <img  id="error_name" style="display: none;"  src="images/err_small.png">
                    <img  id="right_name" style="display: none;"  src="images/right.png">
                    <span id="name_hint" style="font-size: 12px;display: none;color:#999999;">请输入1-10位数的昵称</span>
                    <span id="name_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>

                    <input type="text" style="display: none" id="name_flag_save"  value="false">

                    <input name="phone" id="phone"   type="text" class="kuang_txt phone" placeholder="手机号">
                    <img  id="error_phone" style="display: none;"  src="images/err_small.png">
                    <img  id="right_phone" style="display: none;"  src="images/right.png">
                    <span id="phone_hint" style="font-size: 12px;display: none;color:#999999;">请输入中国大陆手机号,其它用户不可见</span>
                    <span id="phone_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>

                    <input name="email" id="email" type="email" class="kuang_txt email" placeholder="邮箱">
                    <img  id="error_email" style="display: none;"  src="images/err_small.png">
                    <img  id="right_email" style="display: none;"  src="images/right.png">
                    <span id="email_hint" style="font-size: 12px;display: none;color:#999999;">请输入正确的邮箱号,用于登录和找回密码</span>
                    <span id="email_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>

                    <input name="password" id="password" type="password" class="kuang_txt possword" placeholder="密码">
                    <img  id="error_password" style="display: none;"  src="images/err_small.png">
                    <img  id="right_password" style="display: none;"  src="images/right.png">
                    <span id="password_hint" style="font-size: 12px;display: none;color:#999999;">长度为8-20个字符</span>
                    <span id="password_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>

                    <input name="confirm_password" id="confirm_password" type="password" class="kuang_txt possword" placeholder="确认密码">
                    <img id="error_confirm_password" style="display: none;"  src="images/err_small.png">
                    <img id="right_confirm_password" style="display: none;"  src="images/right.png">
                    <span id="confirm_password_hint" style="font-size: 12px;display: none;color:#999999;">长度为8-20个字符</span>
                    <span id="confirm_password_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>

                    <input name="verify_code" id="verify_code" type="text" class="kuang_txt yanzm" autocomplete="off" placeholder="验证码">
                    <img id="error_check_code" style="display: none"  src="images/err_small.png">
                    <img  id="right_check_code" style="display: none;"  src="images/right.png">
                    <span id="check_code_hint" style="font-size: 12px;display: none;color:#999999;">请输入正确的验证码</span>
                    <span id="check_code_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>
                    <span>${requestScope.resultINfo}</span>

                    <div>
                        <div class="hui_kuang" id="hui_kuan"><img id="check_code" src="checkCodeServlet"  width="92" height="31"></div>

                        <div class="shuaxin"><a href="#"><img src="images/zc_25.jpg" width="13" height="14" onclick="changeCheckCode()"></a></div>
                    </div>
                    <div>
                        <input name="checkbox" type="checkbox" id="checkbox"   onclick="checkBox(this.checked)">
                        <span>阅读并接受<a href="protocol.jsp" target="_blank"><span class="lan">《小余新闻网用户协议》</span></a></span>
                        <img id="error_checkbox" style="display: none"  src="images/err_small.png">
                        <img  id="right_checkbox" style="display: none;"  src="images/right.png">
                        <span id="checkbox_hint" style="font-size: 12px;display: none;color:#999999;">请阅读并勾选协议</span>
                        <span id="checkbox_error_hint" style="font-size: 12px;display: none;color:#FF0000;"></span>

                    </div>
                    <button id="protocol_button" disabled="disabled" style="display: none"></button>
                    <button name="注册" id="registerSubmit"  type="submit" class="btn_zhuce" value="注册">注册
                    </button>
                </form>
            </div>
            <div class="bj_right">
                <p>使用以下账号直接登录</p>

                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>已有账号？<a href="login.jsp">立即登录</a></p>
                <p>${ResultInfo}</p>
            </div>

        </div>
        <P>yumojie.top&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您注册小余新闻网</P>
    </div>

</div>

<div style="text-align:center;">

</div>


<script src="js/register.js"></script>
<script src="./js/jquery-2.1.4.min.js"></script>
</body>
</html>
