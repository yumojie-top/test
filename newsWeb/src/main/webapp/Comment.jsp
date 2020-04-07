<%--
  Created by IntelliJ IDEA.
  User: 余海浪
  Date: 2019/10/30
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <div style="color: red;">网友热评：</div>
    <ol id="comment_list" class="commentlist">
        <c:forEach items="${newsComment}" var="comment">
            <li class="comment-content"><span class="comment-f">${comment.floor}楼
            </span><div class="comment-main">
                <p><a class="address" href="#" rel="nofollow" target="_blank">用户名
                </a><span class="time">(2016/10/28 11:41:03)</span><br>${comment.comment}
                </p></div></li>
        </c:forEach>
    </ol>

</body>
</html>
