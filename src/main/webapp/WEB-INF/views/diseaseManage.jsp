<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-17
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />"
          rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <title>Disease Management</title>
</head>
<body>
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent"
                aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
</div>
<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <h2>Disease Management</h2>
        <hr/>

        <form:form action="new" method="get">
            <input class="btn btn-primary" type="submit" value="Add new Disease"/>
        </form:form>

        <br/>
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Disease List</div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th>Disease Name</th>
                            <th>Category</th>
                            <th>Source Link</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="disease" items="${allDisease}">

                        <c:url var="updateLink" value="/manage/update">
                            <c:param name="diseaseId" value="${disease.diseaseId}"/>
                        </c:url>

                        <c:url var="deleteLink" value="/manage/delete">
                            <c:param name="diseaseId" value="${disease.diseaseId}"/>
                        </c:url>

                        <tr>
                            <th scope="row">${disease.name}</th>
                            <td>${disease.category}</td>
                            <td>${disease.link}</td>
                            <td>
                                <p>
                                    <a href="${updateLink}"
                                       onclick="if (!(confirm('Update this disease?'))) return false">Update</a> |
                                    <a href="${deleteLink}"
                                       onclick="if (!(confirm('Are you sure you want to delete this disease?'))) return false">Delete</a>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">${disease.description}</td>
                        </tr>

                    </c:forEach>
                    </tbody>

                </table>

            </div>
        </div>
    </div>

</div>
</body>
</html>
