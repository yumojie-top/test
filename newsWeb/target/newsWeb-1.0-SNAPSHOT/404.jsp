<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>404错误！很抱歉，您要找的页面不存在</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/nprogress.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="apple-touch-icon-precomposed" href="images/icon.png">
    <link rel="shortcut icon" href="images/favicon.ico">
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/nprogress.js"></script>
    <script src="js/jquery.lazyload.min.js"></script>
    <!--[if gte IE 9]>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/html5shiv.min.js" type="text/javascript"></script>
    <script src="js/respond.min.js" type="text/javascript"></script>
    <script src="js/selectivizr-min.js" type="text/javascript"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script>window.location.href='upgrade-browser.html';</script>
    <![endif]-->
    <style type="text/css">
        .panel
        {
            padding: 80px 20px 0px;
            min-height: 400px;
            cursor: default;
        }
        .text-center
        {
            margin: 0 auto;
            text-align: center;
            border-radius: 10px;
            max-width: 900px;
            -moz-box-shadow: 0px 0px 5px rgba(0,0,0,.3);
            -webkit-box-shadow: 0px 0px 5px rgba(0,0,0,.3);
            box-shadow: 0px 0px 5px rgba(0,0,0,.1);
        }
        .float-left
        {
            float: left !important;
        }
        .float-right
        {
            float: right !important;
        }
        img
        {
            border: 0;
            vertical-align: bottom;
        }
        h2
        {
            padding-top: 20px;
            font-size: 20px;
        }
        .padding-big
        {
            padding: 20px;
        }
        .alert
        {
            border-radius: 5px;
            padding: 15px;
            border: solid 1px #ddd;
            background-color: #f5f5f5;
        }
    </style>

</head>
<body class="user-select">
<header class="header">
    <nav class="navbar navbar-default" id="navbar">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#header-navbar" aria-expanded="false"><span class="sr-only"></span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                <h1 class="logo hvr-bounce-in"><a href="#" title="小余新闻网"><img src="images/201610171329086541.png"
                                                                              alt="小余新闻网"></a></h1>
            </div>
            <div class="collapse navbar-collapse" id="header-navbar">
                <form class="navbar-form visible-xs" action="/Search" method="post">
                    <div class="input-group">
                        <input type="text" name="keyword" class="form-control" placeholder="请输入关键字" maxlength="20"
                               autocomplete="off">
                        <span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span></div>
                </form>
                <ul class="nav navbar-nav navbar-right">

                    <li><a style="color: #337ab7;" data-cont="小余新闻网" title="小余新闻网" href="index.jsp">首页</a></li>
                    <li><a data-cont="体育" title="体育" href="sports.jsp">体育</a></li>
                    <li><a data-cont="娱乐" title="娱乐" href="recreation.jsp">娱乐</a></li>
                    <li><a data-cont="汽车" title="汽车" href="automobile.jsp">汽车</a></li>
                    <li><a data-cont="房产" title="房产" href="house.jsp">房产</a></li>
                    <li><a data-cont="科技" title="科技" href="science.jsp">科技</a></li>
                    <li><a data-cont="财经" title="财经" href="finance.jsp">财经</a></li>
                    <li><a data-cont="军事" title="军事" href="military.jsp">军事</a></li>
                    <li><a data-cont="热点" title="热点" href="hotspot.jsp">热点</a></li>
                    <li>

                        <script>

                            function clickListA(li) {

                            }

                        </script>

                        <form style="margin-top: 15px" class="navbar-form" action="/Search" method="post">
                            <div class="input-group">
                                <input type="text" name="keyword" class="form-control" size="35" placeholder="请输入关键字"
                                       maxlength="15" autocomplete="off">
                                <span class="input-group-btn">
					<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
				</span>
                            </div>
                        </form>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>
<section class="container">
    <div class="panel">
        <div class="text-center">
            <h2 style="color: red"><stong>${upcEmptyError}</stong></h2>
            <h2><stong>404错误！很抱歉，您要找的页面不存在</stong></h2>
            <div class="padding-big"> <a href="index.jsp" class="btn btn-primary" >返回首页</a>
            </div>
            <div class="padding-big"> <a href="#" title="用DTcms做一个独立博客网站（响应式模板）" >用DTcms做一个独立博客网站（响应式模板）</a>
            </div>
            <div class="padding-big"> <a href="#" title="MZ-NetBolg主题" >MZ-NetBolg主题栏目</a>
            </div>
        </div>
    </div>
</section>
<footer class="footer">
    <div class="container">
        <p>www.yumojie.top <a href="http://www.yumojie.top/LoginForm/index.jsp" target="_blank" title="小余新闻">小余新闻</a> - XIAOYU NEWS <a href="http://www.yumojie.top/" title="小余新闻" target="_blank">有你所想</a></p>    </div>
    <div id="gotop" style="display: block;"><a class="gotop" ></a>
    </div>
</footer>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.ias.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>
