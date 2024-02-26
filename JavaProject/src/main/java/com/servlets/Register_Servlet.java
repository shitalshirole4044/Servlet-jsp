package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.entities.User;
import com.helper.ConnectionProvider;

@MultipartConfig
public class Register_Servlet extends HttpServlet {
	
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//fetch the data
	    PrintWriter out=response.getWriter();
		
		String condition=request.getParameter("condition");
		if(condition==null) {
			out.println("Plz check terms and condtion");
		}else {
			String name=request.getParameter("user_name");
			String email=request.getParameter("user_email");
			String password=request.getParameter("user_password");
			String gender=request.getParameter("gender");
		
			
//			 create User object and set all data to object
			User user=new User(name,email,password,gender);
			
//			create UserDao Object
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			if(dao.saveUser(user)) {
				out.println("Done");
			}else {
				out.println("Already Registerd With same Email id");
			}
			
		}
	}

}
