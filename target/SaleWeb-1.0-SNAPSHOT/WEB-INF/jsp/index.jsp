<%-- 
    Document   : index.jsp
    Created on : Jul 10, 2022, 1:45:43 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="javascript:void(0)">Trang chu</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mynavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Trang chu</a>
                        </li>
                        <c:forEach items="${category}" var="c">
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:void(0)">${c}</a>
                            </li> 
                        </c:forEach>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="text" placeholder="Search">
                        <button class="btn btn-primary" type="button">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <c:forEach items="${product}" var="p">
                    <div class="card col-md-4" style="padding: 5px">
                        <img class="card-img-top" src="https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248722/r8sjly3st7estapvj19u.jpg" alt="Card image">
                        <div class="card-body">
                            <h4 class="card-title">${p}</h4>
                            <p class="card-text">2500000VND</p>
                            <a href="#" class="btn btn-primary">mua</a>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </body>
</html>
