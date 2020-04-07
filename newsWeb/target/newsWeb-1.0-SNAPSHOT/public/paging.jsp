<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/28
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="/newsWeb/css/bootstrap.min.css">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<nav aria-label="Page navigation">
    <ul class="pagination">
        <c:if test="${USERPAGING.currentPage==1}">
        <li class="disabled">
            <a href="${pageContext.request.contextPath}/${USERPAGING.url}?currentPage=1&url=${USERPAGING.url}"
               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
            </c:if>
            <c:if test="${USERPAGING.currentPage!=1}">
        <li>
            <a href="${pageContext.request.contextPath}/${USERPAGING.url}?currentPage=${USERPAGING.currentPage-1}&url=${USERPAGING.url}"
               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
            </c:if>


        <c:forEach begin="${USERPAGING.startPage}" end="${USERPAGING.endPage}" var="pageNum">


            <c:if test="${USERPAGING.currentPage==pageNum}">
                <li class="active"><a
                        href="${pageContext.request.contextPath}/${USERPAGING.url}?currentPage=${pageNum}&url=${USERPAGING.url}">${pageNum}</a>
                </li>

            </c:if>
            <c:if test="${USERPAGING.currentPage != pageNum }">
                <li>
                    <a href="${pageContext.request.contextPath}/${USERPAGING.url}?currentPage=${pageNum}&url=${USERPAGING.url}">${pageNum}</a>
                </li>

            </c:if>

        </c:forEach>

        <c:if test="${USERPAGING.currentPage<USERPAGING.totalPage}">
            <li>
                <a href="${pageContext.request.contextPath}/${USERPAGING.url }?currentPage=${USERPAGING.currentPage+1}&url=${USERPAGING.url}"
                   aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                </a></li>
        </c:if>

        <c:if test="${USERPAGING.currentPage>=USERPAGING.totalPage}">
            <%-- 尾页不可点击 --%>
            <li class="disabled"><a
                    href="${pageContext.request.contextPath}/${USERPAGING.url }?currentPage=${USERPAGING.totalPage}&url=${USERPAGING.url}"
                    aria-label="Next"> <span aria-hidden="true">&raquo;</span>
            </a></li>
        </c:if>

        <span style="font-size: 25px; margin-left: 5px;">共${USERPAGING.totalNumber}条记录,共${USERPAGING.totalPage}页</span>
    </ul>
</nav>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="/newsWeb/js/jquery-2.1.4.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="/newsWeb/js/bootstrap.min.js"></script>
</body>
</html>

