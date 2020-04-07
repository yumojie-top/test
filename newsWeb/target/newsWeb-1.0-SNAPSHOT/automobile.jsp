<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="404.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>汽车</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
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

    <link rel="stylesheet" href="css/sign.css">
    <script src="js/signformchange.js"></script>

</head>
<body class="user-select">
<%@include file="header.jsp"%>
<section class="container">
    <div class="content-wrap">
        <div class="content">
            <div id="focusslide" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#focusslide" data-slide-to="0" class="active"></li>
                    <li data-target="#focusslide" data-slide-to="1"></li>
                    <li data-target="#focusslide" data-slide-to="2"></li>
                </ol>
                <div  style="max-height: 450px" class="carousel-inner" role="listbox">
                    <div class="item active">
                        <a href="#" target="_blank" title="汽车新闻" >
                            <img src="images/1234.jpg" alt="汽车新闻" class="img-responsive"></a>
                    </div>

                    <div class="item">
                        <a href="#" target="_blank" title="汽车新闻" >
                            <img src="images/1234.jpg" alt="汽车新闻" class="img-responsive"></a>
                    </div>

                    <div class="item">
                        <a href="#" target="_blank" title="汽车新闻" >
                            <img src="images/1234.jpg" alt="汽车新闻" class="img-responsive"></a>
                    </div>

                </div>
                <a class="left carousel-control" href="#focusslide" role="button" data-slide="prev" rel="nofollow"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">上一个</span> </a> <a class="right carousel-control" href="#focusslide" role="button" data-slide="next" rel="nofollow"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">下一个</span> </a> </div>

            <h3>今日推荐</h3>
            <article class="excerpt-minic excerpt-minic-index">
                <h2><span class="red">【今日推荐】</span><a target="_blank" href="#" title="习近平寄语“中国新名片”" >习近平寄语“中国新名片”</a>
                </h2>
                <p class="note">9月25日上午，北京大兴国际机场投运仪式举行。习近平总书记出席仪式并宣布：“北京大兴国际机场正式投运！”

                    伟大的时代创造伟大的工程，伟大的工程反映伟大的时代。党的十八大以来，C919大型客机飞上蓝天，港珠澳大桥主体工程全线贯通，复兴号奔驰在祖国广袤的大地上.......一项项民生工程顺利落地，正如习近平所言，“中国制造、中国创造、中国建造共同发力，继续改变着中国的面貌。”</p>
            </article>
            <article class="excerpt-minic excerpt-minic-index">
                <h2><span class="red">【今日推荐】</span><a target="_blank" href="#" title="10连胜 中国女排提前一轮卫冕世界冠军" >10连胜 中国女排提前一轮卫冕世界冠军</a>
                </h2>
                <p class="note">奋勇拼搏的中国女排姑娘们，收获了最甜美的回报。

                    　　9月28日，在女排世界杯倒数第二轮比赛中，

                    　　中国女排3比0击败塞尔维亚，迎来10连胜的同时，提前一轮锁定世界杯冠军，成功实现卫冕。</p>
            </article>
            <article class="excerpt-minic excerpt-minic-index">
                <h2><span class="red">【今日推荐】</span><a target="_blank" href="#" title="用DTcms做一个独立博客网站（响应式模板）" >用DTcms做一个独立博客网站（响应式模板）</a>
                </h2>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <div class="title">
                <h3>热点新闻</h3>
                <div class="more">
                    <a href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题</a>
                    <a href="#" title="IT技术笔记" >IT技术笔记</a>
                    <a href="#" title="源码分享" >源码分享</a>
                    <a href="#" title="靠谱网赚" >靠谱网赚</a>
                    <a href="#" title="资讯分享" >资讯分享</a>
                </div>
            </div>
            <article class="excerpt excerpt-1" style="">
                <a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" ><img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: inline;"></a>
                <header><a class="cat" href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题<i></i></a>
                    <h2><a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" >用DTcms做一个独立博客网站（响应式模板）</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                    <span class="views"><i class="glyphicon glyphicon-eye-open"></i> 216</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a>
                </p>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <article class="excerpt excerpt-2" style=""><a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" ><img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: inline;"></a>
                <header><a class="cat" href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题<i></i></a>
                    <h2><a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" >用DTcms做一个独立博客网站（响应式模板）</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                    <span class="views"><i class="glyphicon glyphicon-eye-open"></i>216</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i>4</a>
                </p>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <article class="excerpt excerpt-3" style=""><a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" ><img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: inline;"></a>
                <header><a class="cat" href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题<i></i></a>
                    <h2><a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" >用DTcms做一个独立博客网站（响应式模板）</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                    <span class="views"><i class="glyphicon glyphicon-eye-open"></i> 216</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a>
                </p>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <article class="excerpt excerpt-4" style=""><a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" ><img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: inline;"></a>
                <header><a class="cat" href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题<i></i></a>
                    <h2><a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" >用DTcms做一个独立博客网站（响应式模板）</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                    <span class="views"><i class="glyphicon glyphicon-eye-open"></i> 216</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a>
                </p>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <article class="excerpt excerpt-5" style=""><a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" ><img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: inline;"></a>
                <header><a class="cat" href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题<i></i></a>
                    <h2><a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" >用DTcms做一个独立博客网站（响应式模板）</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                    <span class="views"><i class="glyphicon glyphicon-eye-open"></i> 216</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a>
                </p>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <nav class="pagination" style="display: none;">
                <ul>
                    <li class="prev-page"></li>
                    <li class="active"><span>1</span></li>
                    <li><a href="?page=2">2</a></li>
                    <li class="next-page"><a href="?page=2">下一页</a></li>
                    <li><span>共 2 页</span></li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
    <aside class="sidebar">
        <div class="fixed">

            <!-- 个人记录 -->
            <div class="widget widget-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >统计信息</a></li>
                    <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >联系站长</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane contact active" id="notice1">
                        <h2>今日浏览:
                            888篇
                        </h2>
                        <h2>历史浏览:
                            <span id="sitetime1">88天 </span></h2>
                    </div>
                    <div role="tabpanel" class="tab-pane contact" id="contact1">
                        <h2>QQ:
                            <a href="" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title=""  data-original-title="QQ:"></a>
                        </h2>
                        <h2>Email:
                            <a href="#" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title=""  data-original-title="#"></a></h2>
                    </div>
                </div>
            </div>

            <!-- 广告位 -->

            <div class="widget widget-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >统计信息</a></li>
                    <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >联系站长</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane contact active" id="notice">
                        <h2>日志总数:
                            888篇
                        </h2>
                        <h2>网站运行:
                            <span id="sitetime">88天 </span></h2>
                    </div>
                    <div role="tabpanel" class="tab-pane contact" id="contact">
                        <h2>QQ:
                            <a href="" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title=""  data-original-title="QQ:"></a>
                        </h2>
                        <h2>Email:
                            <a href="#" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title=""  data-original-title="#"></a></h2>
                    </div>
                </div>
            </div>
            <!-- 搜索 -->
            <div class="widget widget_search">
                <form class="navbar-form" action="/Search" method="post">
                    <div class="input-group">
                        <input type="text" name="keyword" class="form-control" size="35" placeholder="请输入关键字" maxlength="15" autocomplete="off">
                        <span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
                </form>
            </div>
        </div>
        <div class="widget widget_hot">
            <h3>最多订阅文章</h3>
            <ul>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
                <li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>

            </ul>
        </div>
        <div class="widget widget_sentence">
            <a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
                <img style="width: 100%" src="images//201610241224221511.jpg" alt="专业网站建设" ></a>
        </div>
        <div class="widget widget_sentence">
            <a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
                <img style="width: 100%" src="images/ad.jpg" alt="MZ-NetBlog主题" ></a>
        </div>
        <div class="widget widget_sentence">
            <h3>最新资讯</h3>
            <div class="widget-sentence-link">
                <a href="#" title="网站建设" target="_blank" >网站建设</a>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </aside>
</section>
<footer class="footer">
    <div class="container">
        <p>www.yumojie.top <a href="http://www.cssmoban.com/" target="_blank" title="小余新闻">小余新闻</a> - XIAOYU NEWS <a href="http://www.yumojie.top/" title="小余新闻" target="_blank">有你所想</a></p>
    </div>
    <div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.ias.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>

