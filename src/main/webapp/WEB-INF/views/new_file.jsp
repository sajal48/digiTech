<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<nav class="navbar navbar-expand-lg navbar-light ">
		<div class="collapse navbar-collapse d-flex justify-content-between"
			id="navbarTogglerDemo01">
			<div>
				<form class="form-inline my-lg-0">
					<img src="images/logo1.jpg" alt="logo"
						class="img-thumbnail w-50 border-0 mb-0">
				</form>
			</div>


			<div style="margin-left: 180px;" class="collapse navbar-collapse"
				 id="navbarNavAltMarkup">
				<div class="navbar-nav">

					<a style="font-size: x-large; font-weight: 600; margin-left: 30px;"
					   class="nav-item nav-link active" href="/about">About us <span
							class="sr-only">(current)</span></a> <a
						style="font-size: x-large; font-weight: 600; margin-left: 30px; color: aliceblue; text-decoration: underline;"
						class="nav-item nav-link active" href="/services">Our services</a> <a
						style="font-size: x-large; font-weight: 600; margin-left: 30px;"
						class="nav-item nav-link active" href="/trainings">Training</a> <a
						style="font-size: x-large; font-weight: 600; margin-left: 30px;"
						class="nav-item nav-link active" href="/events">Events</a> <a
						style="font-size: x-large; font-weight: 600; margin-left: 30px;"
						class="nav-item nav-link active" href="#">Privacy Policy</a>
				</div>
			</div>
		</div>
	</nav>


	<main>
		<img src="images/background.jpg" class="img-fluid  w-100"
			alt="Responsive image">

		<div class="d-flex justify-content-around">
			<div>
				<img src="images/img1.jpg" class="img-fluid w-100 mr-5 border-top-0"
					alt="Responsive image">
			</div>


			<div>
				<section>
					<div class="container-fluid mt-5">
						<div class="row">
							<form>
								<h2 class="text-primary font-weight-bold mb-4">
									<i>Register Now!</i>
								</h2>

								<!-- Username -->
								<div class="form-outline mb-4">
									<input class="form-control input-lg" type="text" id="form1"
										placeholder="Enter Username" />
								</div>


								<!-- Email input -->
								<div class="form-outline mb-4">
									<input class="form-control input-lg" type="email" id="form2"
										placeholder="Enter email address" />
								</div>


								<!-- Password input -->
								<div class="form-outline mb-4">
									<input class="form-control input-lg" type="password" id="form3"
										placeholder="Enter password" />
								</div>


								<!-- Re enter Password input -->
								<div class="form-outline mb-3">
									<input class="form-control input-lg" type="password" id="form4"
										placeholder="Renter password" />
								</div>


								<div class="text-center text-lg-start pt-3">
									<button type="button" class="btn btn-primary btn-lg"
										style="padding-left: 2.5rem; padding-right: 2.5rem;">
										Register</button>
									<br>
									<br>
									<p style="font-size: large; font-weight: 600;">Already have
										an account ?
									<p>
										<a style="font-size: large; font-weight: 600;" href="#!"
											class="link-danger">Sign In</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</section>
			</div>
		</div>
	</main>



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
</body>
</html>