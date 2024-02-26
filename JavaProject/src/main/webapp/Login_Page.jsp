<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
<%@ include file="normal_navbar.jsp" %>
<main class="d-flex align-items-center bg-dark banner-background"  style="height:70vh">
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-header text-center">
<span class="fa fa-user-plus fa-3x"></span>
<p>Login Here</p>
</div>

<%
Message m=(Message)session.getAttribute("msg");
if(m!=null){
	%>
	<div class="alert <%=m.getCssClass() %>"  role="alert">
       <%= m.getContent()%>
   </div>
	<% 
	session.removeAttribute("msg");
}
%>

<div class="card-body">
<form action="LoginServlet1" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="user_email"  required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label  for="exampleInputPassword1">Password</label>
    <input  name="user_password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree Terms And Conditions</label>
  </div>
  <br></br>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Login</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
</main>

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>