package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ThirdServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		System.out.println("executing deget method");
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("This is http servlet");
		out.println(new Date().toString());
		
	}
}
