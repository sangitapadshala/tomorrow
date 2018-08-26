<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Fidelis Digital Banking</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Bank Online Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- flexslider -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!-- //flexslider -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
</head>
<body>
	<div class="banner-top">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="w3layouts-banner-top jarallax">
							<div class="agileinfo-dot">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>SAFE</h3>
										<h6>Thinking Ahead of Risks</h6>
										<p>Bank online, securely and conveniently, from the comfort of your home or office.At Fidelis Banking, we strive to give you a secure online banking experience.</p>
										<div class="w3-button">
											<a href="#" data-toggle="modal" data-target="#myModal">More</a>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1 jarallax">
							<div class="agileinfo-dot">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>SMART</h3>
										<h6>Providing wide range of secure banking features and services</h6>
										<p>Fidelis Bank offers digital banking services, personal banking services including accounts, debit cards, loans, investment options to personals, corporates and NRIs.</p>
										<div class="w3-button">
											<a href="#" data-toggle="modal" data-target="#myModal">More</a>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top2 jarallax">
							<div class="agileinfo-dot">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>SIMPLE</h3>
										<h6>Insta Easy Digital Account generation with Aadhar number</h6>
										<p>Oopen your digital account only with Aadhar and PAN number in few minutes. Easy to operate with user friendly experince</p>
										<div class="w3-button">
											<a href="#" data-toggle="modal" data-target="#myModal">More</a>
										</div> 
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<script src="js/responsiveslides.min.js"></script>
			<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:true,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
			</script>
			<!--banner Slider starts Here-->
		</div>
	</div>
	<!-- banner -->
	<div class="banner">
		<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="w3layouts-logo">
							<h1><a href="index.html">Fidelis <span>The Name You can Bank Upon</span></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li class="active"><a href="aadhar.jsp">Sign Up</a></li>
								<li><a href="#about" class="scroll">Login</a></li>
								<li><a href="#mail" class="scroll">About</a></li>
								<li><a href="#services" class="scroll">Services</a></li>
								<li><a href="#mail" class="scroll">Blog</a></li>
								<li><a href="#mail" class="scroll">Mail Us</a></li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title">Bank <span>Online</span></h4>
					</div> 
					<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/2.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- about -->
	<div class="about" id="about">
		<div class="container">
			<div class="w3-about-grids">
				<div class="col-md-6 w3-about-left">
					<div id="main" role="main">
					  <section class="slider">
						<div id="slider" class="flexslider">
						  <ul class="slides">
							<li>
								<img src="images/5.jpg" alt="" />
							</li>
							<li>
								<img src="images/6.jpg" alt="" />
							</li>
							<li>
								<img src="images/7.jpg" alt="" />
							</li>
							<li>
								<img src="images/8.jpg" alt="" />
							</li>
							<li>
								<img src="images/9.jpg" alt="" />
							</li>
							<li>
								<img src="images/10.jpg" alt="" />
							</li>
							<li>
								<img src="images/5.jpg" alt="" />
							</li>
							<li>
								<img src="images/6.jpg" alt="" />
							</li>
							<li>
								<img src="images/7.jpg" alt="" />
							</li>
							<li>
								<img src="images/8.jpg" alt="" />
							</li>
							<li>
								<img src="images/9.jpg" alt="" />
							</li>
							<li>
								<img src="images/10.jpg" alt="" />
							</li>
						  </ul>
						</div>
						<div id="carousel" class="flexslider">
						  <ul class="slides">
							<li>
								<img src="images/5.jpg" alt="" />
							</li>
							<li>
								<img src="images/6.jpg" alt="" />
							</li>
							<li>
								<img src="images/7.jpg" alt="" />
							</li>
							<li>
								<img src="images/8.jpg" alt="" />
							</li>
							<li>
								<img src="images/9.jpg" alt="" />
							</li>
							<li>
								<img src="images/10.jpg" alt="" />
							</li>
							<li>
								<img src="images/5.jpg" alt="" />
							</li>
							<li>
								<img src="images/6.jpg" alt="" />
							</li>
							<li>
								<img src="images/7.jpg" alt="" />
							</li>
							<li>
								<img src="images/8.jpg" alt="" />
							</li>
							<li>
								<img src="images/9.jpg" alt="" />
							</li>
							<li>
								<img src="images/10.jpg" alt="" />
							</li>
						  </ul>
						</div>
					  </section>
					</div>
				</div>
				<div class="col-md-6 w3-about-left">
					<h2>Why Choose Us ?</h2>
					<h5>We deliver quality with quantitative services</h5>
					<p>The bank is committed to maintain the highest level of ethical standards, professional integrity, corporate governance and regulatory compliance. Fidelis Bank's business philosophy is based on four core values: Operational Excellence, Customer Focus, Product Leadership and People <span>The bank's competitive strength clearly lies in the use of technology and the ability to deliver world-class service with rapid response time. Over the last 13 years, the bank has successfully gained market share in its target customer franchises while maintaining healthy profitability and asset quality.Leading Indian and international publications have recognized the bank for its performance and quality.</span></p>
					<div class="w3l-button">
						<a href="#" data-toggle="modal" data-target="#myModal">More</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- markets -->
	<div class="markets" id="markets">
		<div class="container">
			<div class="wthree-heading">
				<h3>Services Overview</h3>
			</div>
			<div class="markets-grids">
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Apna Ghar</h5>
							<p>Fidelis Bank offers you loans in corporation with Apna Ghar based on your requirements at attractive interest rates. Apply now to avail a loan online within minutes and fulfill your dreams!</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-line-chart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Sequro</h5>
							<p>Sequro in collabration with Fidelis compares vehicle insurance plans online from other top motor insurance companies in India and save your insurance premium up to 60%.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Kart-In</h5>
							<p>Don't worry you have landed at right place. Fideils Digital banking offered on Kart-In have created a boom in the market with all those discounts that people are getting to enjoy on Kart-In</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //markets -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="wthree-heading">
				<h3>Services Overview</h3>
				<h5>Vivamus facilisis dolor ac sapien pharetra</h5>
			</div>
			<div class="agile-services-grids">
				<div class="col-md-4 agile-services-grid">
					<img src="images/11.jpg" alt="" />
					<h6>Proin blandit</h6>
					<p>Nam sit amet odio malesuada, ullamcorper arcu vel, pharetra lorem. Fusce id auctor nulla.</p>
					<ul> 
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis aute irure dolor in reprehenderit voluptate </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Excepteur sint occaecat cupidatat non proident</li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Sunt in culpa qui officia deserunt mollit </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis aute irure dolor in reprehenderit voluptate </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Excepteur sint occaecat cupidatat non proident</li> 
					</ul>
				</div>
				<div class="col-md-4 agile-services-grid">
					<img src="images/12.jpg" alt="" />
					<h6>Nullam tempor</h6>
					<p>Nam sit amet odio malesuada, ullamcorper arcu vel, pharetra lorem. Fusce id auctor nulla.</p>
					<ul> 
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis aute irure dolor in reprehenderit voluptate </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Excepteur sint occaecat cupidatat non proident</li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Sunt in culpa qui officia deserunt mollit </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis aute irure dolor in reprehenderit voluptate </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Excepteur sint occaecat cupidatat non proident</li> 
					</ul>
				</div>
				<div class="col-md-4 agile-services-grid">
					<img src="images/13.jpg" alt="" />
					<h6>Etiam tristique</h6>
					<p>Nam sit amet odio malesuada, ullamcorper arcu vel, pharetra lorem. Fusce id auctor nulla.</p>
					<ul> 
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis aute irure dolor in reprehenderit voluptate </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Excepteur sint occaecat cupidatat non proident</li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Sunt in culpa qui officia deserunt mollit </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis aute irure dolor in reprehenderit voluptate </li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Excepteur sint occaecat cupidatat non proident</li> 
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- testimonial -->
	<div class="jarallax testimonial" id="testimonial">
		<div class="testimonial-dot">
			<div class="container">
				<div class="wthree-heading testimonial-heading">
					<h3>Fidelis people of the year</h3>
					<h5> Our Top Employees</h5>
				</div>
				<div class="w3-agile-testimonial">
					<div class="slider">
						<div class="callbacks_container">
							<ul class="rslides callbacks callbacks1" id="slider3">
								<li>
									<div class="testimonial-img-grid">
										<div class="testimonial-img t-img1">
											<img src="images/14.jpg" alt="" />
										</div>
										<div class="testimonial-img">
											<img src="images/15.jpg" alt="" />
										</div>
										<div class="testimonial-img t-img2">
											<img src="images/16.jpg" alt="" />
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="testimonial-img-info">
										<p>Yo Yo honey Singh</p>
										<h5>Peter Guptill</h5>
										<!-- <h6>Proin blandit</h6> -->
									</div>
								</li>
								<li>
									<div class="testimonial-img-grid">
										<div class="testimonial-img t-img1">
											<img src="images/15.jpg" alt="" />
										</div>
										<div class="testimonial-img">
											<img src="images/16.jpg" alt="" />
										</div>
										<div class="testimonial-img t-img2">
											<img src="images/14.jpg" alt="" />
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="testimonial-img-info">
										<p>Buzz karta Badshah </p>
										<h5>Mary Jane</h5>
										<!-- <h6>Lorem ipsum</h6> -->
									</div>
								</li>
								<li>
									<div class="testimonial-img-grid">
										<div class="testimonial-img t-img1">
											<img src="images/16.jpg" alt="" />
										</div>
										<div class="testimonial-img">
											<img src="images/14.jpg" alt="" />
										</div>
										<div class="testimonial-img t-img2">
											<img src="images/15.jpg" alt="" />
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="testimonial-img-info">
										<p>Stay High all the time </p>
										<h5>Arnav Gupta</h5>
										<!-- <h6>Proin blandit</h6> -->
									</div>
								</li>
							</ul>
						</div>
						<div class="clearfix"> </div>
						<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									  // Slideshow 4
									  $("#slider3").responsiveSlides({
										auto: true,
										pager:false,
										nav:false,
										speed: 500,
										namespace: "callbacks",
										before: function () {
										  $('.events').append("<li>before event fired.</li>");
										},
										after: function () {
										  $('.events').append("<li>after event fired.</li>");
										}
									  });
								
									});
						</script>
						<!--banner Slider starts Here-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //testimonial -->
	<!-- blog -->
	
	<!-- //blog -->
	<!-- contact -->
	<div class="contact" id="mail">
		<div class="container">
			<div class="wthree-heading">
				<h3>Get In Touch</h3>
				<h5>We Are Always Ready for help</h5>
			</div>
			<div class="agile-contact-form">
				<div class="col-md-6 contact-form-left">
					<div class="w3layouts-contact-form-top">
						<h3>Get in touch</h3>
						<p>Find below customer care details of Fidelis Bank, including phone and address. Reach the below contacts for queries on new Axis Bank savings accounts, credit cards, personal/education loans, auto loans, mutual fund or others. Besides contact details, the page also offers information on Axis Bank services.</p>
					</div>
					<div class="agileits-contact-address">
						<ul>
							<li><i class="fa fa-phone" aria-hidden="true"></i> <span>+1 234 567 8901</span></li>
							<li><i class="fa fa-phone fa-envelope" aria-hidden="true"></i> <span><a href="mailto:example@email.com">mail@example.com</a></span></li>
							<li><i class="fa fa-map-marker" aria-hidden="true"></i> <span>Pelpendicular uff babbua , Jharkhand</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 contact-form-right">
					<div class="contact-form-top">
						<h3>Send us a message</h3>
					</div>
					<div class="agileinfo-contact-form-grid">
						<form action="#" method="post">
							<input type="text" name="Name" placeholder="Name" required="">
							<input type="email" name="Email" placeholder="Email" required="">
							<input type="text" name="Telephone" placeholder="Telephone" required="">
							<textarea name="Message" placeholder="Message" required=""></textarea>
							<button class="btn1">Submit</button>
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3agile-map">
				<h3>Find us here</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d102623.04862310845!2d-82.59779327009554!3d36.506579763153326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885a856b70074b97%3A0x6f9cc0d30bcc841f!2sKingsport%2C+TN%2C+USA!5e0!3m2!1sen!2sin!4v1471495038514" allowfullscreen=""></iframe>
			</div>
		</div>
	</div>
	<!-- //contact -->
	<!-- copyright -->
	<footer>
		<div class="container">
			<div class="copyright">
				<p>© 2018 Fidelis Bank. All rights reserved | Design by <a href="github.com/ArnavRx">Team Fidelis</a></p>
			</div>
		</div>
	</footer>
	<!-- //copyright -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>
	<script src="js/responsiveslides.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
    $(window).load(function(){
      $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: true,
        slideshow: false,
        itemWidth: 102,
        itemMargin: 5,
        asNavFor: '#slider'
      });

      $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: true,
        slideshow: true,
        sync: "#carousel",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
<!-- //FlexSlider -->
</body>	
</html>

</body>
</html>