<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>About us</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="CareMed demo project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">
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
							<div class="top_bar_item"><a href="#">FAQ</a></div>
							<div class="top_bar_item"><a href="<c:url value="/registration"/>">Registration for NGOs</a></div>
							<div class="top_bar_item"><a href="<c:url value="/login"/>">Login for NGOs</a></div>
							<div class="emergencies  d-flex flex-row align-items-center justify-content-start ml-auto">For Emergencies: +563 47558 623</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<nav class="main_nav ml-auto">
								<ul>
									<li><a href="<c:url value="/"/>">Home</a></li>
									<li><a href="<c:url value="/registeredNGOList"/>">Registered NGOs</a></li>
									<li><a href="<c:url value="/about"/>">About Us</a></li>
									<li><a href="<c:url value="/contacts"/>">Contacts</a></li>

								</ul>
							</nav>
							<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
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
							<a href="#">
								<div class="logo_content d-flex flex-column align-items-start justify-content-center">
									<div class="logo_line"></div>
									<div class="logo d-flex flex-row align-items-center justify-content-center">
										<div class="logo_text">Care<span>Med</span></div>
										<div class="logo_box">+</div>
									</div>
									<div class="logo_sub">Health Care Center</div>
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
				<div class="menu_appointment"><a href="#">Request an Appointment</a></div>
				<div class="menu_emergencies">For Emergencies: +563 47558 623</div>
			</div>

		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title">About <span>CareMed</span></div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="#">Home</a></li>
									<li>About Caremed</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- About -->

