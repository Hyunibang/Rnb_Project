<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Broadcast by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head> 
<title>Generic - Broadcast by TEMPLATED</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<!--<link rel="stylesheet" href="assets/css/jquery.bxslider.css" />-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
</head>
<body class="subpage">
	<form action="generic">
		<!-- Header -->
		<header id="header">
			<h1>
				<a href="#">Broadcast <span>by TEMPLATED</span></a>
			</h1>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu">
			<ul class="links">
				<li><a href="home">Home</a></li>
				<li><a href="generic">Generic</a></li>
				<li><a href="elements">Elements</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Three -->
			<section class="wrapper ">
				<div class="inner">
					<header class="align-left">
						<h2>인기 영화</h2>
						<p>전체보기></p>
					</header>

					<!-- 4 Column Video Section -->
					<div class="flex flex-4">
						<div class="container">
							<div class="bxslider4_wrap">
								<div id="bxslider" class="bxslider4">
									<div class="video col">
										<div class="image fit">
											<img src="images/venom.jpg" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="venom" href="#" class="link"><span>Click Me</span></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/amsoo.jpg" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<!--
										<form>
											<input name="https://www.youtube.com/embed/1VIVAMUl-fY"><br>
										</form>
										 -->
										<a id="amsoo" href="#" class="link"><span>Click Me</span></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/singleman.jpg" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="singleman" href="#" class="link"><span>Click Me</span></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/chang.jpg" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="chang" href="#" class="link"><span>Click Me</span></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/twofriends.jpg" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<!--
										<p class="caption">Nam eu nisi non ante sodales interdum a
											vitae neque</p>
											 -->
										<a id="twofriends" href="#" class="link"><span>Click Me</span></a>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<div class="flex flex-3">
					<div class="col">
						<h3>Vestibullum</h3>
						<ul class="alt">
							<li><a href="#">Nascetur nunc varius commodo.</a></li>
							<li><a href="#">Vis id faucibus montes tempor</a></li>
							<li><a href="#">Massa amet lobortis vel.</a></li>
							<li><a href="#">Nascetur nunc varius commodo.</a></li>
						</ul>
					</div>
					<div class="col">
						<h3>Lobortis</h3>
						<ul class="alt">
							<li><a href="#">Nascetur nunc varius commodo.</a></li>
							<li><a href="#">Vis id faucibus montes tempor</a></li>
							<li><a href="#">Massa amet lobortis vel.</a></li>
							<li><a href="#">Nascetur nunc varius commodo.</a></li>
						</ul>
					</div>
					<div class="col">
						<h3>Accumsan</h3>
						<ul class="alt">
							<li><a href="#">Nascetur nunc varius commodo.</a></li>
							<li><a href="#">Vis id faucibus montes tempor</a></li>
							<li><a href="#">Massa amet lobortis vel.</a></li>
							<li><a href="#">Nascetur nunc varius commodo.</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copyright">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-snapchat"><span
							class="label">Snapchat</span></a></li>
				</ul>
				&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>.
				Images: <a href="https://unsplash.com">Coverr</a>. Video: <a
					href="https://coverr.co">Coverr</a>.
			</div>
		</footer>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/jquery.bxslider.min.js"></script>
		<script>
			$('#bxslider').bxSlider({
				auto : true,
				pager : false,
				slideWidth : 400,
				minSlides : 1,
				maxSlides : 4,
				slideMargin : 0,
				moveSlides : 1,
			});
		</script>
		<script>
			$(document).ready(function() {
				$("a").click(function(event) {
					var click_id = $(this).attr('id');
					var videoAddr;
					if(click_id == "venom"){
						videoAddr = "https://www.youtube.com/embed/1VIVAMUl-fY";
						location.href = 'view';
						//location.href = "view.jsp?videoAddr=" + $("#videoAddr").val();
					}
					else if(click_id == "amsoo"){
						alert('amsoo');
					}
				});
			});
		</script>
	</form>
</body>
</html>