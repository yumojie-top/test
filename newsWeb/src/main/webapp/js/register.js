//图片点击事件
function changeCheckCode(){
    var code = document.getElementById("check_code");
    code.src="checkCodeServlet?"+new Date().getTime();
}


// //校验姓名
// function checkName() {
//     //1.获取手机号的值
//     var name = $("#name").val();
//     //2.定义正则表达式
//     var reg_name = /^1[3456789]\d{9}$/;
//     //3.判断
//     var flag = reg_name.test(name);
//     if (!name){
//         $("#name").css("border","");
//         $("#error_name").css("display","none");
//         $("#right_name").css("display","none");
//         $("#info").css("display","none");
//         $("#name_hint").css("display","none");
//         return false}
//     if (/^\s*$/.test(name)){
//         $("#error_name").css("display","inline-block");
//         $("#name_hint").css("display","none");
//         $("#name_error_hint").html("昵称不能为空");
//         $("#name_error_hint").css("display","inline-block");
//         return false;
//     }
//
//     if (!flag){
//         //手机号不合法
//         $("#name").css("border","1px solid red");
//         $("#error_name").css("display","inline-block");
//         $("#right_name").css("display","none");
//         $("#name_hint").css("display","none");
//         $("#name_error_hint").html("手机号格式不正确");
//         $("#name_error_hint").css("display","inline-block");
//         return false;
//     }else{
//         //手机号合法
//         $("#name_hint").css("display","none");
//         $("#right_name").css("display","inline-block");
//         $("#name").css("border","");
//         $("#error_name").css("display","none");
//         $("#name_error_hint").css("display","none");
//         return true;
//     }
// }
//
// function checkName1() {
//     //1.获取手机号的值
//     var name = $("#name").val();
//     //2.定义正则表达式
//     var reg_name = /^1[3456789]\d{9}$/;
//     //3.判断
//     var flag = reg_name.test(name);
//
//     if (!flag){
//         //手机号不合法
//         $("#name").css("border","1px solid red");
//         $("#error_name").css("display","inline-block");
//         $("#right_name").css("display","none");
//         $("#name_hint").css("display","none");
//         $("#name_error_hint").html("手机号格式不正确");
//         $("#name_error_hint").css("display","inline-block");
//         return false;
//     }else{
//         //手机号合法
//         $("#name_hint").css("display","none");
//         $("#right_name").css("display","inline-block");
//         $("#name").css("border","");
//         $("#error_name").css("display","none");
//         $("#name_error_hint").css("display","none");
//         return true;
//     }
// }
//


//判断昵称是否合法
function checkName() {
    var flag=$("#name_flag_save").val();
    alert(flag);
    if (flag=="true"){
        //用户名可用
        $("#right_name").css("display","inline-block");
        $("#error_name").css("display","none");
        $("#name_hint").css("display","none");
        return true;
    }else {
        //用户名不合法
        $("#right_name").css("display", "none");
        $("#error_name").css("display", "inline-block");
        $("#name_hint").css("display", "inline-block");
        return false;
    }

}

//校验手机号
function checkTelephone() {
    //1.获取手机号的值
    var telephone = $("#phone").val();
    //2.定义正则表达式
    var reg_telephone = /^1[3456789]\d{9}$/;
    //3.判断
    var flag = reg_telephone.test(telephone);
    if (!telephone){
        $("#phone").css("border","");
        $("#error_phone").css("display","none");
        $("#right_phone").css("display","none");
        $("#info").css("display","none");
        $("#phone_hint").css("display","none");
        return false}
    if (/^\s*$/.test(telephone)){
        $("#error_phone").css("display","inline-block");
        $("#phone_hint").css("display","none");
        $("#phone_error_hint").html("手机号不能为空");
        $("#phone_error_hint").css("display","inline-block");
        return false;
    }

    if (!flag){
        //手机号不合法
        $("#phone").css("border","1px solid red");
        $("#error_phone").css("display","inline-block");
        $("#right_phone").css("display","none");
        $("#phone_hint").css("display","none");
        $("#phone_error_hint").html("手机号格式不正确");
        $("#phone_error_hint").css("display","inline-block");
        return false;
    }else{
        //手机号合法
        $("#phone_hint").css("display","none");
        $("#right_phone").css("display","inline-block");
        $("#phone").css("border","");
        $("#error_phone").css("display","none");
        $("#phone_error_hint").css("display","none");
        return true;
    }
}

