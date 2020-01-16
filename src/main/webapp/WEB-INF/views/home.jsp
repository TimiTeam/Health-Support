<%--
  Created by IntelliJ IDEA.
  User: tbujalo
  Date: 2020-01-15
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <title>Home</title>
</head>
<body>
    <div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
        <div class="bg-dark p-4">
            <h4 class="text-white">Collapsed content</h4>
            <span class="text-muted">Toggleable via the navbar brand.</span>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
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
        <div class="text-center">
            <div class="card-body">
                <br>
                <h3 class="card-title">Welcome to</h3>
                <h2>Health Supporter</h2>
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
