package com.servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class S1 extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		String ans1=req.getParameter("n1");
		String ans2=req.getParameter("n2");
		int sum=0;
		PrintWriter out=res.getWriter();
		try {
		int nn1=Integer.parseInt(req.getParameter(ans1));
		int nn2=Integer.parseInt(req.getParameter(ans2));
		sum=nn1+nn2;
		}catch(NumberFormatException e){
			out.println("<h2>This is Not correct input</h2>");
		}
		req.setAttribute("sum",sum);
		
		RequestDispatcher rd=req.getRequestDispatcher("s2");
		rd.forward(req, res);
		
		
		
	}

}