function checkTelephone1() {
    //1.获取手机号的值
    var telephone = $("#phone").val();
    //2.定义正则表达式
    var reg_telephone = /^1[3456789]\d{9}$/;
    //3.判断
    var flag = reg_telephone.test(telephone);

    if (!flag){
        //手机号不合法
        $("#phone").css("border","1px solid red");
        $("#error_phone").css("display","inline-block");
        $("#right_phone").css("display","none");
        $("#phone_hint").css("display","none");
        $("#phone_error_hint").html("手机号格式不正确");
        $("#phone_error_hint").css("display","inline-block");
        return false;
    }else{
        //手机号合法
        $("#phone_hint").css("display","none");
        $("#right_phone").css("display","inline-block");
        $("#phone").css("border","");
        $("#error_phone").css("display","none");
        $("#phone_error_hint").css("display","none");
        return true;
    }
}

//校验email
function checkEmail() {
    //1.获取邮箱的值
    var email=	$("#email").val();
    //2.定义正则表达式
    var reg_email=/^\w+@\w+\.\w+$/;
    //3.判断
    var flag = reg_email.test(email);

    if (!email){
        $("#email").css("border","");
        $("#error_email").css("display","none");
        $("#right_email").css("display","none");
        $("#email_hint").css("display","none");
        return false;}
    if (/^\s*$/.test(email)){
        $("#error_email").css("display","inline-block");
        $("#email_error_hint").html("邮箱不能为空");
        $("#email_error_hint").css("display","inline-block");
        return false;
    }
    if (flag){
        //邮箱合法
        $("#email_hint").css("display","none");
        $("#email_error_hint").css("display","none");
        $("#right_email").css("display","inline-block");
        $("#email").css("border","");
        $("#error_email").css("display","none");
        return true;
    }else{
        //邮箱非法
        $("#email_hint").css("display","none");
        $("#right_email").css("display","none");
        $("#email").css("border","1px solid red");
        $("#error_email").css("display","inline-block");
        $("#email_error_hint").html("邮箱格式不正确");
        $("#email_error_hint").css("display","inline-block");
        return false;
    }
}

function checkEmail1() {
    //1.获取邮箱的值
    var email=	$("#email").val();
    //2.定义正则表达式
    var reg_email=/^\w+@\w+\.\w+$/;
    //3.判断
    var flag = reg_email.test(email);

    if (flag){
        //邮箱合法
        $("#email_hint").css("display","none");
        $("#email_error_hint").css("display","none");
        $("#right_email").css("display","inline-block");
        $("#email").css("border","");
        $("#error_email").css("display","none");
        return true;
    }else{
        //邮箱非法
        $("#email_hint").css("display","none");
        $("#right_email").css("display","none");
        $("#email").css("border","1px solid red");
        $("#error_email").css("display","inline-block");
        $("#email_error_hint").html("邮箱格式不正确");
        $("#email_error_hint").css("display","inline-block");
        return false;
    }
}

//校验密码
function checkPassword() {
    //1.获取密码的值
    var password= $("#password").val();
    //2.定义正则表达式
    var reg_passoword=/^\w{8,20}$/;
    var flag = reg_passoword.test(password);
    if (!password){
        $("#email").css("border","");
        $("#password_hint").css("display","none");
        $("#error_password").css("display","none");
        $("#right_password").css("display","none");
        return false}
    if (/^\s*$/.test(password)){
        $("#error_password").css("display","inline-block");
        $("#info").html("密码不能为空");
        $("#info").css("display","block");
        return false;
    }

    if (flag){
        //密码合法

        $("#right_password").css("display","inline-block");
        $("#password").css("border","");
        $("#error_password").css("display","none");
        $("#password_hint").css("display","none");
        checkConfirm_password();
    }else{
        //密码非法
        $("#password_hint").css("display","none");
        $("#right_password").css("display","none");
        $("#password").css("border","1px solid red");
        $("#error_password").css("display","inline-block");
        $("#password_error_hint").html("长度为8-20个的字符");
        $("#password_error_hint").css("display","inline-block");

    }
    return flag;
}

