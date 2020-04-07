function checkEmail() {
    //1.获取邮箱的值
    var email=	$("#email").val();
    //2.定义正则表达式
    var reg_email=/^\w+@\w+\.\w+$/;
    //3.判断
    var flag = reg_email.test(email);

    if (!email){
        $("#email").css("border","");
        return false;
    }

    if (flag){
        //邮箱合法
        $("#email").css("border","");
        return true;
    }else{
        //邮箱非法
        $("#email").css("border","1px solid red");
        $("#hint_msg").html("邮箱格式不正确");
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
        $("#email").css("border","");
        return true;
    }else{
        //邮箱非法
        $("#email").css("border","1px solid red");
        $("#hint_msg").html("邮箱格式不正确");
        return false;
    }
}

function checkPassword() {
    //1.获取密码的值
    var password= $("#password").val();
    //2.定义正则表达式
    var reg_passoword=/^\w{8,20}$/;
    var flag = reg_passoword.test(password);

    if (!password){
        $("#hint_msg").html("");
        $("#password").css("border","");
        return false;
    }

    if (flag){
        //密码合法
        $("#hint_msg").html("");
        $("#password").css("border","");

    }else{
        //密码非法
        $("#password").css("border","1px solid red");
        $("#hint_msg").html("密码格式不正确!");
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
        $("#hint_msg").html("");
        $("#password").css("border","");

    }else{
        //密码非法
        $("#password").css("border","1px solid red");
        $("#hint_msg").html("密码格式不正确!");
    }
    return flag;
}

$(function () {

    $("#userLoginForm").submit(function () {
        if (checkEmail1()&&checkPassword1()){
            return true;
        }
        return false;
    });

    $("#email").blur(checkEmail);
    $("#password").blur(checkPassword);
});