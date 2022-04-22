<%@page import="com.mp.model.CGVReserveDto"%>
<%@page import="com.mp.model.CGVMemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	CGVMemberDto login = (CGVMemberDto) session.getAttribute("login");
	if (login != null)
		System.out.println(login.toString());
	CGVReserveDto reserve = (CGVReserveDto) request.getAttribute("reserve");
	/* if (reserve != null && reserve.getCgvPayDto() != null) {
		System.out.println(reserve.toString());
	} else {
		System.out.println("오류가있습니다!!");
	} */
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/seat.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<!-- MATERIAL DESIGN ICONIC FONT -->
<style>
/* content */

.select-container {
    margin-top: 140px;
}

.select-wrapper {
    width: 900px;
    background-color: #F2F0E5;
    margin: 0 auto;
    border-left: 1px solid #dddddd;
    border-right: 1px solid #dddddd;
}

.select-title {
    background-color: #444444;
    color: #dddddd;
    font-size: 16px;
    text-align: center;
    padding: 10px;
}

.select-seat-container {
    display: flex;
    /* align-items: center; */
    border-bottom: 2px solid #dddddd;
}

.select-seat-number-container {
    flex-grow: 1;
    border-right: 1px solid #dddddd;
    display: flex;
}

.select-seat-number-wrapper {
    padding: 15px 0 20px 20px;
    flex-grow: 1;
}

.select-seat-ul {
    display: flex;
}

.select-seat-ul>li {
    width: 20px;
    height: 20px;
    border: 1px solid #dddddd;
    text-align: center;
    font-weight: bold;
    /* line-height: 15px; */
    /* padding: 5px; */
    padding: 2px;
}

.select-seat-ul>li:hover {
    color: white;
    background-color: #222222;
    cursor: pointer;
}

.select-seat-ul-active {
    color: white;
    background-color: #222222;
}

.select-seat-ul>li:not(:first-child) {
    margin-left: 5px;
}

.select-seat-information {
    flex-grow: 1;
    padding: 15px 0 20px 20px;
}

.select-seat {
    display: flex;
    font-size: 12px;
}

.select-seat:not(:first-child) {
    margin-top: 12px;
}

.select-seat-age {
    width: 40px;
}

.select-seat-number {
    margin-left: 15px;
}

.reserve-number-wrapper {
    flex-grow: 1;
    padding-top: 15px;
    border-left: 1px solid #DDDDDD;
    text-align: center;
}

.reserve-number {
    margin-top: 20px;
    font-size: 34px;
    font-weight: bold;
}

.selected-movie {
	font-size: 20px;
    margin-bottom: 5px;
    font-weight: bold;
}

.select-seat-information-wrapper {
    display: flex;
}

.select-theater-place {
    font-size: 12px;
}

.select-theater-place:not(:last-child) {
    width: 55px;
    border-right: 1px solid #dddddd;
}

.select-theater-place:last-child {
    width: 150px;
    /* border-right: 1px solid #dddddd; */
}

.select-theater-place:not(:first-child) {
    margin-left: 12px;
}

.select-theater-date {
    /*  font-size: 18px;
    margin-top: 8px;
    font-weight: bold; */
    display: flex;
}

.select-theater-date>div {
    font-size: 18px;
    margin-top: 8px;
    font-weight: bold;
}

.theater-time {
    margin-left: 5px;
}

.remain-seats {
    margin-left: 3px;
    color: rgba(255, 0, 0, 0.6);
    font-weight: bold;
}

.selected-seats-wrapper {
    margin-top: 5px;
}

.selected-seats {
    font-size: 13px;
    word-spacing: 2px;
    margin-left: 20px;
}

.selected-seats-title {
    color: black;
    font-size: 13px;
    font-weight: bold;
}

.ticket-price-wrapper{
	margin-top: 5px;
	display: flex;
	align-items: center;
}
.ticket-price-wrapper>div{	
	font-weight: bold;
}
.ticket-price-title{
	font-size: 13px;
}

