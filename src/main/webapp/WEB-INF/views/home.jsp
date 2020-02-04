<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-15
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>Home</title>
</head>
<body>
    <jsp:include page="navbar.jsp"/>
    <div class="container">
        <div class="text-center">
            <div class="card-body">
                <br>
                <a class="nounderline" href="<c:url value="/"/>">
                    <h3 class="card-title">Welcome to</h3>
                    <h2>Health Supporter</h2>
                </a>
                <p>${message}</p>
                <form:form action="search/" method="get">
                    <input class="btn btn-primary" type="submit" value="Get Started"/>
                </form:form>
            </div>
        </div>
        <br>
        <div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="https://julianachinisogai.com/wp-content/uploads/sites/111/2019/09/chinese-medicine.jpg" alt="Herbal">
                <div class="card-body">
                    <h5 class="card-title">Herbal medicine</h5>
                    <p class="card-text">Plants have been the basis for medical treatments through much of human history, and such traditional medicine is still widely practiced today.</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/5-7-color-chakra-human-lotus-pose-yoga-abstract-world-universe-i-benjavisa-ruangvaree.jpg" alt="Yoga">
                <div class="card-body">
                    <h5 class="card-title">Yoga and Physical medicine</h5>
                    <p class="card-text">Physical medicine and rehabilitation, also known as physiatry and physiatrics, is a branch of medicine that aims to enhance and restore functional ability and quality of life to those with physical impairments or disabilities.</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="https://riotimes-11af1.kxcdn.com/wp-content/uploads/2019/10/Benzodiazepines.jpg" alt="Pharmacology">
                <div class="card-body">
                    <h5 class="card-title">Pharmacology</h5>
                    <p class="card-text">Pharmacology discovery and characterization of chemicals which show biological effects and the elucidation of cellular and organismal function in relation to these chemicals.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
