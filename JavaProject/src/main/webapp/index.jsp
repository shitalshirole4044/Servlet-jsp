<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.* , com.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tech Blog</title>
<script src="js/myjs.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/mystyle.css" rel="stylesheet"  type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
.banner-background{
  clip-path: polygon(50% 0%, 100% 0, 98% 99%, 66% 92%, 31% 100%, 0 93%, 0 0);
}
</style>
</head>
<body>
<!-- Navbar -->
<%@ include file="normal_navbar.jsp" %>

<!-- banner -->
<div class="container-fluid p-0 m-0">
<div class="jumbotron bg-dark text-white banner-background">
<div class="container">
<h3 class="display-3">Welcome to Tech-Blog</h3>

<p>Welcome to Technical Blog, World of Technology A programming language is a system of notation for writing computer programs.
The source code for a simple computer program written in the C programming language. The gray lines are comments that help explain the program to humans in a natural language. When compiled and run, it will give the output "Hello, world!".
</p>
<p>A language usually has at least one implementation in the form of a compiler or interpreter, allowing programs written in the language to be executed.</p>
<button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span>Start !its free</button>
<a href="Login_Page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>
</div>
</div>
</div>

<!-- cards -->
<div class="container">
<div class="row mb-2">

<div class="col-md-4">

<div class="card">
 
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn bg-dark text-white">Read More</a>
  </div>

</div>
</div>
<div class="col-md-4">

<div class="card">
 
  <div class="card-body">
    <h5 class="card-title">Python Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn bg-dark text-white">Read More</a>
  </div>

</div>
</div>
<div class="col-md-4">

<div class="card">
 
  <div class="card-body">
    <h5 class="card-title">Cpp Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn bg-dark text-white">Read More</a>
  </div>

</div>
</div>
</div>
<div class="row">

<div class="col-md-4">

<div class="card">
 
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn bg-dark text-white">Read More</a>
  </div>

</div>
</div>
<div class="col-md-4">

<div class="card">
 
  <div class="card-body">
    <h5 class="card-title">Python Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn bg-dark text-white">Read More</a>
  </div>

</div>
</div>
<div class="col-md-4">

<div class="card">
 
  <div class="card-body">
    <h5 class="card-title">Cpp Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn bg-dark text-white">Read More</a>
  </div>

</div>
</div>
</div>

</div>
<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>