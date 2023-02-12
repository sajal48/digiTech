<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Index page</title>
    <%@ include file="header.jsp" %>
    <style>
        header {
            background-color: #f2f2f2;
            padding: 20px;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .logo {
            flex-basis: 20%;
        }

        .logo img {
            height: 100px;
            width: 100px;
        }

        .header-right {
            flex-basis: 80%;
            text-align: right;
        }

        .user-info {
            margin-right: 20px;
        }

        .user-name {
            font-weight: bold;
        }

        .logout-btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        nav li {
            float: left;
        }

        nav a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
        }

    </style>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Insert title here</title>
</head>

<body>
<!-- Start the Navigation section -->
<div class="d-flex justify-content-between">
<!-- Start the Layout section -->
<main class="mt-5"
      style="margin-left: auto; margin-right: auto; width: 80%;">
    <h2>
        <b>Upcomming Events and seminar...</b>
    </h2>
    <img src="images/dm.jpg" class="rounded mx-auto d-block"
         alt="Responsive image"> <br>
    <br>
    <div class="d-flex justify-content-around">
        <div>
            <h3>Date: 16 February 2023</h3>
            <h5>Time: 11 am</h5>
            <h5>Vanue: university Technology Malaysia</h5>
        </div>
        <br>
        <div>
            <button type="button" class="btn btn-danger mb-5">Join
                Event
            </button>
        </div>
    </div>
    <br> <br> <br> <br>
    <br>
    <br>
    <br> <img src="images/dm1.jpg" class="rounded mx-auto d-block"
              alt="Responsive image"> <br>
    <br>
    <div class="d-flex justify-content-around">
        <div>
            <h3>Date: 15 February 2023</h3>
            <h5>Time: 9 am - 5 pm</h5>
            <h5>Vanue:Albert Hall, London</h5>
        </div>
        <br>
        <div>
            <button type="button" class="btn btn-danger mb-5">Join
                Event
            </button>
        </div>
    </div>
</main>
<!-- End the Layout section -->


<br>
<br>
<br>
<!-- Start the Footer section -->
<footer>
    <div class=" w-100 d-flex nav-justified align-items-center" style=" background-color: black;">
        <div>
            <h1 style=" color: aliceblue; margin-left: 60px; ">Welcome to</h1>
        </div>

        <div style="margin-top: 20px;" class="w-100">
            <ul style="height: 300px; margin-top: 20px;"
                class="navbar-nav mr-5 mt-lg-0 ml-2 d-flex justify-content-center  ">
                <li class="nav-item active "><a style="font-size:larger; color: aliceblue;"
                                                class="nav-link font-weight-bold mr-4" href="#">About
                    Us</a></li>


                <li class="nav-item active"><a style="font-size:larger; color: aliceblue;"
                                               class="nav-link font-weight-bold mr-4" href="#">
                    Contact Us</a></li>


                <li class="nav-item active"><a style="font-size:larger ; color: aliceblue;"
                                               class="nav-link font-weight-bold mr-4" href="#">
                    Training</a></li>


                <li class="nav-item active"><a style="font-size:larger; color: aliceblue;"
                                               class="nav-link font-weight-bold mr-4" href="#">Events</a>
                </li>


                <li class="nav-item active"><a style="font-size:larger; color: aliceblue;"
                                               class="nav-link font-weight-bold mr-4" href="#">Privacy
                    Policy</a></li>
            </ul>
        </div>

        <div>
            <h1 style=" color: red; margin-right: 60px; ">DigiTech</h1>
        </div>
    </div>
</footer>
<!-- End the Layout section -->
</body>
</html>