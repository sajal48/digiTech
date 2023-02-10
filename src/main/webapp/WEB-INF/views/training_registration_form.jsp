<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>

<body>
	<!-- Start the Navigation section -->
	<div class="d-flex justify-content-between">
		<div>
			<img src="images/logo.jpg" alt="logo" width="150px"
				class="img-thumbnail border-0 mb-0">
		</div>

		<div>
			<img src="images/user.jpg" alt="logo" width="150px"
				class="img-thumbnail border-0 mb-0">
			<p>Henrey Anderson</p>
		</div>
	</div>

	<!-- Start the Navigation section -->
	<nav class="navbar navbar-expand-lg navbar-light bg-danger">
		<a
			style="font-size: xx-large; color: white; font-weight: 600; margin-left: 30px;"
			class="navbar-brand" href="#">digiTech</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div style="margin-left: 180px;" class="collapse navbar-collapse"
			 id="navbarNavAltMarkup">
			<div class="navbar-nav">

				<a style="font-size: x-large; font-weight: 600; margin-left: 30px;"
				   class="nav-item nav-link active" href="/about">About us</a> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px; color: aliceblue; text-decoration: underline;"
					class="nav-item nav-link active" href="/services">Our services</a> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					class="nav-item nav-link active" href="/trainings">Training</a><span
					class="sr-only">(current)</span> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					class="nav-item nav-link active" href="/events">Events</a> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					class="nav-item nav-link active" href="#">Privacy Policy</a>
			</div>
		</div>
	</nav>
	<!-- End the Navigation section -->


	<!-- Start the Layout section -->
	<main class="mt-5"
		style="margin-left: auto; margin-right: auto; width: 80%;">
		<br>
		<br> <br>

		<form style="margin: auto" class="w-50">
			<h2>
				<u> <b> Course Enrollment Form </b></u>
			</h2>
			<br> <br> <br>
			<h5>Full Name</h5>
			<input class="form-control" type="text" placeholder="Full Name"
				aria-label="default input example"> <br>
			<h5>Date of Birth</h5>
			<input class="form-control" type="number" placeholder="DD/MM/YYY"
				aria-label="default input example"> <br>
			<h5>Courses</h5>
			<br> <select class="form-select form-select-sm"
				aria-label=".form-select-sm example">
				<option selected>Choose Course</option>
				<option value=" SEO">SEO</option>
				<option value="BlockChain">BlockChain</option>
				<option value="Social Media Management">Social Media
					Management</option>
				<option value="FreeCourses">Free courses</option>
			</select>
			<h5>Address</h5>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label"></label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3"></textarea>
			</div>
			<br>

			<h5>Mobile Number</h5>
			<input class="form-control" type="text" placeholder="Mobile number"
				aria-label="default input example">
			<div class="mb-3">
				<br> <br>
				<h5>Email Address</h5>
				<label for="exampleFormControlInput1" class="form-label"></label> <input
					type="email" class="form-control" id="exampleFormControlInput1"
					placeholder="name@example.com">
			</div>
			<br> <br>
			<button type="button" class="btn btn-danger">Submit</button>
		</form>
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