.ticket-price {
	margin-left: 47px;
	font-size:20px;
}

.reserve-button {
    margin-top: 5px;
    display: flex;
    align-items: center;
    font-weight: bold;
    font-size: 13px;
    padding: 0;
}

.reserve-button img {
    margin-left: 20px;
    width: 60px;
}

.seat-container {
    margin-top: 20px;
    display: flex;
    justify-content: center;
}

.screen-view {
    width: 140px;
    color: #777777;
    padding-top: 30px;
    font-size: 30px;
    text-align: center;
    margin: 0 auto 30px auto;
    border-bottom: 1px solid #666666;
    letter-spacing: 4px;
}

.seat-wrapper {
    background-color: #222222;
    width: 700px;
    height: 460px;
    /* padding-top: 120px; */
}

.seat {
    width: 30px;
    height: 30px;
}

.seat {
    font-size: 13px;
    background-color: #555555;
    color: white;
    border: 1px solid rgba(255, 0, 0, 0.6);
}

.seat:hover {
    background-color: red;
    color: white;
    cursor: pointer;
}

.seat:active {
    background-color: red;
    color: white;
}

.clicked {
    background-color: red;
    color: white;
}

.seatButtonWrapper {
    text-align: center;
}

.seatButtonWrapper>input {
    width: 30px;
    height: 30px;
}

.left-margin {
    margin-left: 30px;
}

.right-margin {
    margin-right: 30px;
}

.top-margin {
    margin-top: 30px;
}
</style>

</head>