function checkPassword1() {
    //1.获取密码的值
    var password= $("#password").val();
    //2.定义正则表达式
    var reg_passoword=/^\w{8,20}$/;
    var flag = reg_passoword.test(password);

    if (flag){
        //密码合法

        $("#right_password").css("display","inline-block");
        $("#password").css("border","");
        $("#error_password").css("display","none");
        $("#password_hint").css("display","none");
    }else{
        //密码非法
        $("#password_hint").css("display","none");
        $("#right_password").css("display","none");
        $("#password").css("border","1px solid red");
        $("#error_password").css("display","inline-block");
        $("#password_error_hint").html("长度为8-20个的字符");
        $("#password_error_hint").css("display","inline-block");

    }
    return flag;
}

function checkCode(){
    //1.获取验证码的值
    var code = $("#verify_code").val();
    //判断是否为空
    if (!code){
        $("#check_code_error_hint").css("display","none");
        $("#check_code_hint").css("display","none");
        $("#error_check_code").css("display","none");
        $("#right_check_code").css("display","none");
        return false;
    }
    if (/^\s*$/.test(code)){
        $("#check_code_hint").css("display","none");
        $("#error_check_code").css("display","inline-block");
        $("#check_code_error_hint").html("验证码不能为空");
        $("#check_code_error_hint").css("display","block");
        return false;
    }

    //判断格式是否正确
    if (/^[a-zA-Z0-9]{4}$/.test(code)){
        //验证码合法
        $("#check_code_hint").css("display","none");
        $("#right_check_code").css("display","inline-block");
        $("#verify_code").css("border","");
        $("#error_check_code").css("display","none");
        $("#check_code_error_hint").css("display","none");
        return true;
    }else{
        //验证码非法
        $("#check_code_hint").css("display","none");
        $("#right_check_code").css("display","none");
        $("#verify_code").css("border","1px solid red");
        $("#error_check_code").css("display","inline-block");
        $("#check_code_error_hint").html("验证码错误");
        $("#check_code_error_hint").css("display","inline-block");
        return false;

    }
}

function checkCode1(){
    //1.获取验证码的值
    var code = $("#verify_code").val();


    //判断格式是否正确
    if (/^[a-zA-Z0-9]{4}$/.test(code)){
        //验证码合法
        $("#check_code_hint").css("display","none");
        $("#right_check_code").css("display","inline-block");
        $("#verify_code").css("border","");
        $("#error_check_code").css("display","none");
        $("#check_code_error_hint").css("display","none");
        return true;
    }else{
        //验证码非法
        $("#check_code_hint").css("display","none");
        $("#right_check_code").css("display","none");
        $("#verify_code").css("border","1px solid red");
        $("#error_check_code").css("display","inline-block");
        $("#check_code_error_hint").html("验证码错误");
        $("#check_code_error_hint").css("display","inline-block");
        return false;

    }
}

function checkConfirm_password(){
    var confirm_password = $("#confirm_password").val();
    var reg_passoword=/^\w{8,20}$/;
    var flag = reg_passoword.test(confirm_password);
    var password = $("#password").val();

    if (!confirm_password){
        //用户未输入
        $("#confirm_password_error_hint").css("display","none");
        $("#error_confirm_password").css("display","none");
        $("#right_confirm_password").css("display","none");
        $("#confirm_password_hint").css("display","none");
       return false;
    }
    if (/^\s*$/.test(confirm_password)) {
        //输入不合法
        $("#confirm_password_hint").css("display","none");
        $("#error_confirm_password").attr("title","确认密码不能为空");
        $("#error_confirm_password").css("display","inline-block");
        $("#confirm_password_error_hint").html("确认密码不能为空");
        $("#confirm_password_error_hint ").css("display","inline-block");
        return false;
    }


    if (password==confirm_password && flag&& checkPassword){
        //密码一致
        $("#confirm_password_hint").css("display","none");
        $("#right_confirm_password").css("display","inline-block");
        $("#confirm_password").css("border","");
        $("#error_confirm_password").css("display","none");
        $("#confirm_password_error_hint").css("display","none");
        return true;
    } else {
        //[[密码不一致
        $("#right_confirm_password").css("display","none");
        $("#confirm_password").css("border","1px solid red");
        $("#error_confirm_password").css("display","inline-block");
        $("#confirm_password_hint").css("display","none");
        $("#confirm_password_error_hint").html("两次密码不一致");
        $("#confirm_password_error_hint").css("display","inline-block");
        return false;
    }
}


