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
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

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
        <div class="form-group">
            <form:label path="type">Remedies Type</form:label><br>
            <form:select path="type">
                <form:option value="Herbal medicine"/>
                <form:option value="Yoga and Physical medicine"/>
                <form:option value="Pharmacology medicine"/>
            </form:select>
        </div>
        <form:label path="indication">Indication</form:label><br>
        <form:input id="indication" class="invisible" path="indication"/><br>
        <label for="tags">Tags: </label>
        <input id="tags">
        <button type="button" id="addBtn" class="btn btn-outline-info">Add</button>


        <div class="table-responsive">
            <table class="table table-fixed">
                <thead>
                <tr>
                    <th scope="col" class="col-1">Name</th>
                    <th scope="col" class="col-4">Remove</th>
                </tr>
                </thead>
                <tbody id="diseasesName">

                </tbody>
            </table>
        </div>
        <button type="button" id="print" class="btn btn-outline-primary" onclick="printText(this)">Print</button>
        <script>

            var availableTags = [];
            var diseaseNameCount = 0;
            $(document).ready(function () {
                $('#tags').autocomplete({
                    source: availableTags
                });
            });

            function removeElem(id) {
                $("#" + id).remove();
            }

            function printText(e) {
                var text = "";

                $(".data").each(function () {
                    text += $(this).text() + ", ";
                });
                $("#indication").val(text);
            }

            $("#addBtn").on('click', function (e) {
                var val = $("#tags").val();
                if (val.length > 1) {
                    ++diseaseNameCount;
                    $("#diseasesName").append("<tr id='disease" + diseaseNameCount + "'>" +
                        "                                <td class=\"col-1 data\">" + val + "</td>" +
                        "                                <td class=\"col-4\"><a class=\"badge badge-danger\" onclick=\"removeElem('disease" + diseaseNameCount + "')\">x</a></td>" +
                        "                            </tr>");
                }
            });

            $("#tags").on('input', function () {
                $.ajax({
                    type: "post",
                    url: '<c:url value="/remedies/new/ajax"/>',
                    cache: false,
                    data: {
                        text: this.value
                    },
                    success: function (data) {

                        console.log("SUCCESS : ", JSON.stringify(data));
                        availableTags = ["Hello", "World", "Item1", "IiiE", "Hope", "Joke", "What", "Timur"];
                        $('#tags').autocomplete({
                            source: availableTags
                        });
                    },
                    error: function (e) {
                        availableTags = [];
                        console.log("ERROR : ", e);
                    }
                });
            });
        </script>
        <div class="form-group">
            <form:label path="contraindication" for="exampleFormControlTextarea1">Contraindication</form:label><br>
            <form:textarea path="contraindication" class="form-control" rows="3"/><br>
        </div>
        <div class="form-group">
            <form:label path="drugUse">Use of the drug</form:label><br>
            <form:textarea path="drugUse" class="form-control" rows="5"/><br>
        </div>

        <button class="btn btn-info btn-block" type="submit">Send</button>

    </form:form>
    <!-- Default form contact -->
</div>
</body>
</html>
