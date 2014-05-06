<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 14-3-2
  Time: 下午4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv='refresh' content='<c:out value="${message.time}" default="3"/>;url=${pageContext.request.contextPath}<c:out value="${message.uri}" default="/index"/>' />
    <title>网站全局消息页面</title>
</head>
<body>
    ${message.message}
</body>
</html>
