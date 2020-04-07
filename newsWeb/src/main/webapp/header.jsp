<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/22
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="404.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

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


</body>
</html>
