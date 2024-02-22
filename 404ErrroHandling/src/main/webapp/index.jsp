<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Module Project | Home Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-6 offset-md-3">
<form action="op.jsp">
<div class="card">
<div class="card-header bg-dark text-white">
<h3>Provide me a two numbers</h3>
</div>
<div class="card-body bg-secondary">
<div class="form-group">
<input name="num1" type="number"  class="form-control" placeholder="enter num1">
</div>
<div class="form-group">
<input name="num2" type="number" class="form-control" placeholder="enter num2">
</div>
</div>
<div class="card-footer text-center bg-dark text-white">
<button type="submit" class="btn btn-outline-light">Divide</button>
</div>

</div>
</form>
</div>
</div>
</div>
</body>
</html>