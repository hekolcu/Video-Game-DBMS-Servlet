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
    <script src="resources/js/masonry.pkgd.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .checked {
            color: gold;
        }
        .grid-item {
            width: 300px;
        }
        .grid {
            margin: 0 auto;
        }
        .grid:after {
            content: '';
            display: block;
            clear: both;
        }
    </style>
</head>
<body class="bg-dark">
    <c:import url="navbar.jsp"/>
    <br>
    <div class="grid" data-masonry='{ "itemSelector": ".grid-item", "columnWidth": 300, "fitWidth": true }'>
        <c:forEach items="${games}" var="game">
            <div class="grid-item">
                <div class="card ms-2 mb-2">
                    <div class="card-body">
                        <h5 class="card-title"><a class="text-decoration-none" href="./games?id=<c:out value="${game.game_id}" />"><c:out value="${game.title}" /></a></h5>
                        <p class="card-text"><c:out value="${game.description}" /></p>
                            <%--                    <a href="./games?id=<c:out value="${game.game_id}" />" class="btn btn-primary card-text">More Details</a>--%>
                        <a href="<c:out value="${game.link}" />" class="btn btn-secondary card-text" target="_blank">Visit Website</a>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex flex-row justify-content-lg-start">
                            <c:forEach begin="1" end="${game.rating}" step="1">
                                <div class="p-1"><span class="fa fa-star checked"></span></div>
                            </c:forEach>
                            <c:forEach begin="1" end="${5 - Math.round(game.rating)}" step="1">
                                <div class="p-1"><span class="fa fa-star"></span></div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
