<%@page import="com.mp.model.CGVMemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/main.css">
<!-- MATERIAL DESIGN ICONIC FONT -->


</head>

<body>
	<div class="header-nav-wrapper">
		<header class="header">
			<div class="header-inner"></div>
			<div class="header-inner"></div>
		</header>
		<nav class="nav-wrapper">
			<div class="nav-content">
				<div class="movieLogo-wrapper">
					<img class="cgvMovie" src="./images/h2_movie.png">
				</div>
				<div class="nav-inner">

					<button type="button" onclick="location.href='/moveReserve.do' ">예매</button>

				</div>
			</div>
			<div></div>
			<div></div>
		</nav>


	</div>
	<div>
		<div class="content-header-container">
			<div class="content-header-wrapper">
				<div class="content-header-title">무비 차트</div>
				<div class="content-header-menu">
					<div class="chart">
						<button class="selectedMenu">무비차트</button>
					</div>
					<div class="movie-notice">
						<button>상영예정작</button>
					</div>
					<div class="movie-house">
						<button>CGV아트하우스</button>
					</div>
				</div>
			</div>
			<div class="movie-infomation-wrapper"></div>
		</div>


	</div>

	<script src="js/main.js"></script>
</body>
</html>