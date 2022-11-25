<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 21/11/2022
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" scope="session" type="vga.videogamesjsp_app.model.User"/>
<html>
<head>
    <title>Profile - <c:out value="${sessionScope.user.name}" /></title>
    <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/jquery-dev.js"></script>
</head>
<body class="bg-dark h-100">
    <c:import url="navbar.jsp"/>
    <div class="d-flex flex-column justify-content-center h-75">
        <div class="d-flex flex-row justify-content-center">
            <div class="card" style="width: 18rem;">
        <%--        <img src="..." class="card-img-top" alt="...">--%>
                <div class="card-body">
                    <h5 class="card-title">Profile</h5>
<%--                    <p class="card-text"></p>--%>
                    <form>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" readonly value="<c:out value="${user.name}" />">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" readonly value="<c:out value="${user.email}" />">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" readonly placeholder="Password">
                        </div>
                        <div class="d-flex flex-row justify-content-between mt-2">
                            <button type="button" class="btn btn-secondary" id="editBtn">Edit</button>
                            <button type="button" class="btn btn-secondary d-none" id="cancelBtn">Cancel</button>
                            <button type="submit" class="btn btn-danger d-none" id="submitBtn">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function(){ // on load function
            $("#editBtn").click(function(){ // edit button on click function
                $("input").attr("readonly", false); // allow editing of the input areas within the form
                $("#submitBtn").removeClass("d-none");
                $("#cancelBtn").removeClass("d-none");
                $(this).addClass("d-none");
            });
            $("#cancelBtn").click(function(){
                // $(this).addClass("d-none");
                // $("#submitBtn").addClass("d-none");
                // $("#editBtn").removeClass("d-none");
                // $("input").attr("readonly", true);
                window.location.reload();
            });
        });
    </script>
</body>
</html>
