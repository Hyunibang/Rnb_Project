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
	<form name="generic" action="/dev/generic.do" method="post">
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
			<!-- Movie -->
			<section class="wrapper ">
				<div class="inner">
					<header class="align-left">
						<h2>인기 영화</h2>
						<a id="popularMovieId" href="wholePopularMovieList" class="link">전체
							영화 보기></a>
					</header>

					<!-- 4 Column Video Section -->
					<div class="flex flex-4">
						<div class="container">
							<div class="bxslider4_wrap">
								<div id="bxsliderMovie" class="bxslider4">
									<div class="video col">
										<div class="image fit">
											<input id="id" type="hidden" value="venom"> <img
												src="images/movie_venom.png" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<!-- 
										<a id="venom" href="generi.do?vemon=venom" class="link"><span>Click Me</span></a>
										 -->
										<a id="venom" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_amsoo.png" alt="" /> <input id="id"
												type="hidden" value="amsoo">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="amsoo" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_singleman.png" alt="" /> <input
												id="id" type="hidden" value="singleman">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="singleman" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_chang.png" alt="" /> <input id="id"
												type="hidden" value="chang">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="chang" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_twofriends.png" alt="" /> <input
												id="id" type="hidden" value="twofriends">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<!--
										<p class="caption">Nam eu nisi non ante sodales interdum a
											vitae neque</p>
											 -->
										<a id="twofriends" href="#" class="link"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<input id="movieId" name="movieId" type="hidden">
				</div>
			</section>

			<section class="wrapper ">
				<div class="inner">
					<header class="align-left">
						<h2>인기 영화</h2>
						<a id="popularMovieId" href="wholePopularMovieList" class="link">전체
							영화 보기></a>
					</header>

					<!-- 4 Column Video Section -->
					<div class="flex flex-4">
						<div class="container">
							<div class="bxslider4_wrap">
								<div id="bxslider2" class="bxslider4">
									<div class="video col">
										<div class="image fit">
											<input id="id" type="hidden" value="venom"> <img
												src="images/movie_venom.png" alt="" />
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<!-- 
										<a id="venom" href="generi.do?vemon=venom" class="link"><span>Click Me</span></a>
										 -->
										<a id="venom" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_amsoo.png" alt="" /> <input id="id"
												type="hidden" value="amsoo">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="amsoo" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_singleman.png" alt="" /> <input
												id="id" type="hidden" value="singleman">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="singleman" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_chang.png" alt="" /> <input id="id"
												type="hidden" value="chang">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<a id="chang" href="#" class="link"></a>
									</div>
									<div class="video col">
										<div class="image fit">
											<img src="images/movie_twofriends.png" alt="" /> <input
												id="id" type="hidden" value="twofriends">
											<div class="arrow">
												<div class="icon fa-play"></div>
											</div>
										</div>
										<!--
										<p class="caption">Nam eu nisi non ante sodales interdum a
											vitae neque</p>
											 -->
										<a id="twofriends" href="#" class="link"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<input id="movieId" name="movieId" type="hidden">
				</div>
			</section>

		</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/jquery.bxslider.min.js"></script>
		<script>
			$('#bxsliderMovie').bxSlider({
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
			$('#bxslider2').bxSlider({
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
				$("a").click(function() {
					var click_id = $(this).attr('id');
					$('#movieId').val(click_id);
					$("form[name='generic']").submit();
				});
			});
		</script>
	</form>
</body>
</html>