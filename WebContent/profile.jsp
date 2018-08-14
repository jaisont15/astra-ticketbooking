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
<title>Profile</title>
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
<center>
<h1>Profile</h1>
</center>
<form name="input" action="control" method="post">
User Name:      ${user.ACCOUNTNAME }<br><br>
Nickname:       <input type="text" name="nickname" value = ${user.NICKNAME }><br><br>
First Name:       <input type="text" name="firstname" value = ${user.FIRSTNAME }><br><br>
Last Name:       <input type="text" name="lastname" value = ${user.LASTNAME }><br><br>
E-mail Address: <input type="text" name="email" value = ${user.EMAIL }><br><br>


<input type="hidden" name="action" value="updateprofile"/>

<input type="submit" value="Update">
<c:choose>
<c:when test="${user.status == 'yes'}">

<a href="user_home.jsp">Cancel</a>
</c:when>
<c:otherwise>
<a href="welcome.jsp">Cancel</a>
</c:otherwise>

</c:choose>

</form><br>

</body>
</html>