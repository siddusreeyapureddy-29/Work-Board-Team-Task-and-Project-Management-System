
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.vcube.model.TaskModel"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Task</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f5f3ff;
}

.header {
    background-color: #6c4ab6;
    color: white;
    padding: 20px 50px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
}

.logo-icon {
    background-color: white;
    color: #6c4ab6;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
}

.logo h1 {
    margin: 0;
    font-size: 24px;
}

.logout-btn {
    color: white;
    text-decoration: none;
    font-weight: bold;
}

.container {
    width: 500px;
    margin: 50px auto;
    background-color: white;
    padding: 35px;
    border-radius: 10px;
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
}

.container h2 {
    color: #6c4ab6;
    margin-bottom: 25px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input,
textarea {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

textarea {
    height: 120px;
    resize: vertical;
}

input:focus,
textarea:focus {
    border-color: #6c4ab6;
    outline: none;
}

.task-id {
    background-color: #eeeeee;
}

.buttons {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
}

.cancel-btn {
    background-color: #777;
    color: white;
    text-decoration: none;
    padding: 12px 25px;
    border-radius: 5px;
}

.update-btn {
    background-color: #6c4ab6;
    color: white;
    border: none;
    padding: 12px 25px;
    border-radius: 5px;
    cursor: pointer;
}

.update-btn:hover {
    background-color: #543596;
}

.footer {
    background-color: #6c4ab6;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: 80px;
}

</style>

</head>

<body>

<%
TaskModel task = (TaskModel) request.getAttribute("task");
%>

<header class="header">

    <div class="logo">

        <div class="logo-icon">✓</div>

        <h1>Task Management</h1>

    </div>

    <a href="LogoutServlet" class="logout-btn">
        Logout
    </a>

</header>


<div class="container">

    <h2>Update Task</h2>

    <form action="UpdateTaskServlet" method="post">

        <label>Task ID</label>

        <input type="text"
               name="id"
               value="<%= task.getTask_id() %>"
               class="task-id"
               readonly>


        <label>Task Name</label>

        <input type="text"
               name="taskname"
               value="<%= task.getTask_name() %>"
               required>


        <label>Task Description</label>

        <textarea name="taskdescription"
                  required><%= task.getTask_description() %></textarea>


        <label>Story Points</label>

        <input type="number"
               name="storypoints"
               value="<%= task.getStory_points() %>"
               min="1"
               required>


        <label>Assigned To</label>

        <input type="text"
               name="assignedto"
               value="<%= task.getAssigned_to() %>"
               required>


        <div class="buttons">

            <button type="submit" class="update-btn">
                Update Task
            </button>

        </div>

    </form>

</div>


<footer class="footer">

    <p>
        © 2026 Task Management System. All Rights Reserved.
    </p>

</footer>

</body>

</html>
