<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>Insert title here</title>
</head>

<body>
  <!-- Start the Navigation section -->
  <div class="d-flex justify-content-between">
    <div>
       <img src="images/logo.jpg" alt="logo" width="150px" class="img-thumbnail border-0 mb-0">
    </div>

    <div>
       <img src="images/user.jpg" alt="logo" width="150px" class="img-thumbnail border-0 mb-0">
       <p>Henrey Anderson </p>
    </div>
 </div>
 

 <!-- Start the Navigation section -->
 <nav class="navbar navbar-expand-lg navbar-light bg-danger">
    <a style="font-size:xx-large; color: white; font-weight: 600; margin-left: 30px;" class="navbar-brand"
       href="#">digiTech</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
       aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
    </button>

    <div style="margin-left:180px;" class="collapse navbar-collapse" id="navbarNavAltMarkup">
       <div class="navbar-nav">

          <a style="font-size: x-large; font-weight: 600; margin-left: 30px;" class="nav-item nav-link active"
             href="#">About us <span class="sr-only">(current)</span></a>

          <a style="font-size: x-large; font-weight: 600; margin-left: 30px; " class="nav-item nav-link active"
             href="#">Our services</a>

          <a style="font-size: x-large; font-weight: 600; margin-left: 30px;  " class="nav-item nav-link active"
             href="#">Training</a>

          <a style="font-size: x-large; font-weight: 600; margin-left: 30px; color: aliceblue; text-decoration:underline;" class="nav-item nav-link active"
             href="#">Events</a>

          <a style="font-size: x-large; font-weight: 600; margin-left: 30px;" class="nav-item nav-link active"
             href="#">Privacy Policy</a>
       </div>
    </div>
   </nav>
  <!-- End the Navigation section -->


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
					Event</button>
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
					Event</button>
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