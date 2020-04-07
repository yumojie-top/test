<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/8
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="404.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link href="css/uploading.css">
    <title>Fixed Top Navbar Example for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    <!-- Custom styles for this template -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]-->
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <!--[endif]-->

    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        #upload_D {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: none;
        }

        #upload_D > .upload_frame {
            width: 666px;
            height: 634px;
            background: #FFFFFF;
            border-radius: 10px;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            overflow: hidden;
        }

        #upload_D > .upload_frame > .upload_title {
            padding: 28px 46px 28px 46px;
            border-bottom: 1px solid #e7e7e7;
            overflow: hidden;
        }

        #upload_D > .upload_frame > .upload_title > .upload_title_left {
            float: left;
            line-height: 24px;
            font-size: 18px;
        }

        #upload_D > .upload_frame > .upload_title > .upload_title_right {
            float: right;
            cursor: pointer;
        }

        #upload_D > .upload_frame > .upload_fileBtn {
            padding: 24px 46px;
            line-height: 34px;
            font-size: 16px;
        }

        #upload_D > .upload_frame > .upload_fileBtn > input {
            display: none;
        }

        #upload_D > .upload_frame > .upload_fileBtn > label {
            display: inline-block;
            width: 88px;
            height: 34px;
            text-align: center;
            border-radius: 5px;
            background: #ff5757;
            margin-left: 22px;
            color: #FFFFFF;
        }

        #upload_D > .upload_frame > .upload_content {
            padding: 0 46px;
        }

        #upload_D > .upload_frame > .upload_content > #clipArea {
            width: 388px;
            height: 388px;
            float: left;
            margin-left: 20px;
        }

        #upload_D > .upload_frame > .upload_content .upload_content_right {
            float: right;
            width: 120px;
            margin-right: 20px;
            text-align: center;
        }

        #upload_D > .upload_frame > .upload_content .upload_content_right .upload_view {
            width: 120px;
            height: 120px;
            border-radius: 50%;
        }

        #upload_D > .upload_frame > .upload_content .upload_content_right #clipBtn {
            width: 90px;
            height: 34px;
            border: none;
            outline: none;
            border-radius: 5px;
            background: #FF5757;
            color: #FFFFFF;
            margin-top: 16px;
        }
        #upload_D > .upload_frame > .upload_content .upload_content_right #headClick{
            width: 90px;
            height: 34px;
            border: none;
            outline: none;
            border-radius: 5px;
            background: #FF5757;
            color: #FFFFFF;
            margin-top: 20px;
        }

        #upload_D > .upload_frame > .upload_content .upload_content_right label {
            display: block;
            margin-top: 14px;
            font-size: 16px;
            color: #666666;
        }

        #view {
            width: 60px;
            height: 60px;
            border-radius: 50%;
        }
    </style>
    <style>
        body {
            background-color: lightcyan
        }
    </style>
</head>

<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">个人中心</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">个人中心</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">个人中心</a></li>
                <li><a href="#about">个人中心 </a></li>
                <li><a href="index.jsp">主页</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">${newsUserEmail} <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
                <li class="active"><a href="userExitServlet">退出账号 <span class="sr-only">(current)</span></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <br>
    <br>
    <br>

    <!-- Main component for a primary marketing message or call to action -->
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <img style="margin-top: 12px;width: 200px;height: 200px;border: 1px solid #46b8da" class="img-circle" id="headPortrait"  src="file/${upc.headPortrait}" ;
                         alt="用户头像">
                    <div class="caption" style="text-align: center">
                        <h4>${upc.name}</h4>
                        <p><%--<a href="#" class="btn btn-primary" role="button">查看更多</a>--%>
                            <a href="#" id="open" class="btn btn-primary" role="button">
                                修改头像

                            </a></p>
                        <form  action="setHeadPortraitServlet" id="headSubmit" method="post" enctype="multipart/form-data">
                            <div id="upload_D" style="z-index: 9999">
                                <div class="upload_frame">
                                    <div class="upload_title">
                                        <span class="upload_title_left">请选择图片</span>
                                        <span class="upload_title_right"><img src="images/x.jpg"></span>
                                    </div>
                                    <div class="upload_fileBtn">
                                        图片上传
                                        <input type="file" name="HeadPortrait" id="file"/>
                                        <label for="file">选择图片</label>
                                    </div>
                                    <div class="upload_content">
                                        <div id="clipArea"></div>
                                        <div class="upload_content_right">
                                            <p class="upload_view"></p>
                                            <span class="btn btn-danger" type="button" id="clipBtn" >保存修改</span>
                                            <input type="submit" class="btn btn-danger" id="headClick">
                                            <label for="file">重新选图片</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>


                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="thumbnail">
                    <div class="caption" style="text-align: center">
                        <table class="table table-bordered">
                            <thead>个人资料</thead>
                            <tr>
                                <td>昵称</td>
                                <td>${upc.name}</td>
                            </tr>
                            <tr>
                                <td>年龄</td>
                                <td>${upc.age}</td>
                            </tr>
                            <tr>
                                <td>生日</td>
                                <td>${upc.birthday}</td>
                            </tr>
                            <tr>
                                <td>邮箱</td>
                                <td>${newsUserEmail}</td>
                            </tr>
                            <tr>
                                <td>性别</td>
                                <td>${upc.gender}</td>
                            </tr>
                            <tr>
                                <td>个性签名</td>
                                <td>${upc.signature}</td>
                            </tr>
                        </table>
                        <a href="showPersonalDataServlet" class="btn btn-primary" role="button">修改个人资料</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <div class="caption" style="text-align: center">
                        <h3>快速通道</h3>
                        <div class="list-group">
                            <a href="#" class="list-group-item active">
                                修改密码
                            </a>
                            <a href="#" class="list-group-item">手机号</a>
                            <a href="#" class="list-group-item">账号注销</a>
                            <a href="#" class="list-group-item">身份认证</a>
                            <a href="#" class="list-group-item">帮助中心</a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="thumbnail">
                    <div class="caption" style="text-align: center">
                        <h3>我的评价</h3>


                        <p><a href="#" class="btn btn-primary" role="button">上一页</a> <a href="#" class="btn btn-default"
                                                                                        role="button">下一页</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="thumbnail">
                    <div class="caption" style="text-align: center">
                        <h3>我的收藏</h3>


                        <p><a href="#" class="btn btn-primary" role="button">上一页</a> <a href="#" class="btn btn-default"
                                                                                        role="button">下一页</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>

</div> <!-- /container -->

<div class="container-fluid" style="background-color: #FFFFFF;text-align: center">
    <p>www.yumojie.top <a href="http://www.cssmoban.com/" target="_blank" title="小余新闻">小余新闻</a> - XIAOYU NEWS <a
            href="http://www.yumojie.top/" title="小余新闻" target="_blank">有你所想</a></p>
</div>
<div id="gotop"><a class="gotop"></a></div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.js"></script>
<script src="js/iscroll-zoom.js"></script>
<script src="js/hammer.js"></script>
<script src="js/lrz.all.bundle.js"></script>
<script src="js/jquery.photoClip.min.js"></script>
<script src="js/uploading.js"></script>

<script>

    $(function () {
        $("#headSubmit").submit(function () {
            var file = $("#file").val();
            if (!file){
                alert("请选择图片");
                return false;

            }

            return true;
        });


    });

</script>
</body>
</html>
