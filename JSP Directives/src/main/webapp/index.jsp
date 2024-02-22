<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random,java.util.ArrayList,java.io.*" %>
<%@ page isErrorPage="true" %>
<%@ page session="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
   *{
	margin:20px,
	padding:20px
}

</style>
<body>


<%@ include file="header.jsp" %>


<h1>Random Number:
<%
Random r=new Random();
int n=r.nextInt(10);
%>
<%= n %>
</h1>
</body>
</html>