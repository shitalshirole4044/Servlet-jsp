package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<h2>Welcome to Register Servlet</h2>");
		String name=req.getParameter("user_name");
		String password=req.getParameter("password");
		String email=req.getParameter("user_email");
		String gender=req.getParameter("user_gender");
		String course=req.getParameter("user_course");
		String condition=req.getParameter("condition");
		if(condition.equals("checked")) {
			out.println("<h2> Name :"+name+"</h2>");
			out.println("<h2> Password:"+password+"</h2");
			out.println("<h2> Email:"+email+"</h2>");
			out.println("<h2> Course:"+course+"</h2>");
			out.println("<h2> gender:"+gender+"</h2>");
		
		}else {
			out.println("<h2>You have not accepted the terms and condition</h2>");
		}
	}
}