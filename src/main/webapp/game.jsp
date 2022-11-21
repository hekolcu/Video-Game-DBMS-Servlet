<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 21/11/2022
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="game" scope="request" type="vga.videogamesjsp_app.model.Game"/>
<html>
<head>
    <title><c:out value="${game.title}" /></title>
    <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .checked {
            color: gold;
        }
    </style>
</head>
<body class="bg-info h-100">
    <c:import url="navbar.jsp"/>
    <div class="d-flex flex-column justify-content-center mh-100 m-5">
        <div class="d-flex flex-row justify-content-center">
            <div class="card" style="width: 36rem;">
    <%--            <img src="" class="card-img-top" alt="...">--%>
                <div class="card-header">
                    <h5 class="card-title"><c:out value="${game.title}" /></h5>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Description</div>
                            <div class="card-text"><c:out value="${game.description}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Year</div>
                            <div class="card-text"><c:out value="${game.year}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Genre</div>
                            <div class="card-text"><c:out value="${game.genre}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Popularity</div>
                            <div class="card-text"><c:out value="${game.popularity}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Platform</div>
                            <div class="card-text"><c:out value="${game.platform}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Mode</div>
                            <div class="card-text"><c:out value="${game.mode}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Restrictions</div>
                            <div class="card-text"><c:out value="${game.restrictions}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Requirements</div>
                            <div class="card-text"><c:out value="${game.requirements}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Link</div>
                            <div class="card-text"><c:out value="${game.link}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Creators</div>
                            <div class="card-text"><c:out value="${game.creators}" /></div>
                        </li>
                        <li class="list-group-item">
                            <div class="card-subtitle text-muted mb-2">Rating</div>
                            <div class="card-text"><c:out value="${game.rating}" /> (<c:out value="${game.rating_count}" />)</div>
                        </li>
                    </ul>
                </div>
                <div class="card-footer d-flex flex-row justify-content-lg-start">
                    <c:forEach begin="1" end="${game.rating}" step="1">
                        <div class="m-1"><span class="fa fa-star checked"></span></div>
                    </c:forEach>
                    <c:forEach begin="1" end="${6 - game.rating}" step="1">
                        <div class="m-1"><span class="fa fa-star"></span></div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
