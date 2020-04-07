<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/31
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/newsWeb/admin/css/font.css">
    <link rel="stylesheet" href="/newsWeb/admin/css/xadmin.css">
    <script type="text/javascript" src="/newsWeb/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/newsWeb/admin/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--></head>

<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form id="edit-form" class="layui-form">
            <div class="layui-form-item">
                <label for="edit_id" class="layui-form-label">用户id</label>
                <div class="layui-input-inline">
                    <input type="text" id="edit_id" name="edit_id" disabled="" value="${userEdit.id}" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="email" class="layui-form-label">
                    <span class="x-red">*</span>邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" id="email" name="email" value="${userEdit.email}" required="" lay-verify="email" autocomplete="off" class="layui-input"></div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为您唯一的登入名</div></div>



            <div class="layui-form-item">
                <label for="name" class="layui-form-label">
                    <span class="x-red">*</span>昵称</label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="name" value="${userEdit.name}" required="" lay-verify="nikename" autocomplete="off" class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label for="phone" class="layui-form-label">
                    <span class="x-red">*</span>手机号</label>
                <div class="layui-input-inline">
                    <input type="text" value="${userEdit.phone}" id="phone" name="phone" required="" autocomplete="off" class="layui-input"></div>
                <div class="layui-form-mid layui-word-aux">11位</div></div>
            <div class="layui-form-item">
                <label for="age" class="layui-form-label">
                    <span class="x-red">*</span>年龄</label>
                <div class="layui-input-inline">
                    <input type="text" id="age" value="${userEdit.age}" name="age" required=""  autocomplete="off" class="layui-input"></div>
            </div>

            <div class="layui-form-item">
                <label for="signature" class="layui-form-label">
                    <span class="x-red">*</span>个人介绍</label>
                <div class="layui-input-inline">
                    <input type="text" id="signature" value="${userEdit.signature}" name="signature" required=""  autocomplete="off" class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label  class="layui-form-label"></label>
                <button class="layui-btn" lay-filter="add" lay-submit="">修改</button></div>
        </form>
    </div>
</div>
<script>layui.use(['form', 'layer'],
    function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            // nikename: function(value) {
            //     if (value.length < 5) {
            //         return '昵称至少得5个字符啊';
            //     }
            // },
            // pass: [/(.+){6,12}$/, '密码必须6到12位'],
            // repass: function(value) {
            //     if ($('#L_pass').val() != $('#L_repass').val()) {
            //         return '两次密码不一致';
            //     }
            // }
        });

        //监听提交
        form.on('submit(add)',
            function(data) {
                console.log(data);
                //发异步，把数据提交给php
                $.post("/newsWeb/editNewsUserServlet",{"id":$("#edit_id").val(),
                                                        "name":$("#name").val(),
                                                        "email":$("#email").val(),
                                                        "phone":$("#phone").val(),
                                                        "age":$("#age").val(),
                                                        "signature":$("#signature").val()},function (data) {
                    layer.msg(data);
                })
                layer.alert("修改成功", {
                        icon: 6
                    },
                    function() {
                        // 获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //关闭当前frame
                        parent.layer.close(index);
                    });
                return false;
            });

    });</script>
<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>

</html>
