<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-16
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
    <h3>Search</h3>
<div>
    <c:forEach var="disease" items="${allDisease}">
        <h4>${disease.name}</h4>
        <p>${disease.description}</p>
        <a href="${disease.link}">Go to Wikipedia</a>
    </c:forEach>
</div>
</body>
</html>