<div class="contact">
		<div class="container">
			<div class="row">
	<div class="col-lg-12 form_col">
	<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
             
             	<th>Headline_text</th>
                <th>Event name</th>
                <th>Severity</th>
                <th>Urgency</th>
                <th>Area Name</th>
                <th>Area Code</th>
                <th>Actions By Govt</th>
            </tr>
        </thead>
        <tbody>
          <tr>
          
      
          <td>
              <c:out value="${details.headline_text}"/>
          </td>
          <td>
              <c:out value="${details.event_desc}"/>
          </td>
          <td>
              <c:out value="${details.severity}"/>
          </td>
          <td>
              <c:out value="${details.urgency}" />
         </td>
         <td>
              <c:out value="${details.area_name}" />
         </td>
         <td>
              <c:out value="${details.area_cd}" />
         </td>
         <td>
         <form:form id="servicengo" class="contact_form" modelAttribute="registration" action="/disaster-management/servicerequest" method="GET">
         	<form:input path="Service1" id="medicine" type="submit" name="medicine" value="Allocate Medicine" />
           <form:input path="Service2" id="food" type="submit" name="food" value="Allocate Food" />
           <form:input path="Service3" id="clothes" type="submit" name="clothes" value="Allocate Clothes" />
         </form:form>
         </td>
         </tr>
            
        </tbody>
    </table>
               </div>
			</div>
		</div>
	</div>

	<!-- Testimonials -->

	<div class="testimonials">
		<div class="testimonials_background parallax-window" data-parallax="scroll" data-image-src="images/testimonials.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title section_title_light"><h2>Patient Testimonials</h2></div>
				</div>
			</div>
			<div class="row test_row">
				
				<!-- Testimonial -->
				<div class="col-lg-6 test_col">
					<div class="testimonial">
						<div class="test_icon d-flex flex-column align-items-center justify-content-center"><img src="images/quote.png" alt=""></div>
						<div class="test_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin. Aliquam nec dap ibus massa. Pellen tesque in luctus ex. Praesent luctus erat sit amet torto.</div>
						<div class="test_author d-flex flex-row align-items-center justify-content-start">
							<div class="test_author_image"><div><img src="images/test_1.jpg" alt=""></div></div>
							<div class="test_author_name"><a href="#">Claire Smith</a>, <span>Patient</span></div>
						</div>
					</div>
				</div>

				<!-- Testimonial -->
				<div class="col-lg-6 test_col">
					<div class="testimonial">
						<div class="test_icon d-flex flex-column align-items-center justify-content-center"><img src="images/quote.png" alt=""></div>
						<div class="test_text">Slor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin. Aliquam nec dap ibus massa. Pellen tesque in luctus ex. Praesent luctus erat sit amet tortor aliquam bibendum.</div>
						<div class="test_author d-flex flex-row align-items-center justify-content-start">
							<div class="test_author_image"><div><img src="images/test_2.jpg" alt=""></div></div>
							<div class="test_author_name"><a href="#">Mick Williams</a>, <span>Patient</span></div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Team -->

	<div class="team">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title"><h2>Meet Our Medical Team</h2></div>
				</div>
			</div>
			<div class="row team_row">
				
				<!-- Team Member -->
				<div class="col-lg-3 team_col">
					<div class="team_member">
						<div class="team_member_image d-flex flex-column align-items-center justify-content-end"><img src="images/team_1.png" alt=""></div>
						<div class="team_member_info">
							<div class="team_member_name"><a href="#">Dr. Melissa Smith</a></div>
							<div class="team_member_title">Cardiologist</div>
						</div>
					</div>
				</div>

				<!-- Team Member -->
				<div class="col-lg-3 team_col">
					<div class="team_member">
						<div class="team_member_image d-flex flex-column align-items-center justify-content-end"><img src="images/team_2.png" alt=""></div>
						<div class="team_member_info">
							<div class="team_member_name"><a href="#">Dr. Josh Henderson</a></div>
							<div class="team_member_title">Plastic Surgeon</div>
						</div>
					</div>
				</div>

				<!-- Team Member -->
				<div class="col-lg-3 team_col">
					<div class="team_member">
						<div class="team_member_image d-flex flex-column align-items-center justify-content-end"><img src="images/team_3.png" alt=""></div>
						<div class="team_member_info">
							<div class="team_member_name"><a href="#">Dr. Christinne Jones</a></div>
							<div class="team_member_title">Pediatrist</div>
						</div>
					</div>
				</div>

				<!-- Team Member -->
				<div class="col-lg-3 team_col">
					<div class="team_member">
						<div class="team_member_image d-flex flex-column align-items-center justify-content-end"><img src="images/team_4.png" alt=""></div>
						<div class="team_member_info">
							<div class="team_member_name"><a href="#">Dr. William Stan</a></div>
							<div class="team_member_title">General Practicioner</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Call to action -->

	<div class="cta">
		<div class="cta_background parallax-window" data-parallax="scroll" data-image-src="images/cta.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="cta_content text-center">
						<h2>Need a personal health plan?</h2>
						<p>Duis massa massa, mollis vel ullamcorper quis, finibus et urna. Aliquam ac eleifend metus. Ut sollicitudin risus ex</p>
						<div class="button cta_button"><a href="#">request a plan</a></div>
					</div>
				</div>
			</div>
		</div>		
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="footer_container">
			<div class="container">
				<div class="row">
					
					<!-- Footer - About -->
					<div class="col-lg-4 footer_col">
						<div class="footer_about">
							<div class="footer_logo_container">
								<a href="#" class="d-flex flex-column align-items-center justify-content-center">
									<div class="logo_content">
										<div class="logo d-flex flex-row align-items-center justify-content-center">
											<div class="logo_text">Care<span>Med</span></div>
											<div class="logo_box">+</div>
										</div>
										<div class="logo_sub">Health Care Center</div>
									</div>
								</a>
							</div>
							<div class="footer_about_text">
								<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum.</p>
							</div>
							<ul class="footer_about_list">
								<li><div class="footer_about_icon"><img src="images/phone-call.svg" alt=""></div><span>+45 677 8993000 223</span></li>
								<li><div class="footer_about_icon"><img src="images/envelope.svg" alt=""></div><span>office@template.com</span></li>
								<li><div class="footer_about_icon"><img src="images/placeholder.svg" alt=""></div><span>Main Str. no 45-46, b3, 56832, Los Angeles, CA</span></li>
							</ul>
						</div>
					</div>

					<!-- Footer - Links -->
					<div class="col-lg-4 footer_col">
						<div class="footer_links footer_column">
							<div class="footer_title">Useful Links</div>
							<ul>
								<li><a href="#">Testimonials</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Apply for a Job</a></li>
								<li><a href="#">Terms & Conditions</a></li>
								<li><a href="#">Our Partners</a></li>
								<li><a href="#">Services</a></li>
								<li><a href="#">Free services</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">News</a></li>
								<li><a href="#">Contact</a></li>
								<li><a href="#">Our Screening Program</a></li>
								<li><a href="#">FAQ</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer - News -->
					<div class="col-lg-4 footer_col">
						<div class="footer_news footer_column">
							<div class="footer_title">Useful Links</div>
							<ul>
								<li>
									<div class="footer_news_title"><a href="news.html">Aliquam ac eleifend metus</a></div>
									<div class="footer_news_date">March 10, 2018</div>
								</li>
								<li>
									<div class="footer_news_title"><a href="news.html">Donec in libero sit amet mi vulputate</a></div>
									<div class="footer_news_date">March 10, 2018</div>
								</li>
								<li>
									<div class="footer_news_title"><a href="news.html">Aliquam ac eleifend metus</a></div>
									<div class="footer_news_date">March 10, 2018</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="copyright_content d-flex flex-lg-row flex-column align-items-lg-center justify-content-start">
							<div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
							<div class="footer_social ml-lg-auto">
								<ul>
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>
							</div>
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
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/about.js"></script>
</body>
</html>