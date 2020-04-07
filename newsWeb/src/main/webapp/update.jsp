<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--<%@ page errorPage="404.jsp" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    <h3 style="text-align: center;">修改个人信息</h3>
    <form action="${pageContext.request.contextPath}/updatePersonalDataServlet"
          method="post">
        <input type="hidden" name="id" value="${NEWSUSERID}">

        <div class="form-group">
            <label for="email">邮箱:</label> <input type="text"
                                                  class="form-control" id="email" value="${newsUserEmail}"
                                                  name="email" readonly="readonly"/>
        </div>

        <div class="form-group">
            <label for="name">昵称：</label>
            <input type="text" class="form-control"
                   id="name" value="${upc.name}" name="name" placeholder="请输入昵称"/>
        </div>

        <div class="form-group">
            <label for="age">年龄:</label> <input type="text" class="form-control"
                                                id="age" value="${upc.age}" name="age" placeholder="请输入年龄"/>
        </div>

        <div class="form-group">
            <label for="birthday">出生日期:</label>
            <input type="date" id="birthday" name="birthday" value="${upc.birthday}" >
        </div>

        <div class="form-group">

            <label>性别：</label>
            <!-- 判断性别 -->
            <c:if test="${upc.gender==''}">
                <input type="radio" name="gender" value="男" checked/>男
                <input type="radio" name="gender" value="女"/>女
            </c:if>
            <c:if test="${upc.gender =='男'}">
                <input type="radio" name="gender" value="男" checked/>男
                <input type="radio" name="gender" value="女"/>女
            </c:if>

            <c:if test="${upc.gender =='女'}">
                <input type="radio" name="gender" value="男"/>男
                <input type="radio" name="gender" value="女" checked/>女
            </c:if>

        </div>

        <div class="form-group">
            <label>地址：</label>
            <div class="search">
                <div class="citySelect">
                    <input style="border: 0px" name="address" class="cityName" value="四川" readonly="readonly"/>

                    <i class="iconDown"></i>
                    <i class="line"></i>
                </div>

                <div class="dropDown">
                    <div class="dropProv">
                        <ul class="dropProvUl dropUl"></ul>
                    </div>
                    <div class="dropCity">
                        <ul class="dropCityUl dropUl"></ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label>个性签名：</label>
            <input type="text" id="signature"
                   class="form-control" value="${upc.signature}" name="signature"
                   placeholder="请输入个性签名"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交"/> <input
                class="btn btn-default" type="reset" value="重置"/> <input
                class="btn btn-default" type="button" value="返回"/>
        </div>
    </form>
</div>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/citySelect.js"></script>
</body>
</html>