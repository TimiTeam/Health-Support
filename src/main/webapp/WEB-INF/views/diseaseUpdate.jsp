<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-17
  Time: 17:58
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
    <title>Disease Management</title>
</head>
<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <h2>Disease Management</h2>
        <hr />

        <form:form action="add" method="get">
            <input class="btn btn-primary" type="submit" value="Add new Disease"/>
        </form:form>

        <!-- <input type="button" value="Add Customer"
               class="btn btn-primary" />
               onclick="window.location.href='/update/add'; return false;" -->
        <br/>
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Customer List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Disease Name</th>
                        <th>Description</th>
                        <th>Wikipedia Link</th>
                        <th>Action</th>
                    </tr>

                    <!-- loop over and print our customers -->
                    <c:forEach var="disease" items="${allDisease}">

                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/update/add">
                            <c:param name="customerId" value="${disease.diseaseId}" />
                        </c:url>

                        <!-- construct an "delete" link with customer id -->
                        <c:url var="deleteLink" value="/update/add">
                            <c:param name="customerId" value="${disease.diseaseId}" />
                        </c:url>

                        <tr>
                            <td>${disease.name}</td>
                            <td>${disease.description}</td>
                            <td>${disease.link}</td>

                            <td>
                                <!-- display the update link --> <a href="${updateLink}">Update</a>
                                | <a href="${deleteLink}"
                                     onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                            </td>

                        </tr>

                    </c:forEach>

                </table>

            </div>
        </div>
    </div>

</div>
</body>
</html>
