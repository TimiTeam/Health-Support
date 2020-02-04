<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-02-04
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
        <div class="bg-dark p-4">
            <h4 class="text-white">Content</h4>
            <span class="text-muted">Toggleable via the navbar brand.</span>
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/disease/"/>">Management Diseases</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="<c:url value="/"/>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/search/"/>">Search</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/remedies/"/>">Management Remedies</a>
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