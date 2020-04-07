<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/9/28
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>show</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="/newsWeb/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/newsWeb/css/nprogress.css">
    <link rel="stylesheet" type="text/css" href="/newsWeb/css/style.css">
    <link rel="stylesheet" type="text/css" href="/newsWeb/css/font-awesome.min.css">
    <link rel="apple-touch-icon-precomposed" href="/newsWeb/images/icon.png">
    <link rel="shortcut icon" href="/newsWeb/images/favicon.ico">
    <script src="/newsWeb/js/jquery-2.1.4.min.js"></script>
    <script src="/newsWeb/js/nprogress.js"></script>
    <script src="/newsWeb/js/jquery.lazyload.min.js"></script>
    <!--[if gte IE 9]>
    <script src="/newsWeb/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="/newsWeb/js/html5shiv.min.js" type="text/javascript"></script>
    <script src="/newsWeb/js/respond.min.js" type="text/javascript"></script>
    <script src="/newsWeb/js/selectivizr-min.js" type="text/javascript"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script>window.location.href='upgrade-browser.html';</script>
    <![endif]-->
</head>
<body class="user-select single">

<header class="header">
    <nav class="navbar navbar-default" id="navbar">
        <div class="container">
            <div class="header-topbar hidden-xs link-border">
                <ul class="site-nav topmenu">
                    <li><c:if test="${newsUserName!=null}">${newsUserName}</c:if><c:if test="${newsUserName==null}"><a
                            href="login.jsp" id="displaysign" target="_blank">登录</a></c:if></li>
                    <li><a href="register.jsp" rel="nofollow" target="_blank">注册</a></li>
                    <li><c:if test="${newsUserEmail!=null}"><a href="getUserPersonalCenterServlet" title="个人中心"
                                                               target="_blank">
                        <i class="fa fa-rss">
                        </i> 个人中心
                    </a></c:if></li>
                </ul>
                实时新闻,实时更新
            </div>

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#header-navbar" aria-expanded="false"><span class="sr-only"></span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                <h1 class="logo hvr-bounce-in"><a href="#" title="小余新闻网"><img src="/newsWeb/images/201610171329086541.png"
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
                    <li><a data-cont="体育" title="体育" href="../sports.jsp">体育</a></li>
                    <li><a data-cont="娱乐" title="娱乐" href="../recreation.jsp">娱乐</a></li>
                    <li><a data-cont="汽车" title="汽车" href="../automobile.jsp">汽车</a></li>
                    <li><a data-cont="房产" title="房产" href="../house.jsp">房产</a></li>
                    <li><a data-cont="科技" title="科技" href="../science.jsp">科技</a></li>
                    <li><a data-cont="财经" title="财经" href="../finance.jsp">财经</a></li>
                    <li><a data-cont="军事" title="军事" href="../military.jsp">军事</a></li>
                    <li><a data-cont="热点" title="热点" href="../hotspot.jsp">热点</a></li>
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
    <div class="content-wrap">
        <div class="content">
            <header class="article-header">
                <h1 class="article-title"><a href="#" title="${newsContent.head}" >${newsContent.head}</a></h1>
                <div class="article-meta"> <span class="item article-meta-time">
	  <time class="time" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="发表时间：${newsContent.add_time}"><i class="glyphicon glyphicon-time"></i>${newsContent.add_time}</time>
	  </span> <span class="item article-meta-source" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="来源：新浪"><i class="glyphicon glyphicon-globe"></i> ${newsContent.type}</span> <span class="item article-meta-category" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="${newsContent.type}"><i class="glyphicon glyphicon-list"></i> <a href="#" title="国家" >国家</a></span> <span class="item article-meta-views" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="浏览量：${newsContent.page_view}"><i class="glyphicon glyphicon-eye-open"></i> ${newsContent.page_view}</span> <span class="item article-meta-comment" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="评论量"><i class="glyphicon glyphicon-comment"></i> 4</span> </div>
            </header>
            <article class="article-content">
               ${newsContent.content}


            <%--                <pre class="prettyprint lang-cs">代码示例：--%>
