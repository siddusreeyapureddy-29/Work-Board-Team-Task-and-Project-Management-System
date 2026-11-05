package com.vcube.UserDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.vcube.model.TaskModel;
import com.vcube.utility.DBConnection;

public class TaskDAO {
	boolean status=false;
	Connection con=DBConnection.getDBConnection();
	public boolean createTask(TaskModel t) {
		try {
			PreparedStatement ps=con.prepareStatement("insert into task(task_name,task_description,story_points,assigned_to) values(?,?,?,?)");
			ps.setString(1, t.getTask_name());
			ps.setString(2, t.getTask_description());
			ps.setInt(3, t.getStory_points());
			ps.setString(4, t.getAssigned_to());
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
	public List<TaskModel> getAllTasks() {
		List<TaskModel> list=new ArrayList<>();
		try {
			PreparedStatement ps=con.prepareStatement("select * from task");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				TaskModel task=new TaskModel();
				task.setTask_id(rs.getInt("task_id"));
				task.setTask_name(rs.getString("task_name"));
				task.setTask_description(rs.getString("task_description"));
				task.setStory_points(rs.getInt("story_points"));
				task.setAssigned_to(rs.getString("assigned_to"));
				list.add(task);
				
			}
			System.out.println(list);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public TaskModel getTaskById(int taskid) {
		TaskModel task=new TaskModel();
		try {
			PreparedStatement ps=con.prepareStatement("select * from task where task_id=?");
			ps.setInt(1, taskid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				task.setTask_id(rs.getInt("task_id"));
				task.setTask_name(rs.getString("task_name"));
				task.setTask_description(rs.getString("task_description"));
				task.setStory_points(rs.getInt("story_points"));
				task.setAssigned_to(rs.getString("assigned_to"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return task;
	}
	public boolean deleteTaskById(int id) {
		try {
			PreparedStatement ps=con.prepareStatement("delete from task where task_id=? ");
			ps.setInt(1, id);
			int n=ps.executeUpdate();
			if(n>0) {
				System.out.println("Task deleted successfully");
				status=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public boolean updateTask(TaskModel utask) {
		try {
			PreparedStatement ps=con.prepareStatement("update task set task_name=?,task_description=?,story_points=?,assigned_to=? where task_id=?");
			ps.setString(1, utask.getTask_name());
			ps.setString(2, utask.getTask_description());
			ps.setInt(3, utask.getStory_points());
			ps.setString(4, utask.getAssigned_to());
			ps.setInt(5, utask.getTask_id());
			int n=ps.executeUpdate();
			if(n>0) {
				System.out.println("task updated successfully");
				status=true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
