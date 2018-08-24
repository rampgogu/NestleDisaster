
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Save Life Save Smile</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="CareMed demo project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="./styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="./styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="./styles/responsive.css">
</head>
<body>
		<div class="newsbox">
		<h3 style="text-decoration:underline;">News Headlines</h3>
							<div class="vtickerButtons">
							<!--<button class="vis">SET VISIBLE 3</button>
							<button class="visall">See All</button>-->
							
							<button class="up fa fa-caret-square-o-up"></button>
							<button class="down fa fa-caret-square-o-down"></button>
							<button class="toggle fa fa-circle"></button>
							</div>
							<div class="vticker">
								<ul>
								<c:forEach items="${detailsList}" var="detailsList">
									<%-- <li><c:out value="${detailsList.ID}"/></li> --%>
									<li><c:out value="${detailsList.headline_text}"/><img src="images/alert.gif" width="20" height="20" alt="alert" style="padding-left:5px;"/></li>
<%-- 									<li><a href="<c:url value="/news"/>"><c:out value="${detailsList.event_desc}"/></a></li> --%>
									<li><a href="<c:url value='/news/${detailsList.ID}' />"><c:out value="${detailsList.event_desc}"/></a></li>
									<li><c:out value="${detailsList.st_name}"/></li>
								</c:forEach>
								</ul>
							</div>
							</div>
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
		<div class="home_slider_container">
			<!-- Home Slider -->
			<div class="owl-carousel owl-theme home_slider">
				<div class="owl-item">
					<div class="home_slider_background" style="background-image:url(images/home_background_6.jpg)"></div>
				</div>

			</div>

			<!-- Slider Progress -->
			<div class="home_slider_progress"></div>
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
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/jquery.easy-ticker.js"></script>

<script type="text/javascript">
$(document).ready(function(){

	var dd = $('.vticker').easyTicker({
		direction: 'up',
		easing: 'easeInOutBack',
		speed: 'slow',
		interval: 2000,
		height: 'auto',
		visible: 7,
		mousePause: 0,
		controls: {
			up: '.up',
			down: '.down',
			toggle: '.toggle',
			stopText: 'Stop !!!'
		}
	}).data('easyTicker');
	
	cc = 1;
	$('.aa').click(function(){
		$('.vticker ul').append('<li>' + cc + ' Triangles can be made easily using CSS also without any images. This trick requires only div tags and some</li>');
		cc++;
	});
	
	$('.vis').click(function(){
		dd.options['visible'] = 3;
		
	});
	
	$('.visall').click(function(){
		dd.stop();
		dd.options['visible'] = 0 ;
		dd.start();
	});
	
});
</script>
</body>
</html>