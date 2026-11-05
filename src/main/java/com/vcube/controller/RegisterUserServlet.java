package com.vcube.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.UserDAO.UserDAO;
import com.vcube.model.UserModel;


@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		

		UserModel user=new UserModel(name,email,password,role);
		System.out.println(user);
		
		UserDAO u=new UserDAO();
		boolean status=u.registerUser(user);
		if(status) {
			RequestDispatcher rs=request.getRequestDispatcher("Login.jsp");
			rs.forward(request,response);
		}else {
			RequestDispatcher rs=request.getRequestDispatcher("Index.jsp");
			rs.forward(request,response);
		}
		
		
	}

}