<body>
	<%
		if (login == null) {
	%>
	<script>
		alert("로그인이 필요한 작업입니다 로그인을 진행해 주세요!")
		location.href = "moveMain.do"
	</script>
	<%
		}
	%>
	<div class="header-nav-wrapper">
		<header class="header">
			<div class="header-inner">
				<div>
					<button>
						<i class="zmdi zmdi-apps"></i><span>&nbsp;CGV APP</span>
					</button>
				</div>
				<div>
					<button>
						<i class="zmdi zmdi-facebook-box"></i><span>&nbsp;Like</span>
					</button>
				</div>
				<div>
					<button>
						<i class="zmdi zmdi-instagram"></i><span>&nbsp;follow</span>
					</button>
				</div>
				<div>
					<button>알뜰한 영화 관람법</button>
				</div>
			</div>
			<div class="header-inner">

				<%
					if (login != null) {
				%>
				<div>
					<button><%=login.getName()%>님 환영합니다
					</button>
				</div>
				<div>
					<a href="moveMypage.do"><button>마이페이지</button></a>
				</div>
				<div>
					<a href="logout.do"><button>로그아웃</button></a>
				</div>
				<%
					} else {
				%>
				<div>
					<a href="moveLogin.do"><button>로그인</button></a>
				</div>
				<div>
					<a href="moveRegister.do"><button>회원가입</button></a>
				</div>
				<%
					}
				%>
			</div>
		</header>
		<nav class="nav-wrapper">
			<div class="logo-wrapper">
				<a href="moveMain.do"><img class="cgvLogo"
					src="./images/cgv.png"></a>
			</div>
			<div class="nav-content">
				<div class="movieLogo-wrapper">
					<img class="cgvMovie" src="./images/h2_movie.png">
				</div>
				<div class="nav-inner">
					<div>
						<button>영화</button>
					</div>
					<div>
						<button>예매</button>
					</div>
					<div>
						<button>극장</button>
					</div>
					<div>
						<button>이벤트&컬쳐</button>
					</div>
					<div class="search-wrapper">
						<input>
						<button class="searchButton">검색</button>
					</div>
				</div>
			</div>
			<div></div>
			<div></div>
		</nav>
	</div>
	<div class="select-container">
		<div class="select-wrapper">
			<div class="select-title">인원/좌석</div>
			<div class="select-seat-container">
				<div class="select-seat-number-container">
					<div class="select-seat-number-wrapper">
						<div class="select-seat">
							<div class="select-seat-age">일반</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul select-seat-ul-normal">
									<li class="select-number-normal ">0</li>
									<li class="select-number-normal">1</li>
									<li class="select-number-normal">2</li>
									<li class="select-number-normal">3</li>
									<li class="select-number-normal">4</li>
									<li class="select-number-normal">5</li>
									<!--  <li class="select-number-normal">6</li>
                                    <li class="select-number-normal">7</li>
                                    <li class="select-number-normal">8</li> -->
								</ul>
							</div>
						</div>
						<div class="select-seat">
							<div class="select-seat-age">청소년</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul select-seat-ul-teen">
									<li class="select-number-teen">0</li>
									<li class="select-number-teen">1</li>
									<li class="select-number-teen">2</li>
									<li class="select-number-teen">3</li>
									<li class="select-number-teen">4</li>
									<li class="select-number-teen">5</li>
									<!-- <li class="select-number-teen">6</li>
                                    <li class="select-number-teen">7</li>
                                    <li class="select-number-teen">8</li> -->
								</ul>
							</div>
						</div>
						<div class="select-seat">
							<div class="select-seat-age">우대</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul  select-seat-ul-old">
									<li class="select-number-old">0</li>
									<li class="select-number-old">1</li>
									<li class="select-number-old">2</li>
									<li class="select-number-old">3</li>
									<li class="select-number-old">4</li>
									<li class="select-number-old">5</li>
									<!-- <li class="select-number-old">6</li>
                                    <li class="select-number-old">7</li>
                                    <li class="select-number-old">8</li> -->
								</ul>
							</div>
						</div>

					</div>
					<div class="reserve-number-wrapper">
						<div class="reserve-number-title">선택된 좌석 수</div>
						<div class="reserve-number">0</div>
					</div>
				</div>
				<div class="select-seat-information">
					<div class="selected-movie"><%=reserve.getTitle()%></div>
					<div class="select-seat-information-wrapper">
						<div class="select-theater-place selected-theater-place-info">CGV강남</div>
						<div class="select-theater-place selected-theater-place-info">3관
							8층</div>
						<div class="select-theater-place">
							<span>남은좌석</span><span class="remain-seats">152</span>/<span
								class="all-seats">172</span>
						</div>

					</div>
					<div class="select-theater-date">
						<div class="theater-date"><%=reserve.getMovieDate()%></div>
						<div class="theater-time"><%=reserve.getRunningTime()%></div>
					</div>
					<div class="selected-seats-wrapper">
						<span class="selected-seats-title">좌석번호</span> <span
							class="selected-seats">선택한 좌석이 없습니다.</span>
					</div>
					<div class="ticket-price-wrapper">
						<div class="ticket-price-title">가격</div>
						<div class="ticket-price">0원</div>
					</div>
					<form action="moveKakao.do" class="seatForm" method="post">
						<input type="hidden" class="title" name="title"> <input
							type="hidden" class="selectedTheater" name="selectedTheater">
						<input type="hidden" class="reserveDate" name="movieDate">
						<input type="hidden" class="runningTime" name="runningTime">
						<input type="hidden" class="movieAge" name="movieAge"
							value="<%=reserve.getMovieAge()%>">
						<!-- 티켓의수(선택한 좌석) -->
						<input type="hidden" class="ticketNumber" name="ticketNumber">
						<input type="hidden" class="selectedSeat" name="selectedSeat">
						<!-- 결제 정보 -->
						<input type="hidden" class="payMoney" name="payMoney">
						<button type="button" class="reserve-button">
							결제하기<img src="./images/payment_icon_yellow_medium.png">
						</button>
					</form>
				</div>

			</div>
			<div class="seat-container">

				<div class="seat-wrapper">
					<div class="screen-view-wrapper">
						<div class="screen-view">SCREEN</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="js/seat.js"></script>

</html>