package com.vcube.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.UserDAO.TaskDAO;
import com.vcube.model.TaskModel;


@WebServlet("/UpdateTaskServlet")
public class UpdateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	System.out.println("request came from find taskbyid");
	int id=Integer.parseInt(request.getParameter("id"));
	TaskDAO taskdao=new TaskDAO();
	TaskModel task=taskdao.getTaskById(id);
	request.setAttribute("task", task);
	RequestDispatcher rd=request.getRequestDispatcher("UpdateTaskForm.jsp");
	rd.forward(request, response);
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("request received for update task ");
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		String taskname=request.getParameter("taskname");
		String taskdescription=request.getParameter("taskdescription");
		int storypoints=Integer.parseInt(request.getParameter("storypoints"));
		String assignedto=request.getParameter("assignedto");
		
		TaskModel task=new TaskModel(taskname,taskdescription,storypoints,assignedto);
		System.out.println(task);
		task.setTask_id(id);
		
		TaskDAO taskdao=new TaskDAO();	
		boolean status=taskdao.updateTask(task);
		System.out.println("Update status: " + status);

		if(status) {
		    System.out.println("Redirecting to task-home.jsp");
		    response.sendRedirect("TaskListServlet");
		}
	}

}
