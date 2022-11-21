<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 21/11/2022
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout Successful</title>
    <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-info">
  <div class="h-100 w-100 d-flex flex-column justify-content-center">
      <h1 class="text-center">Logged Out</h1>
      <div class="d-flex w-100 justify-content-center">
          <a href="${pageContext.request.contextPath}/login" class="btn btn-secondary">Login</a>
      </div>
  </div>
</body>
</html>
