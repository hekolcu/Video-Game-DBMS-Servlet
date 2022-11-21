<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 16/11/2022
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-info">
    <div class="d-flex flex-column justify-content-center h-100">
        <div class="d-flex flex-row justify-content-center">
            <div class="card" style="width: 18rem;">
                <%--        <img src="..." class="card-img-top" alt="...">--%>
                <div class="card-body">
                    <h5 class="card-title">Register</h5>
                    <p class="card-text">Enter details below to register!</p>
                    <form>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name"/>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" readonly placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="password-reentered">Password</label>
                            <input type="password" class="form-control" id="password-reentered" readonly placeholder="Re-Enter Password">
                        </div>
                        <br>
                        <a href="${pageContext.request.contextPath}/games" class="btn btn-secondary">Cancel</a>
                        <button type="submit" class="btn btn-danger">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
