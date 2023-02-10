<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
					style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					class="nav-item nav-link active" href="/services">Our services</a> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px; color: aliceblue; text-decoration: underline;"
					class="nav-item nav-link active" href="/trainings">Training</a><span
					class="sr-only">(current)</span> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					class="nav-item nav-link active" href="/events">Events</a> <a
					style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					class="nav-item nav-link active" href="#">Privacy Policy</a>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<!-- End the Navigation section -->


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