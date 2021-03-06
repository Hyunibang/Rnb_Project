<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet" href="assets/css/main.css" />

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/suggest.js" type="text/javascript"></script>

<title>Insert title here</title>
</head>
<body>
	<form action="home">
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

		<!-- Banner -->
		<!--
				To use a video as your background, set data-video to the name of your video without 
				its extension (eg. images/banner). Your video must be available in both .mp4 and .webm
				formats to work correctly.
			-->
		<section id="banner" data-video="images/banner">
			<div class="inner">
				<header>
					<h1>This is Broadcast</h1>
					<p>
						Morbi eu purus eget urna interdum dignissim sed consectetur augue<br />
						vivamus vitae libero in nulla iaculis eleifend non sit amet nulla.
					</p>
				</header>
				<a href="#main" class="button big alt scrolly">Dignissim</a>
			</div>

		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section class="wrapper style1">
				<div class="inner">
					<header class="align-center">
						<h2>이번달 영화 추천</h2>
						<p>평점순</p>
					</header>
					<!-- 2 Column Video Section -->
					<div class="flex flex-2">
						<c:forEach items="${gmain1 }" var="gm1">
							<div class="video col">
								<div class="image fit">
									<img src="movieImage/${gm1.image_number }" alt="" />
									<div class="arrow">
										<div class="icon fa-play"></div>
									</div>
								</div>
								<p class="caption">${gm1.title }</p>
								<a href="generic" class="link"><span>Click Me</span></a>
							</div>
						</c:forEach>

						<c:forEach items="${gmain2 }" var="gm2">
							<div class="video col">
								<div class="image fit">
									<img src="movieImage/${gm2.image_number }" alt="" />
									<div class="arrow">
										<div class="icon fa-play"></div>
									</div>
								</div>
								<p class="caption">${gm2.title }</p>
								<a href="generic" class="link"><span>Click Me</span></a>
							</div>
						</c:forEach>
					</div>
				</div>
			</section>

			<!-- Two -->
			<section class="wrapper style2">
				<div class="inner">
					<header>
						<h2>Etiam veroeros lorem</h2>
						<p>Fusce fringilla enim sit amet lectus sollicitudin, eu
							tincidunt odio semper.</p>
					</header>
					<!-- Tabbed Video Section -->
					<div class="flex flex-tabs">
						<ul class="tab-list">
							<li><a href="#" data-tab="tab-1" class="active">Duis
									vestibulum tellus</a></li>
							<li><a href="#" data-tab="tab-2">Quam tempus sodales
									ipsum</a></li>
							<li><a href="#" data-tab="tab-3">Donec faucibus risus
									cursus</a></li>
						</ul>
						<div class="tabs">

							<!-- Tab 1 -->
							<div class="tab tab-1 flex flex-3 active">
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic01.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic02.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic03.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic04.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic05.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic06.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
							</div>

							<!-- Tab 2 -->
							<div class="tab tab-2 flex flex-3">
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic06.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic05.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic04.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic03.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic02.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic01.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
							</div>

							<!-- Tab 3 -->
							<div class="tab tab-3 flex flex-3">
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic03.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic02.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic01.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic06.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic05.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
								<!-- Video Thumbnail -->
								<div class="video col">
									<div class="image fit">
										<img src="images/pic04.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<a href="generic" class="link"><span>Click Me</span></a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</section>

			<!-- Three -->
			<section class="wrapper ">
				<div class="inner">
					<header class="align-center">
						<h2>Aliquam ipsum purus dolor</h2>
						<p>Cras sagittis turpis sit amet est tempus, sit amet
							consectetur purus tincidunt.</p>
					</header>

					<!-- 3 Column Video Section -->
					<div class="flex flex-3">
						<div class="video col">
							<div class="image fit">
								<img src="images/pic09.jpg" alt="" />
								<div class="arrow">
									<div class="icon fa-play"></div>
								</div>
							</div>
							<p class="caption">Cras eget lacus sed mauris scelerisque
								tincidunt</p>
							<a href="generic" class="link"><span>Click Me</span></a>
						</div>
						<div class="video col">
							<div class="image fit">
								<img src="images/pic10.jpg" alt="" />
								<div class="arrow">
									<div class="icon fa-play"></div>
								</div>
							</div>
							<p class="caption">Vivamus vulputate lacus non massa auctor
								lobortis</p>
							<a href="generic" class="link"><span>Click Me</span></a>
						</div>
						<div class="video col">
							<div class="image fit">
								<img src="images/pic11.jpg" alt="" />
								<div class="arrow">
									<div class="icon fa-play"></div>
								</div>
							</div>
							<p class="caption">Nam eu nisi non ante sodales interdum a
								vitae neque</p>
							<a href="generic" class="link"><span>Click Me</span></a>
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
					href="https://coverr.co">Coverr</a>
			</div>
		</footer>
	</form>
</body>
</html>