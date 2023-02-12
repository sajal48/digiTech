<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
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
    <title>Insert title here</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
</head>


<body>


<!-- Start the Layout section -->
<main>
    <img
            style="display: block; margin-left: auto; margin-right: auto; width: 80%;"
            src="images/users.jpg" alt="" width="900px">

    <div style="margin-left: auto; margin-right: auto; width: 80%;"
         class="row row-cols-1 row-cols-md-3 g-4 mt-5">
        <div class="col">
            <div class="card h-100">
                <img src="images/seo.jpg" class="card-img-top" alt="SEO">
                <div class="card-body">
                    <h5 class="card-title">SEO Training</h5>
                    <p class="card-text">SEO stands for “search engine
                        optimization.” In simple terms, it means the process of improving
                        your site to increase its visibility when people search for
                        products or services related to your business in Google, Bing,
                        and other search engines.</p>
                </div>
                <div class="card-footer bg-danger ">
                    <p class="text-light"
                       style="text-align: center; font-size: x-large; font-weight: 600;"
                       class="text-muted">Enroll Now</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="images/smm.png" class="card-img-top" alt="social">
                <div class="card-body">
                    <h5 class="card-title">Social Media Marketing</h5>
                    <p class="card-text">Social marketing efforts make it easier
                        to change behavior by making sure the necessary supports are not
                        only available, but also easily accessible to the most people
                        possible. Day by day it's demand increasing.</p>
                </div>
                <div class="card-footer bg-danger ">
                    <p class="text-light"
                       style="text-align: center; font-size: x-large; font-weight: 600;"
                       class="text-muted">Enroll Now</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="images/bc1.jpg" class="card-img-top" alt="BlockChain"
                     width="50%">
                <div class="card-body">
                    <h5 class="card-title">BlockChain Training</h5>
                    <p class="card-text">Blockchain helps in the verification and
                        traceability of multistep transactions needing verification and
                        traceability. It can provide secure transactions, reduce
                        compliance costs, and speed up data transfer processing.</p>
                </div>
                <div class="card-footer bg-danger ">
                    <p class="text-light"
                       style="text-align: center; font-size: x-large; font-weight: 600;"
                       class="text-muted">Enroll Now</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="images/ft1.png" class="card-img-top" alt="freeCourses">
                <div class="card-body">
                    <h5 class="card-title">Free Courses</h5>
                    <p class="card-text">These courses will help you to know the
                        basic concept of IT world. These course can be the grate
                        foundation for you to the IT world. Not only that these course
                        will help you to know our teaching process. Hopefully you will
                        enjoy our courses!!!</p>
                </div>
                <div class="card-footer bg-danger ">
                    <p class="text-light"
                       style="text-align: center; font-size: x-large; font-weight: 600;"
                       class="text-muted">Enroll Now</p>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-5" style="margin-left: auto; margin-right: auto; width: 80%;" class="mt-5 text-success">
        <h2 style=" font-size: 40px" class="text-success">Ask your Question</h2>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label"></label>
            <textarea class="form-control" id="exampleFormControlTextarea1"
                      rows="20" cols="30"></textarea>
        </div>
        <button style="color:white; font-size: x-large" type="button" class="btn btn-danger">Submit</button>
    </div>

</main>
<!-- End the Layout section -->


<br>
<br>
<br>
<!-- Start the Footer section -->
<footer>
    <div class=" w-100 d-flex nav-justified align-items-center"
         style="background-color: black;">
        <div>
            <h1 style="color: aliceblue; margin-left: 60px;">Welcome to</h1>
        </div>

        <div style="margin-top: 20px;" class="w-100">
            <ul style="height: 300px; margin-top: 20px;"
                class="navbar-nav mr-5 mt-lg-0 ml-2 d-flex justify-content-center  ">
                <li class="nav-item active "><a
                        style="font-size: larger; color: aliceblue;"
                        class="nav-link font-weight-bold mr-4" href="#">About Us</a></li>


                <li class="nav-item active"><a
                        style="font-size: larger; color: aliceblue;"
                        class="nav-link font-weight-bold mr-4" href="#"> Contact Us</a></li>


                <li class="nav-item active"><a
                        style="font-size: larger; color: aliceblue;"
                        class="nav-link font-weight-bold mr-4" href="#"> Training</a></li>


                <li class="nav-item active"><a
                        style="font-size: larger; color: aliceblue;"
                        class="nav-link font-weight-bold mr-4" href="#">Events</a></li>


                <li class="nav-item active"><a
                        style="font-size: larger; color: aliceblue;"
                        class="nav-link font-weight-bold mr-4" href="#">Privacy Policy</a></li>
            </ul>
        </div>

        <div>
            <h1 style="color: red; margin-right: 60px;">DigiTech</h1>
        </div>
    </div>
</footer>
<!-- End the Layout section -->

</body>
</html>