<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-17
  Time: 18:27
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
    <title>Add Disease</title>
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    </div>
<div class="container">
    <form:form method="POST" action="add" modelAttribute="disease">
     <div class="form-group">
       <form:label path="name">Disease name</form:label><br>
       <form:input path="name"/><br>
     </div>
      <div class="form-group">
        <form:label path="category">Disease categories</form:label><br>
        <form:select path="category">
          <form:option value="Blood diseases"/>
          <form:option value="Bone diseases"/>
          <form:option value="Cardiovascular diseases"/>
          <form:option value="Ear diseases"/>
          <form:option value="Eye diseases"/>
          <form:option value="Gastrointestinal diseases"/>
          <form:option value="Immune diseases"/>
          <form:option value="Liver Diseases"/>
          <form:option value="Mental diseases"/>
          <form:option value="Muscle diseases"/>
          <form:option value="Nephrological diseases"/>
          <form:option value="Neuronal diseases"/>
          <form:option value="Oral diseases"/>
          <form:option value="Reproductive diseases"/>
          <form:option value="Respiratory diseases"/>
          <form:option value="Skin diseases"/>
          <form:option value="Smell/Taste disease"/>
        </form:select>
      </div>
      <div class="form-group">
          <form:label path="link">Link to the source with additional information</form:label><br>
          <form:input path="link"/><br>
      </div>
      <div class="form-group">
        <form:label path="description" for="exampleFormControlTextarea1">Short description</form:label><br>
        <form:textarea path="description" maxlength="250" class="form-control" rows="3"/><br>
      </div>
         <input type="submit" class="btn btn-primary" value="Submit form"/>
    </form:form>
</div>
</body>
</html>
