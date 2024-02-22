<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="ErrorDemo.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
*{
padding:0px;
margin:0px;
}
</style>
</head>

<body>
<%! 
int a=10;
int b=0;
%>
<h2>Divison:
<%
out.println(a/b);
%>
</h2>
</body>
</html>