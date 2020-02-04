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
    <jsp:include page="head.jsp"/>
    <title>Search</title>
</head>
<body>
<div>
    <jsp:include page="navbar.jsp"/>
    <div class="container">
        <a class="nounderline" href="<c:url value="/"/>">
            <h3 class="card-title">Welcome to</h3>
            <h2>Health Supporter</h2>
        </a>
    <c:forEach var="disease" items="${allDisease}">
        <h4>${disease.name}</h4>
        <p>${disease.description}</p>
        <a href="${disease.link}">To source with more information</a>
    </c:forEach>
</div>
</body>
</html>
