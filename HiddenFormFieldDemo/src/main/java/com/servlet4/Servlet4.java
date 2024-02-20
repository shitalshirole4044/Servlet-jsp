package com.servlet4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet4 extends HttpServlet {
	
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("user_name");
		out.println(""
				+"<form action='servlet5' method='post'>"
				+"<input type='hidden' name='user_name' value='"+name+"'>"
				+"<h2>Helllo '"+name+"'</h2>"
				+"<button type='submit'>Go to second servlet</button>"
				+"</form>"
		);
	}

}
