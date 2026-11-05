<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Task Management - Registration</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        /* ===== BODY ===== */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background-color: #f4f6f9;
            font-family: Arial, sans-serif;
        }

        /* ===== NAVBAR ===== */
        .navbar {
            background-color: #212529 !important;
        }

        .navbar-brand {
            color: white !important;
            font-weight: bold;
            font-size: 22px;
        }

        .navbar-nav .nav-link {
            color: white !important;
            margin-left: 15px;
        }

        .navbar-nav .nav-link:hover {
            color: #0d6efd !important;
        }

        /* ===== REGISTRATION SECTION ===== */
        .registration-section {
            min-height: 80vh;

            display: flex;
            align-items: center;
        }

        /* ===== REGISTRATION CARD ===== */
        .registration-card {
            background-color: white;

            padding: 30px;

            border-radius: 12px;

            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
        }

        .registration-card h2 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: bold;
            color: #212529;
        }

        /* ===== FORM LABELS ===== */
        .form-label {
            font-weight: 600;
        }

        /* ===== BUTTON ===== */
        .register-btn {
            width: 100%;
            margin-top: 10px;
        }

        /* ===== LOGIN LINK ===== */
        .login-text {
            text-align: center;
            margin-top: 20px;
        }

        .login-text a {
            text-decoration: none;
            font-weight: bold;
        }

        /* ===== FOOTER ===== */
        .footer {
            background-color: #212529;
            color: white;

            text-align: center;

            padding: 20px 0;

            margin-top: 20px;
        }

        .footer p {
            margin: 0;
        }

        /* ===== MOBILE ===== */
        @media (max-width: 768px) {

            .registration-section {
                min-height: auto;
                padding: 40px 15px;
            }

            .registration-card {
                padding: 25px;
            }

        }

    </style>

</head>

<body>

    <!-- ================= NAVBAR ================= -->

    <nav class="navbar navbar-expand-lg navbar-dark">

        <div class="container">

            <a class="navbar-brand" href="#" >
                Task Management System
            </a>

            <!-- Mobile Toggler -->

            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarMenu">

                <span class="navbar-toggler-icon"></span>

            </button>

            <!-- Navbar Menu -->

            <div class="collapse navbar-collapse" id="navbarMenu">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp">
                            Register
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">
                            Login
                        </a>
                    </li>

                </ul>

            </div>

        </div>

    </nav>


    <!-- ================= REGISTRATION SECTION ================= -->

    <section class="registration-section">

        <div class="container">

            <div class="row">

                <!-- LEFT 3 COLUMNS -->

                <div class="col-lg-3 col-md-2 col-12">
                </div>


                <!-- MIDDLE 6 COLUMNS -->

                <div class="col-lg-6 col-md-8 col-12">

                    <div class="registration-card">

                        <h2>Registration</h2>

                        <form action="RegisterUserServlet" method="post">

                            <!-- NAME -->

                            <div class="mb-3">

                                <label for="name" class="form-label">
                                    Name
                                </label>

                                <input type="text"
                                       class="form-control"
                                       id="name"
                                       name="name"
                                       placeholder="Enter your name"
                                       required>

                            </div>


                            <!-- EMAIL -->

                            <div class="mb-3">

                                <label for="email" class="form-label">
                                    Email
                                </label>

                                <input type="email"
                                       class="form-control"
                                       id="email"
                                       name="email"
                                       placeholder="Enter your email"
                                       required>

                            </div>


                            <!-- PASSWORD -->

                            <div class="mb-3">

                                <label for="password" class="form-label">
                                    Password
                                </label>

                                <input type="password"
                                       class="form-control"
                                       id="password"
                                       name="password"
                                       placeholder="Enter your password"
                                       required>

                            </div>


                            <!-- ROLE -->

                            <div class="mb-3">

                                <label for="role" class="form-label">
                                    Role
                                </label>

                                <select class="form-select"
                                        id="role"
                                        name="role"
                                        required>

                                    <option value="">
                                        Select Role
                                    </option>

                                    <option value="Developer">
                                        Developer
                                    </option>

                                    <option value="Manager">
                                        Manager
                                    </option>

                                    <option value="Scrum Master">
                                        Scrum Master
                                    </option>

                                </select>

                            </div>


                            <!-- REGISTER BUTTON -->

                            <button type="submit"
                                    class="btn btn-primary register-btn">

                                Register

                            </button>


                            <!-- LOGIN -->

                            <div class="login-text">

                                Already registered?

                                <a href="Login.jsp">
                                    Login
                                </a>

                            </div>

                        </form>

                    </div>

                </div>


                <!-- RIGHT 3 COLUMNS -->

                <div class="col-lg-3 col-md-2 col-12">
                </div>

            </div>

        </div>

    </section>


    <!-- ================= FOOTER ================= -->

    <footer class="footer">

        <div class="container">

            <p>
                &copy; 2026 Task Management System.
                All Rights Reserved.
            </p>

        </div>

    </footer>


    <!-- Bootstrap JavaScript -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>