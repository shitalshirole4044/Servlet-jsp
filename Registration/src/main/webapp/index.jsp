<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background: url(img/pexels-designecologist-1779487.jpg); background-size: cover; background-attachment: fixed">
<div class="container">
<div class="row">
<div class="col m6 offset-m3">
<div class="card">
<div class="card-content">
<h3 style="margin-top:10px" class="center-align">Register Here</h3>
<div class="form center-align">
<form action="Register" method="post" >
<input type="text" name="user_name" placeholder="Enter your name">
<input type="password" name="user_password" placeholder="Enter your password">
<input type="email" name="user_email" placeholder="Enter your email">
<button type="submit" class="btn light-blue accent-3">Submit</button>
</form>
</div>
<div class="loader center-align" style="margin-top:10px; display:none;" >

    <div class="preloader-wrapper big active">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
      <h5>Please Wait</h5>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous">
</script>
<script>
$(document).ready(function(){
	console.log("Yes i am readyyy....")
})
</script>
</body>
</html>