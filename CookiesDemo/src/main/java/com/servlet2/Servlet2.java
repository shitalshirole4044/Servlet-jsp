package com.servlet2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet2
 */
@WebServlet("/servlet2")
public class Servlet2 extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		Cookie[] cookies=req.getCookies();
		String name="";
		boolean f=false;
		if(cookies==null) {
			out.println("<h2>You are new User go to home page and submit the page</h2>");
			return;
		}else {
			for(Cookie c1:cookies) {
				String tname=c1.getName();
				if(tname.equals("user_name")) {
					f=true;
					name=c1.getValue();
					
				}
			}
		
		}
		if(f) {
			out.println("<h2>Hello"+name+"Wecome back</h2>");
		}
	}

}
