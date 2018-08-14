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
<title>Login</title>
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

<c:choose>

<c:when test="${user_login == true}">
<center>
<h1>Login Complete!</h1>
</center>
<center>
<h1><a href="user_home.jsp">Go to Home Page</a></h1>
</center>
</c:when>

<c:when test="${manager_login == true}">
<center>
<h1>Login Complete!</h1>
</center>
<center>
<h1><a href="manager_home.jsp">Go to Home Page</a></h1>
</center>
</c:when>

<c:when test="${notconfirm == true}">
<center>
<h1>Login Fail!</h1>
<h2>Account not activated yet!</h2>
</center>
<center>
<h1><a href="login.jsp">Go back to Login</a></h1>
</center>
</c:when>

<c:otherwise>

<center>
<h1>Login Fail!</h1>
</center>
<c:if test="${notexist_name == true }">
<h2>The user name does not exist!</h2>
</c:if>
<c:if test="${wrong_name == true }">
<h2>The user name does not exist!</h2>
</c:if>
<c:if test="${wrong_pass == true }">
<h2>Wrong password!</h2>
</c:if>
<c:if test="${empty_pass == true }">
<h2>Password cannot be empty!</h2>
</c:if>
<h2>Please try again!</h2>
<center>
<h1><a href="login.jsp">Go back to Login</a></h1>
</center>
</c:otherwise>
</c:choose>
</body>
</html>