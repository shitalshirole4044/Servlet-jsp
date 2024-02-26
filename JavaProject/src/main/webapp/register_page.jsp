<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
 <!-- Css -->
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
<main class="bg-dark p-5 banner-background" style="padding-bottom:80px">
<div class="container">
<div class="col-md-6 offset-md-3">
<div class="card ">
<div class="card-header text-center">
<span class="fa fa-3x fa-user-circle"></span>
<p>Register Here</p> 
</div>
<div class="card-body">
<form id="reg-form" action="Register_Servlet1" method="post">
    <div class="form-group">
    <label for="user_name">User Name</label>
    <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Enter UserName">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="user_email"  aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="user_password" placeholder="Password">
  </div>
  
  <div class="form-group">
     <label for="gender">Select Gender</label><br>
     <input type="radio" id="male" name="gender" value="Male">Male
	<input type="radio" id="female" name="gender" value="Female">Female
 </div>
 
  <div class="form-check">
    <input type="checkbox" name="condition" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree Terms And Conditions</label>
  </div>
  <br></br>
  <div class="container text-center" id="loader" style="Display:None">
  <span class="fa fa-refresh fa-spin fa-3x"></span>
  <h4>Please Wait</h4>
  </div>

  <button id="submit-btn" type="submit" class="btn btn-primary">Sign Up</button>
</form>
</div>
</div>
</div>
</div>
</main>

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	console.log("loaded")
	$('#reg-form').on('submit',function(event){
		event.preventDefault()
		$('#submit-btn').hide()
		$('#loader').show()
		let form=new FormData(this)
		//send Register Servlet;
		$.ajax({
			url:'Register_Servlet1',
			type:'Post',
			data:form,
			success:function(data,textstatus,jqXHR){
				console.log(data)
				$('#submit-btn').show()
		        $('#loader').hide()
		        if(data.trim()==='Done'){
		        swal("Registered SuccessFul !!! we are redirecting to login page")
		        .then((value) => {
		          window.location="Login_Page.jsp"
		        });
		        }else{
		        	swal(data);
		        }
			},
			error:function(jqXHR,textstatus,errorThrown){
				console.log(jqXHR)
				$('#submit-btn').show()
		        $('#loader').hide()
		        swal("Something went wrong");
		        
			},
			processData:false,
			contentType:false
			
		});
	});
	
});
</script>
</body>
</html>