package com.vcube.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.UserDAO.UserDAO;


@WebServlet("/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		System.out.println(email +":"+password);
		UserDAO user=new UserDAO();
		boolean status=user.loginUser(email, password);
		if(status) {
			 response.sendRedirect("TaskListServlet");
		}
		else {
			 response.sendRedirect("Login.jsp");
		}
		
		
	}

}
