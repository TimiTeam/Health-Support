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
    <jsp:include page="head.jsp"/>
    <title>Disease Management</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
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

                        <c:url var="updateLink" value="/disease/update">
                            <c:param name="diseaseId" value="${disease.diseaseId}"/>
                        </c:url>

                        <c:url var="deleteLink" value="/disease/delete">
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
