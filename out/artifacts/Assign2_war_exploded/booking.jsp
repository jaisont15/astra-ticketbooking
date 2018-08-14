<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="control.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Booking</title>
</head>
<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Astra</a>
    <input hidden="true" class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="welcome.jsp">Sign out</a>
        </li>
    </ul>
</nav>
<section class="jumbotron text-center">
    <div class="container">
<center>
<h1>Booking</h1>
</center>
<c:choose>
<c:when test="${empty_date == true}">
<center>
<h1>Date cannot be empty!</h1>
</center>
<center>
<h1><a href="detail.jsp">Back</a></h1>
</center>
</c:when>

<c:when test="${invalid_date == true}">
<center>
<h1>Date is not valid!</h1>
</center>
<center>
<h1><a href="detail.jsp">Back</a></h1>
</center>
</c:when>

<c:when test="${timesize == 0}">
<center>
<h1>No showing time available!</h1>
</center>
<center>
<h1><a href="detail.jsp">Back</a></h1>
</center>
</c:when>


<c:otherwise>

<form name="input" action="control" method="post">
<h2>Select a time</h2>
<select name="time">
<c:forEach var="show" items="${showlist}" varStatus="loop">
<option value="${loop.index }">${show.showing }</option>
</c:forEach>
</select>
Select Number of Tickets: <input type="text" name="ticket"><br>


<input type="hidden" name="action" value="booking"/>
<input type="submit" value="Check booking">
</form>

<h1><a href="detail.jsp">Back</a></h1>

</c:otherwise>
</c:choose>
    </div>
</section>
</body>
</html>