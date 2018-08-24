<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<title>Registration for NGOs</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="CareMed demo project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/contact.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header trans_200">
		
		<!-- Top Bar -->
		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
						<div class="top_bar_item"><a href="<c:url value="/"/>">Home</a></div>
							<div class="top_bar_item"><a href="<c:url value="/registration"/>">Registration for NGOs</a></div>
							<div class="top_bar_item"><a href="<c:url value="/governmentRegistration"/>">Registration for Government</a></div>
							<div class="top_bar_item"><a href="<c:url value="/login"/>">Login for NGOs</a></div>
							<div class="top_bar_item"><a href="<c:url value="/registeredNGOList"/>">Registered NGOs</a></div>
						</div>

					</div>
				</div>
			</div>
		</div>

		

		<!-- Logo -->
		<div class="logo_container_outer">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="logo_container">
							<a href="<c:url value="/"/>">
								<div class="logo_content d-flex flex-column align-items-start justify-content-center">
									<div class="logo_line"></div>
									<div class="logo d-flex flex-row align-items-center justify-content-center">
										<div class="logo_text">Save Life<span>Save Smile</span></div>
										<div class="logo_box">+</div>
									</div>
									
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>	
		</div>

	</header>

	<!-- Menu -->

	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<ul class="menu_list menu_mm">
					<li class="menu_item menu_mm"><a href="index.html">Home</a></li>
					<li class="menu_item menu_mm"><a href="about.html">About us</a></li>
					<li class="menu_item menu_mm"><a href="services.html">Services</a></li>
					<li class="menu_item menu_mm"><a href="news.html">News</a></li>
					<li class="menu_item menu_mm"><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="menu_extra">
				<div class="menu_appointment"><a href="<c:url value="/registration"/>">Registration for NGOs</a></div>
				<div class="menu_appointment"><a href="<c:url value="/GovernmentRegistration"/>">Registration for Government</a></div>
				<div class="menu_emergencies">For Emergencies: +563 47558 623</div>
			</div>

		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/contact.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title"><span>Disaster</span> Management</div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="#">Home</a></li>
									<li>Registration</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact">
		<div class="container">
		
		<c:if test="${successMessage!=null}">
		<div class="alert alert-success" role="alert" id="success_message">
			<i class="glyphicon glyphicon-thumbs-up"></i> Success!.
			<c:out value="${successMessage}"></c:out>
		</div>
	</c:if>

	<c:if test="${failMessage!=null}">
		<div class="alert alert-danger" role="alert" id="fail_message">
			<i class="glyphicon glyphicon-thumbs-down"></i> Fail!.
			<c:out value="${failMessage}"></c:out>
		</div>
	</c:if>
			<div class="row">

			

				<!-- Contact Form -->
				<div class="col-lg-12 form_col">
					<div class="contact_form_container">
						<form:form id="contact_form" class="contact_form" modelAttribute="GovernmentRegistration" action="saveGovt" method="post">
							<div class="row">
								<div class="col-md-6 input_col">
									<div class="input_container input_name"><form:input path="GovernmentStateName" type="text" class="contact_input" placeholder="GovernmentStateName" required="required"/></div>
								</div>
								<div class="col-md-6 input_col">
									<div class="input_container"><form:input path="email" type="email" class="contact_input" placeholder="E-mail" required="required"/></div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 input_col">
									<div class="input_container input_name"><form:input path="contact_No" type="text" class="contact_input" placeholder="Phone" required="required"/></div>
								</div>
								<div class="col-md-6 input_col">
									<div class="input_container"><form:input path="SPOC" type="text" class="contact_input" placeholder="Point of Contact" required="required"/></div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 input_col">
									<div class="input_container input_name"><form:input path="Password" type="password" class="contact_input" placeholder="Password" required="required"/></div>
								</div>
								<div class="col-md-6 input_col">
									<div class="input_container"><input type="Password" class="contact_input" placeholder="Re-Password" required="required"></div>
								</div>
							</div>
							<div class="input_container"><form:textarea path="Office_Address" class="contact_input contact_text_area" placeholder="Address" required="required"/></textarea></div>
							<form:button class="button contact_button"><a>Register</a></form:button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

		<footer class="footer">
		
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="copyright_content d-flex flex-lg-row flex-column align-items-lg-center justify-content-start">
							<div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> IBM All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
						
						</div>
					</div>
				</div>
			</div>			
		</div>
	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact.js"></script>
</body>
</html>