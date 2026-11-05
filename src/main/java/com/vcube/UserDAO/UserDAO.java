package com.vcube.UserDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vcube.model.UserModel;
import com.vcube.utility.DBConnection;

public class UserDAO {
	boolean status=false;
	Connection con=DBConnection.getDBConnection();
	public boolean registerUser(UserModel u) {
		try {
			PreparedStatement ps=con.prepareStatement("insert into User(name,email,password,role) values(?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getRole());
			int n=ps.executeUpdate();
			if(n>0) {
				status=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public boolean loginUser(String email,String password) {
		try {
			PreparedStatement ps=con.prepareStatement("select * from user where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				status=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
