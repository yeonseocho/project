<%@page import="com.mp.model.CGVReserveDto"%>
<%@page import="java.util.List"%>
<%@page import="com.mp.model.CGVMemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	CGVMemberDto login = (CGVMemberDto) session.getAttribute("login");
	if (login != null)
		System.out.println(login.toString());
	List<CGVReserveDto> list = (List<CGVReserveDto>) request.getAttribute("reserveList");
%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/myPage.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<!-- MATERIAL DESIGN ICONIC FONT -->
<style>
.my-page-container {
    margin-top: 140px;
    display: flex;
    justify-content: center;
}

.my-page-wrapper {
    margin: 0 auto;
    width: 800px;
    border: 2px solid #dddddd;
}

.my-page-header {
    text-align: center;
    background-color: #333333;
    padding: 5px 0;
    color: #dddddd;
}

.movie-reserve-list {
    padding: 15px;
    display: flex;
    flex-wrap: wrap;
}

.movie-reserve {
    margin-top: 10px;
    margin-left: 10px;
    width: 240px;
    height: 380px;
    border: 2px solid #dddddd;
    border-radius: 10px;
    padding: 13px 10px;
}

.movie-reserve-age {
    font-size: 10px;
    font-weight: bold;
    text-align: right;
    border-bottom: 2px solid black;
    padding-bottom: 5px;
}

.movie-reserve-title {
    padding-top: 11px;
    text-align: center;
    font-size: 16px;
    padding-bottom: 11px;
    border-bottom: 2px solid black;
}

.movie-reserve-theater-wrapper {
    margin-top: 10px;
    display: flex;
    justify-content: center;
}

.movie-reserve-seats {
    font-weight: bold;
    margin-top: 8px;
    text-align: center;
    font-size: 20px;
}

.movie-reserve-date-wrapper {
    margin-top: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.movie-reserve-date {
    font-weight: bold;
    font-size: 14px;
}

.movie-reserve-runningTime {
    font-weight: bold;
    font-size: 17px;
    margin-left: 5px;
}

.pay-information-wrapper {
    margin-top: 10px;
    text-align: center;
}

.pay-information-date-title {
    font-size: 12px;
}

.pay-information-date {
    margin-top: 4px;
    font-size: 12px;
    font-weight: bold;
}

.barcode-wrapper {
    margin-top: 10px;
}

.pay-information-money-wrapper {
    margin-top: 8px;
}

.pay-information-money-title {
    font-size: 12px;
}

.pay-information-money {
    margin-top: 3px;
    font-weight: bold;
    font-size: 18px;
}

.barcode-wrapper>div {
    font-size: 20px;
    font-weight: bold;
}

.barcode-wrapper>img {
    margin-top: 5px;
    width: 200px;
    height: 60px;
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
	<div>
		<div class="my-page-container">
			<div class="my-page-wrapper">
				<div class="my-page-header">예약한 영화 목록</div>
				<div class="movie-reserve-list">
					<%
						if (list == null) {
					%>
					<div>예약한 영화가 없습니다</div>
					<%
						} else {
							for (int i = 0; i < list.size(); i++) {
								CGVReserveDto reserveDto = list.get(i);
					%>
					<div class="movie-reserve">
						<div class="movie-reserve-age"><%=reserveDto.getMovieAge() %></div>
						<div class="movie-reserve-title"><%=reserveDto.getTitle() %></div>
						<div class="movie-reserve-theater-wrapper">
							<div><%=reserveDto.getSelectedTheater() %></div>
							&nbsp;/&nbsp;
							<div class="ticket-numeber"><%=reserveDto.getTicketNumber() %>장</div>
						</div>
						<div class="movie-reserve-seats"><%=reserveDto.getSelectedSeat() %></div>
						<div class="movie-reserve-date-wrapper">
							<div class="movie-reserve-date"><%=reserveDto.getMovieDate() %></div>
							<div class="movie-reserve-runningTime"><%=reserveDto.getRunningTime() %></div>
						</div>
						<div class="movie"></div>

						<div class="pay-information-wrapper">
							<div class="pay-information-date-wrapper">
								<div class="pay-information-date-title">결제한 날</div>
								<div class="pay-information-date"><%=reserveDto.getCgvPayDto().getPayDate() %></div>
							</div>

							<div class="pay-information-money-wrapper">
								<div class="pay-information-money-title">결제한 비용</div>
								<div class="pay-information-money"><%=reserveDto.getCgvPayDto().getPayMoney() %>원</div>
							</div>

							<div class="barcode-wrapper">
								<div>CGV</div>
								<img src="images/barcode.png">
							</div>

						</div>
					</div>
					<%
						}
					%>
					<!-- <div class="movie-reserve">
						<div class="movie-reserve-age">15세이상 관람가</div>
						<div class="movie-reserve-title">겨울왕국2</div>
						<div class="movie-reserve-theater-wrapper">
							<div>CGV 강남 1관 3층</div>
							&nbsp;/&nbsp;
							<div class="ticket-numeber">1명</div>
						</div>
						<div class="movie-reserve-seats">A01, A02</div>
						<div class="movie-reserve-date-wrapper">
							<div class="movie-reserve-date">2019.11.22 (금)</div>
							<div class="movie-reserve-runningTime">24:10 ~ 26:03</div>
						</div>
						<div class="movie"></div>
						<div class="pay-information-wrapper">
							<div class="pay-information-date-wrapper">
								<div class="pay-information-date-title">결제한 날</div>
								<div class="pay-information-date">2020-03-07-00시</div>
							</div>
							<div class="pay-information-money-wrapper">
								<div class="pay-information-money-title">결제한 비용</div>
								<div class="pay-information-money">60000원</div>
							</div>
							<div class="barcode-wrapper">
								<div>CGV</div>
								<img src="images/barcode.png">
							</div>
						</div>
					</div> -->
					<%
						}
					%>

	


				</div>

			</div>
		</div>
	</div>

</body>

</html>