function checkConfirm_password1(){
    var confirm_password = $("#confirm_password").val();
    var reg_passoword=/^\w{8,20}$/;
    var flag = reg_passoword.test(confirm_password);
    var password = $("#password").val();



    if (password==confirm_password && flag&& checkPassword){
        //密码一致
        $("#confirm_password_hint").css("display","none");
        $("#right_confirm_password").css("display","inline-block");
        $("#confirm_password").css("border","");
        $("#error_confirm_password").css("display","none");
        $("#confirm_password_error_hint").css("display","none");
        return true;
    } else {
        //[[密码不一致
        $("#right_confirm_password").css("display","none");
        $("#confirm_password").css("border","1px solid red");
        $("#error_confirm_password").css("display","inline-block");
        $("#confirm_password_hint").css("display","none");
        $("#confirm_password_error_hint").html("两次密码不一致");
        $("#confirm_password_error_hint").css("display","inline-block");
        return false;
    }
}


function checkBox(flag){

    if (flag){
        document.getElementById("protocol_button").disabled="";
        $("#checkbox_hint").css("display","none");
        $("#right_checkbox").css("display","inline-block");
        $("#error_checkbox").css("display","none");
        return true;

    } else{
        document.getElementById("protocol_button").disabled="disabled";
        $("#right_checkbox").css("display","none");
        $("#error_checkbox").css("display","inline-block");
        $("#checkbox_hint").css("display","inline-block");
        return false;
    }
}

function checkProtocol(){

    var flag= $("#protocol_button").prop("disabled");
    if (flag){
        $("#right_checkbox").css("display","none");
        $("#checkbox_hint").css("display","inline-block");
        return false;

    } else {
        $("#checkbox_hint").css("display","none");
        $("#right_checkbox").css("display","inline-block");
        $("#checkbox_hint").css("display","none");
        return true;
    }
}



$(function(){

    $("#register_submit").submit(function () {

        if (checkName()&&checkTelephone1()&&checkEmail1()&&checkPassword1()&&checkConfirm_password1()&&checkCode1()&&checkProtocol()) {

            return true;

        }
        return false;

    });


    //输入框获取焦点事件
    // $("#name").focus(function(){
    //     $("#name_error_hint").css("display","none");
    //     $("#right_name").css("display","none");
    //     $("#error_name").css("display","none");
    //     $("#name_hint").css("display","inline-block");
    // });

    $("#phone").focus(function(){
        $("#phone_error_hint").css("display","none");
        $("#right_phone").css("display","none");
        $("#error_phone").css("display","none");
        $("#phone_hint").css("display","inline-block");
    });

    $("#email").focus(function(){
        $("#email_error_hint").css("display","none");
        $("#right_email").css("display","none");
        $("#error_email").css("display","none");
        $("#email_hint").css("display","inline-block");
    });

    $("#password").focus(function(){
        $("#password_error_hint").css("display","none");
        $("#right_password").css("display","none");
        $("#error_password").css("display","none");
        $("#password_hint").css("display","inline-block");

    });

    $("#confirm_password").focus(function(){
        $("#confirm_password_error_hint").css("display","none");
        $("#right_confirm_password").css("display","none");
        $("#error_confirm_password").css("display","none");
        $("#confirm_password_hint").css("display","inline-block");
    });

    $("#verify_code").focus(function () {
        $("#check_code_error_hint").css("display","none");
        $("#right_check_code").css("display","none");
        $("#error_check_code").css("display","none");
        $("#check_code_hint").css("display","inline-block");
    });

    $("#confirm_password").focus(function () {
        $("#confirm_password_error_hint").css("display","none");
        $("#right_confirm_password").css("display","none");
        $("#error_confirm_password").css("display","none");
        $("#confirm_password_hint").css("display","inline-block");
    });

    //输入框失去焦点事件
    $("#name").blur(function () {
        var name =  $("#name").val();
        alert(name);
        $("#name").load("checkNameServlet",{name,name},function (data) {
            alert(data);
            if (data=="true"){
                //用户名可用
                $("#right_name").css("display","inline-block");
                $("#error_name").css("display","none");
                $("#name_hint").css("display","none");
                $("#name_flag_save").val("true");
            }else {
                //用户名不合法
                $("#right_name").css("display","none");
                $("#error_name").css("display","inline-block");
                $("#name_hint").css("display","inline-block");
                $("#name_flag_save").val("false");


            }
        });
    });
    $("#password").blur(checkPassword);
    $("#email").blur(checkEmail);
    $("#phone").blur(checkTelephone);
    $("#verify_code").blur(checkCode);
    $("#confirm_password").blur(checkConfirm_password);




});