<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Create Task - Task Management</title>

<!-- Bootstrap CSS -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<style>

/* ================= RESET ================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #f7f5ff;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

/* ================= NAVBAR ================= */

.navbar {
    background: white !important;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
}

.navbar-brand {
    font-weight: bold;
    color: #6c4cff !important;
    font-size: 22px;
}

.nav-link {
    color: #333 !important;
    font-weight: 500;
}

.nav-link:hover {
    color: #6c4cff !important;
}

/* ================= MAIN ================= */

.main-container {
    flex: 1;
    padding: 50px 15px;
}

.page-title {
    text-align: center;
    margin-bottom: 30px;
}

.page-title h2 {
    font-size: 32px;
    font-weight: bold;
    color: #222;
}

.page-title p {
    color: #777;
    margin-top: 8px;
}

/* ================= FORM CARD ================= */

.form-card {
    background: white;
    max-width: 700px;
    margin: auto;
    padding: 35px;
    border-radius: 15px;

    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
}

.form-label {
    font-weight: 600;
    color: #333;
}

.form-control {
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 12px;
}

.form-control:focus {
    border-color: #6c4cff;
    box-shadow: 0 0 0 0.2rem rgba(108, 76, 255, 0.15);
}

/* ================= BUTTONS ================= */

.button-container {
    display: flex;
    gap: 15px;
    margin-top: 25px;
}

.create-btn {
    background: #6c4cff;
    color: white;
    border: none;
    padding: 12px 25px;
    border-radius: 8px;
    font-weight: 600;
    cursor: pointer;
    flex: 1;
}

.create-btn:hover {
    background: #5638df;
    color: white;
}

.cancel-btn {
    background: #eee;
    color: #333;
    padding: 12px 25px;
    border-radius: 8px;
    text-decoration: none;
    text-align: center;
    font-weight: 600;
    flex: 1;
}

.cancel-btn:hover {
    background: #ddd;
    color: #222;
}

/* ================= FOOTER ================= */

.footer {
    background: #222;
    color: #ddd;
    text-align: center;
    padding: 20px;
    margin-top: auto;
}

.footer p {
    margin: 0;
    font-size: 14px;
}

/* ================= RESPONSIVE ================= */

@media (max-width: 576px) {

    .main-container {
        padding: 30px 15px;
    }

    .form-card {
        padding: 25px 20px;
    }

    .page-title h2 {
        font-size: 26px;
    }

    .button-container {
        flex-direction: column;
    }

}

</style>

</head>

<body>


<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg">

    <div class="container">

        <a class="navbar-brand" href="taskhome.jsp">
            Task Management System
        </a>


        <!-- TOGGLER -->

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarMenu"
            aria-controls="navbarMenu"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>


        <!-- NAVIGATION -->

        <div class="collapse navbar-collapse" id="navbarMenu">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="taskhome.jsp">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="LogoutServlet">
                        Logout
                    </a>
                </li>

            </ul>

        </div>

    </div>

</nav>



<!-- ================= MAIN ================= -->

<div class="main-container">

    <div class="page-title">

        <h2>Create New Task</h2>

        <p>
            Add a new task to your task management system
        </p>

    </div>



    <!-- ================= FORM ================= -->

    <div class="form-card">

        <form action="CreateTaskServlet" method="post">


            <!-- TASK NAME -->

            <div class="mb-3">

                <label for="taskName" class="form-label">
                    Task Name
                </label>

                <input
                    type="text"
                    class="form-control"
                    id="taskName"
                    name="taskname"
                    placeholder="Enter task name"
                    maxlength="100"
                    required>

            </div>



            <!-- TASK DESCRIPTION -->

            <div class="mb-3">

                <label for="taskDescription" class="form-label">
                    Task Description
                </label>

                <textarea
                    class="form-control"
                    id="taskDescription"
                    name="taskdescription"
                    rows="5"
                    maxlength="500"
                    placeholder="Enter task description"
                    required></textarea>

            </div>



            <!-- STORY POINTS -->

            <div class="mb-3">

                <label for="storyPoints" class="form-label">
                    Story Points
                </label>

                <input
                    type="number"
                    class="form-control"
                    id="storyPoints"
                    name="storypoints"
                    placeholder="Enter story points"
                    min="1"
                    required>

            </div>



            <!-- ASSIGNED TO -->

            <div class="mb-3">

                <label for="assignedTo" class="form-label">
                    Assigned To
                </label>

                <input
                    type="text"
                    class="form-control"
                    id="assignedTo"
                    name="assignedto"
                    placeholder="Enter User Name"
                    min="1"
                    required>

            </div>



            <!-- BUTTONS -->

            <div class="button-container">

                <button
                    type="submit"
                    class="create-btn">

                    Create Task

                </button>


                <a
                    href="task-home.jsp"
                    class="cancel-btn">

                    Cancel

                </a>

            </div>


        </form>

    </div>

</div>



<!-- ================= FOOTER ================= -->

<footer class="footer">

    <p>
        © 2026 Task Management System. All Rights Reserved.
    </p>

</footer>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>