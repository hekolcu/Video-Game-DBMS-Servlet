<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 16/11/2022
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
  <title>Login</title>
  <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-info">
  <div class="d-flex flex-column justify-content-center h-100">
    <div class="d-flex flex-row justify-content-center">
      <div class="card" style="width: 18rem;">
        <%--  <img src="..." class="card-img-top" alt="...">--%>
        <div class="card-body">
          <h5 class="card-title">Login</h5>
          <form action="${pageContext.request.contextPath}/login" method="post" class="">
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" name="email" id="email" class="form-control">
            </div>
            <br>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" name="password" id="password" class="form-control">
            </div>
            <br>
            <div class="d-flex flex-column justify-content-center">
              <button type="submit" class="btn btn-primary">Login</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
