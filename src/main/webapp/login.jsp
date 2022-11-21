<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 16/11/2022
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/" method="post">
    <label for="email"></label>
    <input type="email" name="email" id="email">
    <label for="password"></label>
    <input type="password" name="password" id="password">
    <button type="submit">Login</button>
  </form>
</body>
</html>
