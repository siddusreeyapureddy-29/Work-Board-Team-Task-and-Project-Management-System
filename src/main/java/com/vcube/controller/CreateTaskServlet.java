package com.vcube.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.UserDAO.TaskDAO;
import com.vcube.model.TaskModel;


@WebServlet("/CreateTaskServlet")
public class CreateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taskname=request.getParameter("taskname");
		String taskdescription=request.getParameter("taskdescription");
		int storypoints=Integer.parseInt(request.getParameter("storypoints"));
		String assignedto=request.getParameter("assignedto");
		
		TaskModel task=new TaskModel(taskname,taskdescription,storypoints,assignedto);
		System.out.println(task);
		
		TaskDAO taskdao=new TaskDAO();	
		boolean status=taskdao.createTask(task);
		if(status) {
			response.sendRedirect("TaskListServlet");
		}
		else {
			response.sendRedirect("task-form.jsp");
		}
		
	}

}
