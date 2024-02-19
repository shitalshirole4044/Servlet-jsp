package com.servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class S2 extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		int sum=(int)Integer.parseInt(req.getParameter("sum"));
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<h2>Sum"+sum+"</h2>");
		int mult=0;
		try {
		int nn1=Integer.parseInt(req.getParameter("n1"));
		int nn2=Integer.parseInt(req.getParameter("n2"));
	
		mult=nn1*nn2;
		}catch(NumberFormatException e) {
		out.println("<h2>Product"+mult+"</h2>");
		}
		
	}
}