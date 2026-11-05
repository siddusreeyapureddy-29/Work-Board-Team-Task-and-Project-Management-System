<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Task Management - Login</title>


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


        /* ===== LOGIN SECTION ===== */

        .login-section {
            min-height: 80vh;

            display: flex;
            align-items: center;
        }


        /* ===== LOGIN CARD ===== */

        .login-card {
            background-color: white;

            padding: 30px;

            border-radius: 12px;

            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
        }


        /* ===== LOGIN HEADING ===== */

        .login-card h2 {
            text-align: center;

            margin-bottom: 25px;

            font-weight: bold;

            color: #212529;
        }


        /* ===== FORM LABEL ===== */

        .form-label {
            font-weight: 600;
        }


        /* ===== LOGIN BUTTON ===== */

        .login-btn {
            width: 100%;

            margin-top: 10px;
        }


        /* ===== REGISTER LINK ===== */

        .register-text {
            text-align: center;

            margin-top: 20px;
        }

        .register-text a {
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

            .login-section {
                min-height: auto;

                padding: 40px 15px;
            }

            .login-card {
                padding: 25px;
            }

        }

    </style>

</head>


<body>


    <!-- ================= NAVBAR ================= -->

    <nav class="navbar navbar-expand-lg navbar-dark">

        <div class="container">


            <!-- BRAND -->

            <a class="navbar-brand" href="#">
                Task Management System
            </a>


            <!-- MOBILE TOGGLER -->

            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarMenu">

                <span class="navbar-toggler-icon"></span>

            </button>


            <!-- NAVBAR MENU -->

            <div class="collapse navbar-collapse" id="navbarMenu">

                <ul class="navbar-nav ms-auto">


                    <li class="nav-item">

                        <a class="nav-link" href="registration.jsp">
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



    <!-- ================= LOGIN SECTION ================= -->

    <section class="login-section">

        <div class="container">

            <div class="row">


                <!-- LEFT 3 COLUMNS -->

                <div class="col-lg-3 col-md-2 col-12">
                </div>



                <!-- MIDDLE 6 COLUMNS -->

                <div class="col-lg-6 col-md-8 col-12">

                    <div class="login-card">


                        <h2>
                            Login
                        </h2>



                        <!-- LOGIN FORM -->

                        <form action="LoginUserServlet" method="post">


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



                            <!-- LOGIN BUTTON -->

                            <button type="submit"
                                    class="btn btn-primary login-btn">

                                Login

                            </button>



                            <!-- REGISTER LINK -->

                            <div class="register-text">

                                Don't have an account?

                                <a href="registration.jsp">
                                    Register
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