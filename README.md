# WorkBoard – Team Task & Project Management System

## 📌 Project Overview

**WorkBoard** is a web-based team task and project management application developed using Java technologies. It helps teams organize, assign, track, and manage their tasks efficiently through a centralized platform.

The application provides user authentication and task management functionalities, allowing users to create new tasks, view existing tasks, update task information, assign tasks to team members, and delete tasks.

## 🚀 Features

- **User Registration:** Allows new users to register with their details.
- **User Login:** Provides authentication to access the application.
- **Session Management:** Maintains user sessions and supports secure logout.
- **Task Creation:** Allows users to create tasks with task name, description, story points, and assignee details.
- **View Tasks:** Displays the available tasks in a structured table.
- **Update Tasks:** Enables users to modify existing task information.
- **Delete Tasks:** Allows users to remove tasks from the system.
- **Task Assignment:** Supports assigning tasks to team members.
- **Responsive UI:** Provides a user-friendly interface using Bootstrap.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java | Backend application development |
| JSP | Dynamic web page development |
| Servlets | Request handling and application control |
| JDBC | Database connectivity |
| MySQL | Relational database management |
| HTML5 | Web page structure |
| CSS3 | Styling and layout |
| Bootstrap 5 | Responsive user interface |
| Apache Tomcat 11 | Application server |
| Eclipse IDE | Development environment |

## 🏗️ Project Architecture

The application follows an MVC-style architecture with DAO-based database operations.

WorkBoard
│
├── src/main/java
│   └── com.vcube
│       ├── controller
│       │   ├── LoginServlet.java
│       │   ├── RegisterServlet.java
│       │   ├── NewTaskServlet.java
│       │   ├── UpdateTaskServlet.java
│       │   ├── DeleteTaskServlet.java
│       │   ├── TaskListServlet.java
│       │   └── LogoutServlet.java
│       │
│       ├── model
│       │   ├── User.java
│       │   └── TaskModel.java
│       │
│       ├── UserDAO
│       │   ├── UserDAO.java
│       │   └── TaskDAO.java
│       │
│       └── DBConnection.java
│
├── src/main/webapp
│   ├── login.jsp
│   ├── register.jsp
│   ├── task-home.jsp
│   ├── task-form.jsp
│   ├── UpdateTaskForm.jsp
│   └── assets
│       ├── css
│       ├── js
│       └── images
│
└── README.md


*Note: Adjust the folder names and filenames above to match your actual project structure.*

## 🗄️ Database Configuration

**Database Name:** taskmanagement

### Users Table


CREATE TABLE users (
    userId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);


### Task Table


CREATE TABLE task (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(100) NOT NULL,
    task_description VARCHAR(500) NOT NULL,
    story_points INT NOT NULL,
    assigned_to VARCHAR(100) NOT NULL
);


## ⚙️ Installation and Setup

### Prerequisites

Make sure you have installed:

- JDK 17 or compatible Java version
- Eclipse IDE for Enterprise Java and Web Developers
- Apache Tomcat 11
- MySQL Server
- MySQL Connector/J

### Steps to Run the Project

1. Clone the repository:

2. Open Eclipse IDE.

3. Import the project as an existing Dynamic Web Project or Maven project, depending on its structure.

4. Create a MySQL database:


   CREATE DATABASE taskmanagement;
 

5. Create the required tables using the SQL scripts provided above.

6. Configure your MySQL database connection details in the DBConnection class.

7. Add the MySQL Connector/J library to the project.

8. Configure Apache Tomcat 11 in Eclipse.

9. Run the project on the Tomcat server.

10. Open the application in your browser:


   http://localhost:8080/WorkBoard/


## 🔄 Application Workflow

User Registration
       ↓
User Login
       ↓
Task Management Dashboard
       ↓
Create / View / Update / Delete Tasks
       ↓
Logout


## 🎯 Learning Outcomes

Through this project, I gained practical experience in:

- Java web application development.
- Object-Oriented Programming concepts.
- Servlet and JSP integration.
- JDBC connectivity with MySQL.
- MVC-style application architecture.
- DAO pattern for database operations.
- HTTP request and response handling.
- Session management and authentication.
- CRUD operations and SQL queries.
- Responsive web development using Bootstrap.

## 🔮 Future Enhancements

- Implement role-based authorization.
- Add project creation and team management modules.
- Introduce task status tracking (To Do, In Progress, Completed).
- Add task deadlines and priority levels.
- Implement search, filtering, and sorting.
- Add dashboard analytics and progress reports.
- Implement password encryption and stronger authentication.



**Project:** WorkBoard – Team Task & Project Management System

---

⭐ If you find this project useful, feel free to star the repository!
