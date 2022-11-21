<%@ page import="vga.videogamesjsp_app.model.Game" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 15/11/2022
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="games" scope="request" type="java.util.List<vga.videogamesjsp_app.model.Game>"/>
<html>
<head>
    <title>Games</title>
    <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .checked {
            color: orange;
        }
    </style>
</head>
<body>
    <h1><c:out value="${sessionScope.user.name}" /> </h1>
    <div class="row">
        <c:forEach items="${games}" var="game">
        <div class="card col-6 m-1" style="width: 18rem;">
    <%--        <img class="card-img-top" src="" alt="Card image cap">--%>
            <div class="card-body">
                <h5 class="card-title"><c:out value="${game.title}" /></h5>
                <p class="card-text"><c:out value="${game.description}" /></p>
                <a href="./games/<c:out value="${game.user_id}" />" class="btn btn-primary">More Details</a>
                <a href="<c:out value="${game.link}" />" class="btn btn-secondary">Visit Website</a>
            </div>
        <div class="card-footer row">
            <c:forEach begin="1" end="${game.rating}" step="1">
                <div class="col-1"><span class="fa fa-star checked"></span></div>
            </c:forEach>
            <c:forEach begin="1" end="${6 - game.rating}" step="1">
                <div class="col-1"><span class="fa fa-star"></span></div>
            </c:forEach>
        </div>
        </div>
        </c:forEach>
    </div>
</body>
</html>
