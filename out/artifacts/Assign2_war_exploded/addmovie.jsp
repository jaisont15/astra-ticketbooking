<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Add Movie</title>
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
<Center>
<h1>Add Movie</h1>
</Center>
<form name="input" action="control" method="post">
Title:      <input type="text" name="title"><br><br>
Poster:       <input type="text" name="poster"><br><br>
Actors and Actresses:       <input type="text" name="cast"><br><br>
<table class="table table-hover">
				<tr>
					<th></th>
					<th>Genre</th>
				</tr>
				
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="0"></td>
				<td>Romance</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="1"></td>
				<td>Horror</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="2"></td>
				<td>Thriller</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="3"></td>
				<td>Comedy</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="4"></td>
				<td>Drama</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="5"></td>
				<td>Biopic</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedgenre" value="6"></td>
				<td>Action</td>
				</tr>
				
			</table><br>
Director:      <input type="text" name="director"><br><br>
Synopsis:      <input type="text" name="synopsis"><br><br>
Release Time:      <input type="text" name="release"><br><br>
Age rating:      <input type="text" name="age"><br><br>
<input type="hidden" name="action" value="addmovie"/>
<input type="submit" value="Save">
<a href="manager_home.jsp">Cancel</a>
</form><br>
</body>
</html>