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
<title>Add Cinema</title>
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
<h1>Add Cinema</h1>
</Center>
<form name="input" action="control" method="post">
Location:      <input type="text" name="location"><br><br>
Seat Capacity:       <input type="text" name="seatcap"><br><br>
<table class="table table-hover">
				<tr>
					<th>Available</th>
					<th>Amenities</th>
				</tr>
				
				<tr>
				<td><input type="checkbox" name="selectedam" value="0"></td>
				<td>ATM</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedam" value="1"></td>
				<td>widescreen</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedam" value="2"></td>
				<td>snack bar</td>
				</tr>
				<tr>
				<td><input type="checkbox" name="selectedam" value="3"></td>
				<td>restaurant</td>
				</tr>
				
			</table>
<input type="hidden" name="action" value="addcinema"/>
<input type="submit" value="Save">
<a href="manager_home.jsp">Cancel</a>
</form><br>

</body>
</html>