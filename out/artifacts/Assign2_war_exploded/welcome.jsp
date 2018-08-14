<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII" %>
<%@ page import="control.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Movie Booking System</title>
</head>
<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Astra</a>
    <input hidden="true" class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">

        </li>
    </ul>
</nav>
<section class="jumbotron text-center">
<h1>Welcome!</h1>
<center>
    <h1><a href="login.jsp">login</a></h1>

    <h1><a href="register.jsp">register</a></h1>
</center>
</section>
<h2>NOW SHOWING</h2>
<div class="album py-3 bg-light">
    <div class="container">
        <div class="row">
            <c:forEach var="movie" items="${showing}" varStatus="loop">
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">

                    <img src="image/${movie.poster }.jpg"/>
                        <div class="card-body">
                            <p class="card-text">${movie.title}</p>
                    <p class="card-text"> Staring: ${movie.actors}</p>
                    <p class="card-text"> Rating: ${movie.rating}</p>
                            <p class="card-text">  Synopsis: ${movie.synopsis}</p>
                        </div>
                </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<br>
<h2>COMING SOON</h2>
<c:forEach var="movie" items="${coming}" varStatus="loop">
    <h3>${movie.title}</h3>
    <img src="image/${movie.poster }.jpg"/><br>
    Staring: ${movie.actors}<br>
    Synopsis: ${movie.synopsis}<br>
    Release Date: ${movie.relaseDate}<br>

</c:forEach>


</body>
</html>