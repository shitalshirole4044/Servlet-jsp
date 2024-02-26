package com.dao;
import java.sql.*;

import com.entities.User;
public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
//	method to insert user to database
	public boolean saveUser(User user) {
		boolean f=false;
		try {
			
			String query="insert into user(Name,Email,Password,Gender) values(?,?,?,?)";
			PreparedStatement pstmt=this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
//	get user by user email and user password
	public User getUserbyEmailAndPassword(String email,String password) {
		User user=null;
		boolean flag=false;
		try {
			String query="select * from user where Email=? AND Password=?";
			PreparedStatement pstmt=this.con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet set=pstmt.executeQuery();
			flag=true;
			if(flag) {
			user=new User();
			if(!set.next()) {
				return null;
			}else {
			do{
			String name=set.getString("Name");
			
			user.setName(name);
			String email1=set.getString("Email");
			user.setEmail(email1);
			int id=set.getInt("id");
			user.setId(id);
			String password1=set.getString("Password");
			user.setPassword(password1);
			String Gender=set.getString("Gender");
			user.setGender(Gender);
			}while(set.next());
			}
			}
			
				
		}catch(Exception e) {
			
		}
		
		return user;
	}
}
