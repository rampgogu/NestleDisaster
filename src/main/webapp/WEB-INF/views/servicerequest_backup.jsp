<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<title>Registered NGOs</title>
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
<link rel="stylesheet" type="text/css" href="styles/datatable.css">
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
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/contact.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title"><span>Disaster </span> Management</div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="#">Home</a></li>
									<li>Registered NGOs</li>
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
			<div class="row">
	<div class="col-lg-12 form_col">
				<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>NGO ID</th>
                <th>NGO name</th>
                <th>Contact No</th>
                <th>Email</th>
                <th>Service</th>
                
            </tr>
        </thead>
        <tbody>
		<c:if test="${not empty regs1}">
		
	        <c:forEach items="${regs1}" var="regs1">
	          <tr>
	          <td>
	              <c:out value="${regs1.ID}"/>
	          </td>
	          <td>
	              <c:out value="${regs1.NGOName}"/>
	          </td>
	          <td>
	              <c:out value="${regs1.contact_No}" />
	         </td>
			  <td>
	              <c:out value="${regs1.email}" />
	         </td>
			  <td>
	              <c:out value="${regs1.service2}" />
	         </td>
			 
	         </tr>
	       </c:forEach>
     	</c:if>
     	<c:if test="${not empty regs2}">
     		<c:forEach items="${regs2}" var="regs2">
	          <tr>
	          <td>
	              <c:out value="${regs2.ID}"/>
	          </td>
	          <td>
	              <c:out value="${regs2.NGOName}"/>
	          </td>
	          <td>
	              <c:out value="${regs2.contact_No}" />
	         </td>
			  <td>
	              <c:out value="${regs2.email}" />
	         </td>
	          <td>
	              <c:out value="${regs2.service1}" />
	         </td>
			 
			 
	         </tr>
	       </c:forEach>
     	
     	
     	</c:if>
     	<c:if test="${not empty regs3}">
     	<c:forEach items="${regs3}" var="regs3">
	          <tr>
	          <td>
	              <c:out value="${regs3.ID}"/>
	          </td>
	          <td>
	              <c:out value="${regs3.NGOName}"/>
	          </td>
	          <td>
	              <c:out value="${regs3.contact_No}" />
	         </td>
			  <td>
	              <c:out value="${regs3.email}" />
	         </td>
	          <td>
	              <c:out value="${regs3.service3}" />
	         </td>
			 
			 
	         </tr>
	       </c:forEach>
     	</c:if>
            
        </tbody>
    </table>
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

<script src="js/jquery-3.3.1.js"></script>
<script src="js/datatable.min.js"></script>
<script src="js/datatable.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact.js"></script>

</body>
</html>