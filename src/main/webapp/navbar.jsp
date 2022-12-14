<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/games">VideoGames Servlet Project</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <c:if test="${sessionScope.user != null}">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/profile">Profile(<c:out value="${sessionScope.user.name}" />)</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/games?myGames=true">My Games</a>
          </li>
        </c:if>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/addGame">Add a Game</a>
        </li>
        <c:if test="${sessionScope.user != null}">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/logout">Logout</a>
        </li>
        </c:if>
        <c:if test="${sessionScope.user == null}">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/login">Login</a>
          </li>
        </c:if>
<%--        <li class="nav-item dropdown">--%>
<%--          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--            Dropdown--%>
<%--          </a>--%>
<%--          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--            <li><a class="dropdown-item" href="#">Action</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Another action</a></li>--%>
<%--            <li><hr class="dropdown-divider"></li>--%>
<%--            <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
<%--          </ul>--%>
<%--        </li>--%>

<%--        <li class="nav-item">--%>
<%--          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
<%--        </li>--%>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>