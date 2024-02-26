package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.entities.Message;
import com.entities.User;
import com.helper.ConnectionProvider;


public class LoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		fetch email and password from request
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		UserDao userdao=new UserDao(ConnectionProvider.getConnection());
		User user=userdao.getUserbyEmailAndPassword(email, password);
		if(user==null) {
//			login error
//			PrintWriter out=response.getWriter();
//			out.println("Error invalid details");
			Message m=new Message("Invalid Details..plz try again","error","alert-danger");
			HttpSession s=request.getSession();
			s.setAttribute("msg",m);
			response.sendRedirect("Login_Page.jsp");
			
		}else {
			HttpSession s=request.getSession();
			s.setAttribute("currentUser", user);
			response.sendRedirect("profile.jsp");
		}
		
	}

}
