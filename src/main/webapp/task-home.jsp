<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.List" %>
   <%@ page import="com.vcube.model.TaskModel" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Task Management</title>


<style>

/* ================= RESET ================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}


/* ================= BODY ================= */

body {
    min-height: 100vh;
    background: #f5f3ff;
}


/* ================= HEADER ================= */

.header {
    height: 75px;
    background: white;

    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 0 40px;

    box-shadow: 0 3px 15px rgba(0, 0, 0, 0.12);

    position: sticky;
    top: 0;
    z-index: 100;
}


/* ================= LOGO ================= */

.logo {
    display: flex;
    align-items: center;
    gap: 12px;
}


.logo-icon {
    width: 45px;
    height: 45px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 12px;

    background: linear-gradient(
        135deg,
        #667eea,
        #764ba2
    );

    color: white;

    font-size: 22px;
    font-weight: bold;
}


.logo h1 {
    color: #4b3ca7;
    font-size: 24px;
}


/* ================= LOGOUT ================= */

.logout-btn {
    text-decoration: none;

    padding: 10px 22px;

    border: 2px solid #764ba2;
    border-radius: 10px;

    color: #764ba2;

    font-size: 14px;
    font-weight: bold;

    transition: 0.3s;
}


.logout-btn:hover {
    background: #764ba2;
    color: white;

    transform: translateY(-2px);

    box-shadow:
        0 6px 15px rgba(118, 75, 162, 0.25);
}


/* ================= MAIN ================= */

.main {
    width: 92%;
    max-width: 1200px;

    margin: 0 auto;

    padding: 35px 0;
}


/* ================= TOP SECTION ================= */

.top-section {
    display: flex;

    align-items: center;
    justify-content: space-between;

    margin-bottom: 30px;
}


.page-title h2 {
    color: #3f356d;

    font-size: 27px;

    margin-bottom: 6px;
}


.page-title p {
    color: #777;

    font-size: 14px;
}


/* ================= CREATE BUTTON ================= */

.create-btn {
    display: inline-flex;

    align-items: center;

    gap: 8px;

    padding: 13px 22px;

    background: linear-gradient(
        135deg,
        #667eea,
        #764ba2
    );

    color: white;

    text-decoration: none;

    border-radius: 12px;

    font-size: 15px;
    font-weight: bold;

    border: none;

    cursor: pointer;

    box-shadow:
        0 7px 18px rgba(102, 126, 234, 0.3);

    transition: 0.3s;
}


.create-btn:hover {
    transform: translateY(-3px);

    box-shadow:
        0 10px 25px rgba(102, 126, 234, 0.4);
}


.plus {
    font-size: 22px;
    line-height: 15px;
}


/* ================= EMPTY TASK AREA ================= */

.task-container {
    width: 100%;

    min-height: 350px;

    background: white;

    border-radius: 18px;

    padding: 40px;

    box-shadow:
        0 8px 25px rgba(0, 0, 0, 0.08);

    border: 1px solid #eeeaff;

    display: flex;

    align-items: center;

    justify-content: center;

    text-align: center;
}


.empty-message h3 {
    color: #4b3ca7;

    font-size: 22px;

    margin-bottom: 10px;
}


.empty-message p {
    color: #777;

    font-size: 14px;
}


/* ================= RESPONSIVE ================= */

@media (max-width: 700px) {

    .header {
        padding: 0 20px;
    }


    .logo h1 {
        font-size: 20px;
    }


    .main {
        width: 94%;
    }


    .top-section {
        flex-direction: column;

        align-items: flex-start;

        gap: 20px;
    }


    .create-btn {
        width: 100%;

        justify-content: center;
    }


    .task-container {
        padding: 25px 15px;
    }

}
/*================= TABLE CONTAINER ================= */ 
	.table-container {
			 width: 100%;
			 
			 background: white;
			 
			 border-radius: 18px;
			  
			 adding: 25px;
			  
			 box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
			  
			 border: 1px solid #eeeaff; overflow-x: auto;
	}
/* ================= TABLE ================= */ 
	.task-table {
		 width: 100%;
		 
		 border-collapse:collapse;
		 
		 min-width: 850px;
	  }
 /* ================= TABLE HEADER ================= */ 
 	.task-table th { 
	 	background: #f3f0ff;
	 	 
	 	color: #4b3ca7;
	 	
	 	 padding: 15px 14px;
	 	 
	 	  text-align: left;
	 	   
	 	  font-size: 14px;
	 	  
	 	   font-weight: bold;
	 	   
	 	    border-bottom: 2px solid #e4ddff;
 	  }
 /* ================= TABLE DATA ================= */ 
 .task-table td { 
 	padding: 16px 14px;
 	
 	 color: #555; 
 	 
 	 font-size: 14px; 
 	 
 	 border-bottom: 1px solid #eeeeee; 
 	 
 	 vertical-align: middle;
 	 
 }
 	  
