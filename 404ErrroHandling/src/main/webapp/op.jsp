<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="./error_demo.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//fetch two  numbers
String num1=request.getParameter("num1");
String num2=request.getParameter("num2");
int c=0;

int n1=Integer.parseInt(num1);
int n2=Integer.parseInt(num2);
c=n1/n2;
%>
<h1>Result is:
<%=c %>
</h1>
</body>
</html>