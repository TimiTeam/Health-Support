<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-02-04
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <p>${message}</p>
    <table class="table">
        <thead class="thead-light">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Type</th>
            <th scope="col">indication</th>
            <th scope="col">Edit</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="remedies" items="${allRemedies}">
            <%! int i = 1;%>
            <tr>
                <th scope="row"><%=i++%>
                </th>
                <td>${remedies.name}</td>
                <td>${remedies.type}</td>
                <td>${remedies.indication}</td>
                <c:url var="updateLink" value="/remedies/update">
                    <c:param name="id" value="${remedies.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/remedies/delete">
                    <c:param name="id" value="${remedies.id}"/>
                </c:url>
                <td><p>
                    <a href="${updateLink}"
                       onclick="if (!(confirm('Edit this remedies?'))) return false">Edit</a> |
                    <a href="${deleteLink}"
                       onclick="if (!(confirm('Are you sure you want to delete this remedies?'))) return false">Delete</a>
                </p>
                </td>
            </tr>
        </c:forEach>
        <% i = 1;%>
        </tbody>
    </table>
</div>
</body>
</html>
