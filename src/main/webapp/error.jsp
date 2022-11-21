<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 21/11/2022
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="error" scope="request" type="java.lang.String"/>
<html>
<head>
  <title>Error</title>
  <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-info">
  <div class="h-100 w-100 d-flex flex-column justify-content-center">
    <h1 class="text-center">
    <c:out value="${error}"/></h1>
    <div class="d-flex w-100 justify-content-center">
      <a href="${pageContext.request.contextPath}/login" class="btn btn-secondary">Login</a>
    </div>
  </div>
</body>
</html>