/* ================= TABLE ROW ================= */ 
.task-table tr:hover {

 	background: #faf9ff;
  
 } 

/* ================= TASK ID ================= */ 
.task-id {

	 color: #764ba2; 
	 
	 font-weight: bold;
 
  }
  
   /* ================= TASK NAME ================= */
   
 .task-name {
 
	  color: #3f356d;
	  
	   font-weight: bold;
   
 }
    
/* ================= DESCRIPTION ================= */ 

.description {

	 max-width: 350px;
	 
	  line-height: 1.5; 
	  
  }
  
/* ================= STORY POINTS ================= */

 .story-points { 
 
	 display: inline-block;
	 
	  padding: 6px 12px;
	  
	   background: #eeeaff; 
	   
	   color: #5b45b5;
	   
	    border-radius: 20px;
	    
	     font-weight: bold;
     
      }
      
       /* ================= ASSIGNED USER ================= */
       
        .assigned-user { 
        
	        color: #444;
	        
	         font-weight: 500; 
         
         } 
         /* ================= ACTION ================= */ 
         
         .action-links {
         
	          display: flex;
	          
	           gap: 8px;
	           
            }
  /* ================= UPDATE ================= */ 
  
  .update-btn {
  
	   text-decoration: none;
	   
	    padding: 7px 13px; 
	    
	    background: #eeeaff; 
	    
	    color: #5b45b5;
	    
	     border-radius: 7px; 
	     
	     font-size: 13px; 
	     
	     font-weight: bold; 
	     
	     transition: 0.3s;
     
      } 
      
      .update-btn:hover{
      
	       background: #5b45b5;
	       
	        color: white;
        
         }
         
          /* ================= DELETE ================= */
          
           .delete-btn {
           
	            text-decoration: none; 
	            
	            padding: 7px 13px; 
	            
	            background: #ffecec;
	            
	             color: #d9534f;
	             
	              border-radius: 7px;
	              
	               font-size: 13px; 
	               
	               font-weight: bold;
	               
	                transition: 0.3s; 
                
                }
                
                 .delete-btn:hover {
                 
	                  background: #d9534f; 
	                  
	                  color: white;
                  
                   } 

</style>

</head>


<body>


<!-- ================= HEADER ================= -->

<header class="header">

<!-- LOGO -->

<div class="logo">

    <div class="logo-icon">
        ✓
    </div>

    <h1>
        Task Management
    </h1>

</div>


<!-- LOGOUT -->

<a href="LogoutServlet" class="logout-btn">
    Logout
</a>

</header>




<!-- ================= MAIN ================= -->

<main class="main">

<!-- ================= TOP SECTION ================= -->

<div class="top-section">

    <div class="page-title">

        <h2>
            My Tasks
        </h2>

        <p>
            Manage and track your team's tasks
        </p>

    </div>


    <!-- CREATE NEW TASK -->

    <form action="task-form.jsp" method="get">

        <button type="submit" class="create-btn">

            <span class="plus">
                ＋
            </span>

            Create New Task

        </button>

    </form>

</div>



<!-- ================= TASK TABLE ================= -->


<div class="table-container">

    <table class="task-table">

        <thead>

            <tr>

                <th>Task ID</th>

                <th>Task Name</th>

                <th>Task Description</th>

                <th>Story Points</th>

                <th>Assigned To</th>

                <th>Action</th>

            </tr>

        </thead>


        <tbody>

        <% List<TaskModel> allTasks =
        	    (List<TaskModel>) request.getAttribute("alltasks");
        
        if(allTasks != null && !allTasks.isEmpty()) {


        for(TaskModel task : allTasks) {

        %>


            <tr>

                <td>
                    <span class="task-id">
                        #<%= task.getTask_id() %>
                    </span>
                </td>


                <td>
                    <span class="task-name">
                        <%= task.getTask_name() %>
                    </span>
                </td>


                <td class="description">
                    <%= task.getTask_description() %>
                </td>


                <td>
                    <span class="story-points">
                        <%= task.getStory_points() %>
                    </span>
                </td>


                <td>
                    <span class="assigned-user">
                        <%= task.getAssigned_to() %>
                    </span>
                </td>


                <!-- ================= ACTION ================= -->

                <td>

                    <div class="action-links">

                        <a
                            href="UpdateTaskServlet?id=<%= task.getTask_id() %>"
                            class="update-btn">
                            Update
                        </a>


                        <a
                            href="DeleteTaskServle?id=<%= task.getTask_id() %>"
                            class="delete-btn"
                            onclick="return confirm('Are you sure you want to delete this task?');">
                            Delete
                        </a>

                    </div>

                </td>

            </tr>


       <%
    }

} else {
%>


<%
}
%>

        </tbody>

    </table>

</div>


</main>

</body>

</html>