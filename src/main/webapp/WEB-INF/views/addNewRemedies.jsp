<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-02-04
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>New Remedies</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
    <div class="container">
        <!-- Default form contact -->
        <form:form class="text-center border border-light p-5" method="POST" action="add" modelAttribute="remedies">

            <p class="h4 mb-4">Fill it</p>

            <!-- Name -->
            <form:label path="name">Remedies name</form:label><br>
            <form:input class="form-control mb-4" path="name"/><br>
            <select multiple data-role="tagsinput" name="diseases">
                <option value="Amsterdam">Amsterdam</option>
                <option value="Washington">Washington</option>
                <option value="Sydney">Sydney</option>
                <option value="Beijing">Beijing</option>
                <option value="Cairo">Cairo</option>
            </select>
            <!-- Email -->
            <input type="email" id="defaultContactFormEmail" class="form-control mb-4" placeholder="E-mail">

            <!-- Subject -->
            <label>Subject</label>
            <select class="browser-default custom-select mb-4">
                <option value="" disabled>Choose option</option>
                <option value="1" selected>Feedback</option>
                <option value="2">Report a bug</option>
                <option value="3">Feature request</option>
                <option value="4">Feature request</option>
            </select>

            <!-- Message -->
            <div class="form-group">
                <textarea class="form-control rounded-0" id="exampleFormControlTextarea2" rows="3" placeholder="Message"></textarea>
            </div>

            <!-- Copy -->
            <div class="custom-control custom-checkbox mb-4">
                <input type="checkbox" class="custom-control-input" id="defaultContactFormCopy">
                <label class="custom-control-label" for="defaultContactFormCopy">Send me a copy of this message</label>
            </div>

            <!-- Send button -->
            <button class="btn btn-info btn-block" type="submit">Send</button>

        </form:form>
        <!-- Default form contact -->
    </div>
</body>
</html>