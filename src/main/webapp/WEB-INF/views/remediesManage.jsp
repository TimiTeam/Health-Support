<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-02-04
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>Remedies</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
    <a class="btn btn-primary btn-lg btn-block" href="<c:url value="/remedies/new"/>">Add new Remedies</a>
</div>
</body>
</html>
