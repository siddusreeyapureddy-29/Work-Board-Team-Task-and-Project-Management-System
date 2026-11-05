package com.vcube.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.vcube.UserDAO.TaskDAO;
import com.vcube.model.TaskModel;


@WebServlet("/TaskListServlet")
public class TaskListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("request came from tasklist");
		
		TaskDAO taskda=new TaskDAO();
		List<TaskModel> alltasks=taskda.getAllTasks();
		System.out.println("in task list servlet");
		System.out.println(alltasks);
		request.setAttribute("alltasks",alltasks);
		
		RequestDispatcher rd=request.getRequestDispatcher("/task-home.jsp");
		rd.forward(request,response);
		
	}

}
