<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/29
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/newsWeb/admin/css/font.css">
    <link rel="stylesheet" href="/newsWeb/admin/css/xadmin.css">
    <script type="text/javascript" charset="utf-8" src="http://localhost/newsWeb/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="http://localhost/newsWeb/ueditor/ueditor.all.min.js"> </script>
    <!-- 语言文件 -->
    <script type="text/javascript" charset="utf-8" src="http://localhost/newsWeb/ueditor/lang/zh-cn/zh-cn.js"></script>

    <script type="text/javascript" src="/newsWeb/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/newsWeb/admin/js/xadmin.js"></script>
    <script type="text/javascript" src="/newsWeb/js/jquery-2.1.4.min.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--></head>

<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>导航元素</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:history.back(-1)" title="返回上一级">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row">
        <form action="/newsWeb/updateNewsServlet"  method="post" enctype="multipart/form-data" class="layui-form layui-form-pane">
            <input style="display: none" name="ID" value="${NEWSUPDATE.n_id}">
            <div class="layui-form-item">
                <label  for="head" class="layui-form-label">
                    <span class="x-red">*</span>新闻标题
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="head" value="${NEWSUPDATE.head}" name="head" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
            </div>

            <div class="layui-form-item">
                <label for="head_text" class="layui-form-label">
                    <span  class="x-red" title="简介" >*</span>简介
                </label>
                <div class="layui-input-block">
                    <input type="text" value="${NEWSUPDATE.head_text}" id="head_text" name="head_text" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
            </div>

            <div class="layui-form-item">
                <label for="head" class="layui-form-label">
                    <span class="x-red">*</span>主页封面
                </label>

                <div class="layui-input-inline">
                    <input type="file" name="file"  id="test1" value="选择图片"/>

                </div>
            </div>

            <div  style="z-index: 9999;" class="layui-col-md12" >
                <label for="type" class="layui-form-label">
                    <span class="x-red">*</span>新闻类型</label>
                <div  class="layui-input-inline">

                    <select id="type" name="type" lay-verify="">
                        <option value="体育">体育</option>
                        <option value="娱乐">娱乐</option>
                        <option value="财经">财经</option>
                        <option value="军事">军事</option>
                        <option value="科技">科技</option>
                        <option value="热点">热点</option>
                        <option value="房产">房产</option>
                        <option value="汽车">汽车</option>
                    </select>
                </div>
            </div>

            <script>

                $(function () {
                    $(function(){
                        $("#type").val('${NEWSUPDATE.type}');
                    });
                });

            </script>


            <div style="margin-top: 100px;z-index: 1;" >

                    <textarea id="container" name="content"  style="margin: 0 auto;width: 100%;height:600px;">
                        ${NEWSUPDATE.content}
                    </textarea>
            </div>


            <script type="text/javascript">
                var ue = UE.getEditor("container");
            </script>

            <div style="text-align: center" class="layui-col-md12">

                <button type="submit" class="layui-btn layui-btn-lg" lay-filter="add" lay-submit="/newsWeb/addNewsServlet">提交</button>
            </div>
        </form>
    </div>
</div>
<script>



    layui.use(['form', 'layer'], function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;
    });

    //自定义验证规则
    // form.verify({
    //     nikename: function(value) {
    //         if (value.length < 5) {
    //             return '昵称至少得5个字符啊';
    //         }
    //     },
    //     pass: [/(.+){6,12}$/, '密码必须6到12位'],
    //     repass: function(value) {
    //         if ($('#L_pass').val() != $('#L_repass').val()) {
    //             return '两次密码不一致';
    //         }
    //     }
    // });





    //监听提交
    //     form.on('submit(add)',
    //     function(data) {
    //         data.field.shstate = 1;
    //         console.log(data);
    //         $.ajax({type:'post',method:'post',enctype:'multipart/form-data', url:'/newsWeb/addNewsServlet',data:data.field,success:function (data) {
    //                 alert("成功");
    //             }
    //         });
    //         layer.alert("增加成功", {
    //             icon: 6
    //         },
    //         function() {
    //             // 获得frame索引
    //             var index = parent.layer.getFrameIndex(window.name);
    //             //关闭当前frame
    //             parent.layer.close(index);
    //         });
    //         return false;
    //     });
    //

</script>
<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>

</html>
