<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>RnB_Project - View</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/main.css" />
<!--<link rel="stylesheet" href="assets/css/jquery.bxslider.css" />-->
<style>
.sd{
	color: black;
}

.grade_submit{
	position: relative;
	background-color: white;
	color: black;
	font-weight: bold;
	left: 50%;
}
</style>

</head>
<body class="subpage">
	<form name="view" action="view.do" method="post">
		<!-- Header -->
		<header id="header">
			<h1>
				<a href="main.do">RnB_Project</a>
				<input name="userid" id="userid" type="hidden" value="${userid }">
				<input name="videoid" id="videoid" type="hidden" value="${videoid}">
			</h1>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu">
			<ul class="links">
				<h1>${username}님 환영합니다.</h1>
				<li><a href="main.do">홈으로</a></li>
				<li><a href="generic">장르</a></li>
				<li><a href="setting">설정</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section class="wrapper style1">
				<div class="inner">
					<div class="video">
						<div class="video-wrapper">
							<iframe width="560" height="315" src="${videoAddr}"
								frameborder="0" allowfullscreen></iframe>
						</div>
						<p class="caption">평점
							<c:forEach var="j" begin="1" end="5" step="1">
 								<c:choose>
 									<c:when test="${j > totalgrade}">
 										<span class="fa fa-star checked"></span>
 									</c:when>
 									<c:otherwise>
 										<span class="fa fa-star" style="color: orange;"></span>
 									</c:otherwise>
 								</c:choose>
 						</c:forEach>
						</p>
							<select id="select_grade" name="select_grade">
								<option value="empty" selected="selected">평점 선택하기</option>
								<option class="sd" value="10">10</option>
								<option class="sd" value="9">9</option>
								<option class="sd" value="8">8</option>
								<option class="sd" value="7">7</option>
								<option class="sd" value="6">6</option>
								<option class="sd" value="5">5</option>
								<option class="sd" value="4">4</option>
								<option class="sd" value="3">3</option>
								<option class="sd" value="2">2</option>
								<option class="sd" value="1">1</option>
							</select>
						<p class="caption">한줄후기</p>
						<textarea name="comment" id="comment" rows="11" cols="60"></textarea><br>
						<input id="grade" name="grade" type="hidden">
						<input id="grade_submit" class="grade_submit" type="button" value="확인">
					</div>
				</div>
			</section>
		</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/view.js"></script>
	</form>
</body>
</html>