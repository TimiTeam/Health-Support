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
    <form>
        <input id="text" type="text">
        </br>
        <select id="select" multiple data-role="tagsinput" name="diseases">
            <option value="Amsterdam">Amsterdam</option>
            <option value="Washington">Washington</option>
        </select>
    </form>
    <script>
        $("#text").on('input', function() {
            $("#select").remove();
            $.ajax({
                type: "GET",
                url: '<c:url value="/remedies/ajax"/>',
                data: {text:this.value},
                timeout: 600000,
                success: function (data) {

                    console.log("SUCCESS : ", data);
                    /*
                    var json = "<h4>Ajax Response</h4>&lt;pre&gt;"
                        + JSON.stringify(data, null, 4) + "&lt;/pre&gt;";
                    $('#feedback').html(json);

                    console.log("SUCCESS : ", data);
                    $("#btn-search").prop("disabled", false);*/

                },
                error: function (e) {
                    /*
                                        var json = "<h4>Ajax Response</h4>&lt;pre&gt;"
                                            + e.responseText + "&lt;/pre&gt;";
                                        $('#feedback').html(json);

                                        console.log("ERROR : ", e);
                                        $("#btn-search").prop("disabled", false);
                    */
                    console.log("ERROR : ", e);
                }
            });
        });

    </script>
</div>
</body>
</html>
