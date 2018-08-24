<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>News Details</title>
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
  <style>
       /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
.black_overlay {
  display: none;
  position: absolute;
  top: 0%;
  left: 0%;
  width: 100%;
  height: 100%;
  background-color: black;
  z-index: 1001;
  -moz-opacity: 0.8;
  opacity: .80;
  filter: alpha(opacity=80);
}
.white_content {
  display: none;
  position: absolute;
  top: 25%;
  left: 25%;
  width: 50%;
  height: 50%;
  padding: 16px;
  border: 16px solid orange;
  background-color: white;
  z-index: 1002;
  overflow: auto;
}
.close{
float:right;
width:30px;
height:30px;
background:url(images/close.png) top right no-repeat;
text-align:right;
outline:0;
filter:alpha(Opacity=70);
opacity:.7;
-webkit-transition:opacity .2s;
-moz-transition:opacity .2s;
-o-transition:opacity .2s;transition:opacity .2s}
</style>
</head>

<body>
  </p>
  <div id="light" class="white_content"><div id="map"></div> This is the lightbox content.
  
  <a href="javascript:void(0)" class="close" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><img src="images/close.png" />hi</a>
  </div>
  <div id="fade" class="black_overlay"></div>
</body>
 <script>

      function initMap() {
	  document.getElementById('light').style.display='block';
	  document.getElementById('fade').style.display='block';
        var myLatLng = {lat: 36.67, lng: -116.55};  

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 6,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hello World!'
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-Ja0SVTIm46UW6x06uLCuxmoUjVOMrE8">
    </script>
<div class="contact">
		<div class="container">
			<div class="row">
	<div class="col-lg-12 form_col">
	<br>
	<table id="example" class="display" style="width:100%" border=2 >
        <thead>
            <tr>
             
             	<th style="padding:10px;">Headline</th>
                <th style="padding:10px;">Event name</th>
                <th style="padding:10px;">Severity</th>
                <th style="padding:10px;">Urgency</th>
                <th style="padding:10px;">Area Name</th>
            	<th style="padding:10px;">Area Code</th>
                <th style="padding:10px;">Zip Code</th>
                <th style="padding:10px;">Total Population</th>
               <!--  <th>Kids Male</th>
                <th>Kids Female</th>
                <th>Adults Male</th>
                <th>Adults Female</th> -->
                <th style="padding:10px;">Senior Citizen Male</th>
                <th style="padding:10px;">Senior Citizen Female</th>
                 
                <th>Actions By Govt</th>
            </tr>
        </thead>
        <tbody>
          <tr>
         <%--   <td>
              <c:out value="${details.KidsMale}" />
         </td>
         <td>
              <c:out value="${details.KidsFemale}" />
         </td>
         <td>
              <c:out value="${details.AdultsMale}" />
         </td>
         <td>
              <c:out value="${details.AdultsFemale}" />
         </td> --%>
        
      
          <td style="padding:10px;">
              <c:out value="${details.headline_text}"/>
          </td>
          <td style="padding:10px;">
              <c:out value="${details.event_desc}"/>
          </td>
          <td style="padding:10px;">
              <c:out value="${details.severity}"/>
          </td>
          <td style="padding:10px;">
              <c:out value="${details.urgency}" />
         </td>
         <td style="padding:10px;">
              <c:out value="${details.area_name}" />
         </td>
          <td style="padding:10px;">
              <c:out value="${details.area_cd}" />
         </td>
         <td style="padding:10px;">
              <c:out value="${details.ZIPCODE}" />
         </td>
         <td style="padding:10px;">
              <c:out value="${details.total_popultion}" />
         </td>   
          <td style="padding:10px;">
              <c:out value="${details.SSmale}" />
         </td>
         <td style="padding:10px;">
              <c:out value="${details.SSFemale}" />
         </td>  
        
         
         <td style="padding:10px;">
         <form:form id="servicengo" class="contact_form" modelAttribute="registration" action="/disaster-management/servicerequest" method="GET">
          <form:input path="Service1" id="medicine" type="submit" name="medicine" value="Allocate Medicine" />
           <form:input path="Service2" id="food" type="submit" name="food" value="Allocate Food" />
           <form:input path="Service3" id="clothes" type="submit" name="clothes" value="Allocate Clothes" />
           <br/>
           <a href="javascript:void(0)" onclick="initMap();">Show Map</a>
         </form:form>
         </td>
         </tr>
            
        </tbody>
    </table>
    </br>
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