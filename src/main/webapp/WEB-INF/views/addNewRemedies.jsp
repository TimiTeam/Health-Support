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
    <form:form id="remediesForm" class="text-center border border-light p-5" method="POST" action="add"
               modelAttribute="remedies">

        <form:hidden path="id"/>

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
        <script>

            var availableTags = [];
            var diseaseNameCount = 0;
            $(document).ready(function () {
                $('#tags').autocomplete({
                    source: availableTags
                });
                var indication = $("#indication");
                var indVal = indication.val();
                if (indVal.length > 0) {
                    var arr = indVal.split(",");
                    $.each(arr, function (index, value) {
                        $("#diseasesName").append("<tr id='disease" + index + "'>" +
                            "                                <td class=\"col-1 data\">" + value + "</td>" +
                            "                                <td class=\"col-4\"><a class=\"badge badge-danger\" onclick=\"removeElem('disease" + index + "')\">x</a></td>" +
                            "                            </tr>");
                    });
                    diseaseNameCount = arr.length;
                    indication.val("");
                }
            });

            function removeElem(id) {
                $("#" + id).remove();
            }

            $("#remediesForm").submit(function (event) {
                event.preventDefault();
                if (confirm("Send form?")) {
                    var text = "";
                    var data = $(".data");
                    data.each(function (i, v) {
                        text += $(this).text();
                        if (i + 1 !== data.length) {
                            text += ", ";
                        }
                    });
                    $("#indication").val(text);
                    $(this).unbind('submit').submit();
                }
                return false;
            });

            $("#addBtn").on('click', function (e) {
                var val = $("#tags").val();
                if (val.length > 0) {
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

                        //console.log("SUCCESS : ", JSON.stringify(data));
                        availableTags = JSON.parse(data);
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

        <button id="submitBtn" class="btn btn-info btn-block" type="submit">Send</button>

    </form:form>
    <!-- Default form contact -->
</div>
</body>
</html>
