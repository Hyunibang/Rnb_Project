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

<title>RnB_Project - Home</title>
</head>
<body>
	<form action="home">
		<!-- Header -->
		<header id="header">
			<h1>
				<a href="main.do">RnB_Project</a>
				<input name="userid" type="hidden" value="${userid }">
			</h1>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu">
			<ul class="links">
				<li><a>${username}님 환영합니다!</a></li>
				<li><a href="main.do">홈</a></li>
				<li><a href="generic">장르</a></li>
				<li><a href="setting">설정</a></li>
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
					<h1>추천, 맞춤을 한번에</h1>
					<p>
						스마트폰, 노트북, TV, 태블릿. 어느 디바이스를 사용하더라도<br>
						최고의 영상을 감상 하실 수 있습니다.						
					</p>
				</header>
				<!-- div1로 이동 -->
				<input type="button" onclick="fnMove('1')" value="이번달 영화 추천" />
				<!-- div2로 이동 -->
				<input type="button" onclick="fnMove('2')" value="나에게 맞는 영상" />
			</div>

		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section class="wrapper style1">
				<div id="div1" class="inner">
					<header class="align-center">
						<h2>이번달 영화 추천</h2>
						<p>평점순</p>
					</header>
					<!-- 2 Column Video Section -->
					<div class="flex flex-2">
						<c:forEach items="${gmain1}" var="gm1">
							<div class="video col">
								<div class="image fit">
									<img src="movieImage/${gm1.image_number}" alt="" style="width: 670px; height: 600px;"/>
									<div class="arrow">
										<div class="icon fa-play"></div>
									</div>
								</div>
								<%-- <p class="caption">${gm1.title}</p> --%>
								<a href="generic" class="link"><span>Click Me</span></a>
							</div>
						</c:forEach>

					</div>
				</div>
			</section>

			<!-- Three -->
			<section class="wrapper ">
				<div id="div2" class="inner">
					<header class="align-center">
						<h2>${username}님의 맞춤 영상</h2>
					</header>

					<!-- 3 Column Video Section -->
					<div class="flex flex-3">
					<c:forEach var="i" items="${showMovies}"> 
						<div class="video col">
							<div class="image fit">
								<img src="movieImage/${i.image_number}" alt="" />
								<div class="arrow">
									<div class="icon fa-play"></div>
								</div>
							</div>
							<%-- <p class="caption">${i.title}</p> --%>
							<a href="generic" class="link"><span>Click Me</span></a>
						</div>
					</c:forEach>
					</div>
				</div>
			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<div class="flex flex-3" style="text-align:center;">
					<div class="col">
						<ul class="alt">
							<li><a href="setting">자막 및 음성</a></li>
							<li><a href="setting">미디어 센터</a></li>
							<li><a href="setting">개인정보</a></li>
							<li><a href="setting">문의하기</a></li>
						</ul>
					</div>
					<div class="col">
						<ul class="alt">
							<li><a href="setting">음성 지원</a></li>
							<li><a href="setting">투자 정보</a></li>
							<li><a href="setting">법적 고지</a></li>
						</ul>
					</div>
					<div class="col">
						<ul class="alt">
							<li><a href="setting">고객 센터</a></li>
							<li><a href="setting">입사 정보</a></li>
							<li><a href="setting">쿠키 설정</a></li>
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function fnMove(seq) {
		var offset = $("#div" + seq).offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 400);
	}
</script>
</html>