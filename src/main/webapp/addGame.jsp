<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: husey
  Date: 24/11/2022
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Game!</title>
  <link href="resources/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="resources/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-dark h-100">
<c:import url="navbar.jsp"/>
<div class="row justify-content-center mt-2 w-75 ms-auto me-auto mb-5">
    <div class="card" style="width: 36rem;">
      <form method="post" action="${pageContext.request.contextPath}/addGame">
        <%--            <img src="" class="card-img-top" alt="...">--%>
        <div class="card-header">
          <h5 class="card-title">
            <label for="title">Title</label>
            <input type="text" name="title" id="title" />
          </h5>
        </div>
        <div class="card-body">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Description</div>
              <div class="card-text">
                <textarea name="description" id="description" cols="65" rows="5"></textarea>
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Year</div>
              <div class="card-text">
                <input name="year" id="year" type="number">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Genre</div>
              <div class="card-text">
                <input name="genre" id="genre" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Popularity</div>
              <div class="card-text">
                <input name="popularity" id="popularity" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Platform</div>
              <div class="card-text">
                <input name="platform" id="platform" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Mode</div>
              <div class="card-text">
                <input name="mode" id="mode" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Restrictions</div>
              <div class="card-text">
                <input name="restrictions" id="restrictions" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Requirements</div>
              <div class="card-text">
                <input name="requirements" id="requirements" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Link</div>
              <div class="card-text">
                <input name="link" id="link" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Creators</div>
              <div class="card-text">
                <input name="creators" id="creators" type="text">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Rating</div>
              <div class="card-text">
                <input name="rating" id="rating" type="number">
              </div>
            </li>
            <li class="list-group-item">
              <div class="card-subtitle text-muted mb-2">Rating Count</div>
              <div class="card-text">
                <input name="rating-count" id="rating-count" type="number">
              </div>
            </li>
          </ul>
        </div>
        <div class="card-footer d-flex flex-row justify-content-lg-end">
          <button type="submit" class="btn btn-primary mt-1">Submit</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