<%--	public static double JieCheng(int number)--%>
<%--	{--%>
<%--		if (number == 0)--%>
<%--		{--%>
<%--			return 0;--%>
<%--		}--%>

<%--		//初始值必须设置为1--%>
<%--		double result = 1;--%>

<%--		for (int i = number; i &gt;= 1; i--)--%>
<%--		{--%>
<%--			result = result*i;--%>
<%--		}--%>
<%--		return result;--%>
<%--	}</pre>--%>
                <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a></div>

                <script>                  window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "1", "bdSize": "32" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=0.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
            </article>
            <div class="article-tags">标签：<a href="#list/2/" rel="tag" >热点</a><a href="#list/3/" rel="tag" >实时</a><a href="#list/4/" rel="tag" >国家</a><a href="#list/5/" rel="tag" >外交</a>
            </div>
            <div class="relates">
                <div class="title">
                    <h3>相关推荐</h3>
                </div>
                <ul>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                    <li><a href="#" title="" >习近平寄语“中国新名片” -热点</a></li>
                </ul>
            </div>
            <div class="title" id="comment">
                <h3>评论</h3>
            </div>
            <div id="respond">
                <form id="comment-form" name="comment-form" action="" method="POST">
                    <div class="comment">
                           <div class="comment-box">
                            <textarea placeholder="您的评论或留言（必填）" name="comment-textarea" id="comment-textarea" cols="100%" rows="3" tabindex="3"></textarea>
                            <div class="comment-ctrl">
                                <div class="comment-prompt" style="display: none;"> <i class="fa fa-spin fa-circle-o-notch"></i> <span class="comment-prompt-text">评论正在提交中...请稍后</span> </div>
                                <div class="comment-success" style="display: none;"> <i class="fa fa-check"></i> <span class="comment-prompt-text">评论提交成功...</span> </div>
                                <button type="submit" name="comment-submit" id="comment-submit" tabindex="4">评论</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <div id="postcomments">
                <ol id="comment_list" class="commentlist">
                    <li class="comment-content"><span class="comment-f">#2</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">木庄网络博客</a><span class="time">(2016/10/28 11:41:03)</span><br>不错的网站主题，看着相当舒服</p></div></li>
                    <li class="comment-content"><span class="comment-f">#1</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">木庄网络博客</a><span class="time">(2016/10/14 21:02:39)</span><br>博客做得好漂亮哦！</p></div></li></ol>
            </div>
        </div>
    </div>
    <aside class="sidebar">
        <div class="fixed">
            <div class="widget widget-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" draggable="false">统计信息</a></li>
                    <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" draggable="false">联系站长</a></li>
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
                            <a href="" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title="" draggable="false" data-original-title="QQ:577211782">577211782</a>
                        </h2>
                        <h2>Email:
                            <a href="mailto:577211782@qq.com" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title="" draggable="false" data-original-title="Email:577211782@qq.com">577211782@qq.com</a></h2>
                    </div>
                </div>
            </div>
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
            <h3>最新评论文章</h3>
            <ul>
                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>


                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>


                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>


                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>


                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>


                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>


                <li><a title="习近平寄语“中国新名片”" href="show.jsp"><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg"
                     alt="习近平寄语“中国新名片" style="display: block;">
			</span><span class="text">习近平寄语“中国新名片”</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>

            </ul>
        </div>
        <div class="widget widget_sentence">

            <a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
                <img style="width: 100%" src="images/ad.jpg" alt="MZ-NetBlog主题" ></a>

        </div>
        <div class="widget widget_sentence">

            <a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
                <img style="width: 100%" src="images/201610181739277776.jpg" alt="专业网站建设" ></a>

        </div>
    </aside>
</section>
<footer class="footer">
    <div class="container">
        <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </p>
    </div>
    <div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="/newsWeb/js/bootstrap.min.js"></script>
<script src="/newsWeb/js/jquery.ias.js"></script>
<script src="/newsWeb/js/scripts.js"></script>
</body>
</html>

