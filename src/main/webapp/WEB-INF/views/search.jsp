<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-16
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />"
          rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <title>Search</title>
</head>
<body>
<div>
<div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
        <div class="bg-dark p-4">
            <h4 class="text-white">Collapsed content</h4>
            <span class="text-muted">Toggleable via the navbar brand.</span>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/manage/"/>">Management Diseases</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="/"/>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/search/"/>">Search</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
        </div>
    </div>
    <nav class="navbar navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    </div>
    <div class="container">
    <c:forEach var="disease" items="${allDisease}">
        <h4>${disease.name}</h4>
        <p>${disease.description}</p>
        <a href="${disease.link}">To source with more information</a>
    </c:forEach>
</div>
</body>
</html>
