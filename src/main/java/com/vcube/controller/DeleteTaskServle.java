package com.vcube.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.UserDAO.TaskDAO;

@WebServlet("/DeleteTaskServle")
public class DeleteTaskServle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("request came to delete the task");
		int id=Integer.parseInt(request.getParameter("id"));
		
		System.out.println(id);
		TaskDAO taskdao=new TaskDAO();
		boolean status=taskdao.deleteTaskById(id);
		if(status) {
			response.sendRedirect("TaskListServlet");
		}
	}

}
