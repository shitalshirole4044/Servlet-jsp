package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;



public class MyServlet implements Servlet {

	@Override
	public void destroy() {
		System.out.println("destroy");
		
	}

	ServletConfig con;
	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return con;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "this servlet created by shital";
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		this.con=arg0;
		System.out.println("object creation");
		
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		System.out.println("servicing");
		arg1.setContentType("text/html");
		PrintWriter prt=arg1.getWriter();
		prt.println("<h2>Helloo this is Todays date hii</h2>");
		
	}
	
}
