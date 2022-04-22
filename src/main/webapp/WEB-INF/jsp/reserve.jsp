<%@page import="com.mp.model.CGVMemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <%
CGVMemberDto login = (CGVMemberDto)session.getAttribute("login");
if(login!= null) System.out.println(login.toString());
%> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/reserve.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
    <script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
    <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    <!-- MATERIAL DESIGN ICONIC FONT -->
    <style>
    * {
    font-size: 11px;
}

body {
    background-color: #FDFCF0;
}


/* header */

.header-nav-wrapper {
    background: url(../images/bg_header.gif) repeat-x 0 0;
    background-position: center;
    background-size: contain;
    height: 120px;
    padding-top: 4px;
}

.header-nav-container {
    position: fixed;
}

.header {
    display: flex;
    justify-content: space-between;
    padding-left: 40px;
    padding-right: 150px;
}

.header-inner {
    display: flex;
}

.header-inner>div {
    border-right: 1px solid #DDDDDD;
    margin-left: 8px;
    padding-right: 4px;
}


/* //header */


/* nav */

.nav-line {
    background-color: red;
    border-radius: 50px;
    height: 5px;
    /* background-image: linear-gradient(to right, white 33%, rgba(255, 255, 255, 0) 0%);
  background-position: bottom;
  background-size: 15px 1px;
  background-repeat: repeat-x; */
}

.nav-wrapper {
    /* background: url(../images/bg_header.gif) repeat-x 0 0; */
    /* width: 100%;*/
    height: 94px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.nav-content {
    padding-top: 15px;
}

.movieLogo-wrapper {
    text-align: center;
}

.cgvLogo {
    width: 120px;
    margin-left: 150px;
    /* margin-right: -40px; */
}

.cgvMovie {
    width: auto;
    height: 28px;
}

.nav-inner {
    display: flex;
    /* margin-left: -250px; */
    margin-left: 150px;
    margin-right: auto;
    align-items: center;
    padding-bottom: 15px;
}

.nav-inner>div>button {
    padding-top: 5px;
    font-size: 14px;
    font-weight: bold;
    margin-left: 15px;
}

.search-wrapper {
    margin-left: 70px;
    height: 20px;
}

.search-wrapper>input {
    width: 100px;
    height: 20px;
}

.searchButton {
    margin: 0 !important;
    padding: 2px !important;
    background-color: red;
    color: white;
    width: 30px;
    height: 100%;
    font-size: 10px !important;
}


/* content */

.reserve-container {
    margin-top: 140px;
    display: flex;
    justify-content: center;
    height: 800px;
    /* border: 1px solid #dddddd; */
}

.reserve-container>div {
    border: 1px solid #dddddd;
}

.reserve-title {
    border-bottom: 1px solid #dddddd;
    background-color: #444444;
    text-align: center;
    color: #dddddd;
    padding: 5px;
    font-size: 13px;
    font-weight: bold;
}

.movie-part {
    width: 284px;
}

.theater-part {
    width: 264px;
}

.day-part {
    width: 91px;
}

.time-part {
    width: 384px;
}

.sort-wrapper {
    margin: 10px 6px 6px 10px;
    /* padding: 3px; */
    display: flex;
    border-bottom: 1px solid #dddddd;
    font-size: 12px;
}

.sort-wrapper>div {
    padding: 3px;
}

.sort-wrapper>div:hover {
    border-bottom: 1px solid #111111;
}

.sort-selected {
    font-weight: bold;
    border-bottom: 1px solid #111111;
}

.sort-korean {
    margin-left: 6px;
}

.reserve-date {
    padding-top: 5px;
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 770px;
    overflow: scroll;
    overflow-x: hidden;
}

.movie-date-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 5px 2px;
}

.movie-week-of-day {
    margin-left: 5px;
    font-size: 10px;
    width: 12px;
    height: 22px;
    line-height: 22px;
}

.movie-day {
    text-align: center;
    width: 34px;
    height: 22px;
    font-size: 17px;
    font-weight: bold;
}

.saturday {
    color: #31597E;
    font-weight: bold;
}

.sunday {
    color: #AF2D2D;
    font-weight: bold;
}

.movie-date-wrapper-active {
    background-color: #333333;
}

.movie-date-wrapper-active>* {
    color: white;
}

.theater-wrapper {
    padding-left: 12px;
    padding-top: 2px;
    display: flex;
}

.theater-location-wrapper {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
}

.theater-place-wrapper {
    padding-right: 2px;
    margin-top: 2px;
    height: 300px;
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    overflow: scroll;
    overflow-x: hidden;
}

.theater-location {
    height: 30px;
    font-size: 11px;
    text-align: right;
    background-color: #E6E4D9;
    padding: 6px 6px 6px 0;
    margin-top: 1px;
}

.theater-place {
    padding: 6px 5px;
    height: 40px;
    font-size: 12px;
    font-weight: bold;
    text-align: left;
}

.reserve-time {
    width: 300px;
    margin: 0 auto;
}

.reserve-where {
    font-size: 12px;
    margin-top: 20px;
    margin-left: 8px;
    font-weight: bold;
}

.reserve-time-wrapper {
    margin-top: 10px;
}

.reserve-time-button {
    margin-top: 10px;
}

.reserve-time-want {
    letter-spacing: 1px;
    font-size: 12px;
    padding: 3px;
    font-weight: bold;
    border: 1px solid #dddddd;
}

.reserve-time-remain {
    color: #97B68D;
}

.reserve-time-active {
    background-color: #333333;
    color: white;
}

.theater-place-active {
    background-color: #333333;
    color: white;
}

.movie-list-wrapper {
    padding: 4px 15px;
}

.movie-list {
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.movie-list-age {
    width: 24px;
    height: 24px;
    line-height: 24px;
    text-align: center;
    /* color: white; */
    font-weight: bold;
    font-size: 12px;
    border-radius: 100%;
    /* background-color: #AF2D2D; */
}
.moveSeatButton{
	
	font-size: 18px;
	font-weight: bold;
	padding: 5px;
	margin-top: 20px;
	margin-left: 80px;
	border: 1px solid #333333;
}
.moveSeatButton:hover{
	 background-color: #333333;
	 color: white;
}
.fifteen {
    color: white;
    background-color: #AF2D2D;
    
}

.eighteen {
    color: white;
    background-color: red;
    font-size: 11px;
}

.all {
    color: white;
    background-color: #52AE35;
    font-size: 11px;
}

.movie-list-title {
    padding: 6px 4px;
    margin-left: 5px;
    font-size: 12px;
}

.movie-list-title-active {
    background-color: #333333;
}

.movie-list-title-active>button {
    font-weight: bold;
    color: white;
}

::-webkit-scrollbar {
    width: 10px;
    /* height: 8px; */
    border: 3px solid #ffffff;
}

::-webkit-scrollbar-track {
    background: #efefef;
    -webkit-border-radius: 10px;
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .2)
}

::-webkit-scrollbar-thumb {
    width: 50px;
    height: 50px;
    background: #444444;
    -webkit-border-radius: 8px;
    border-radius: 8px;
    -webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .1)
}
    </style>

</head>

<body>
 <%if(login == null){
	%>
	<script>
	alert("로그인이 필요한 작업입니다 로그인을 진행해 주세요!")
	location.href="moveMain.do"
	</script>
	<%
}%> 
    <div class="header-nav-wrapper">
        <header class="header">
            <div class="header-inner">
                <div><button><i class="zmdi zmdi-apps"></i><span>&nbsp;CGV APP</span></button></div>
                <div><button><i class="zmdi zmdi-facebook-box"></i><span>&nbsp;Like</span></button></div>
                <div><button><i class="zmdi zmdi-instagram"></i><span>&nbsp;follow</span></button></div>
                <div><button>알뜰한 영화 관람법</button></div>
            </div>
            <div class="header-inner">
                
                 <% if(login != null){
                	%>
                	<div><button><%=login.getName()%>님 환영합니다</button></div>
                	<div><a href="moveMypage.do"><button>마이페이지</button></a></div>
                	<div><a href="logout.do"><button>로그아웃</button></a></div>
                	<%
                } else {
                	%>
                	<div><a href="moveLogin.do"><button>로그인</button></a></div>
                	<div><a href="moveRegister.do"><button>회원가입</button></a></div>
                	<%
                }
                %> 
            </div>
        </header>
        <nav class="nav-wrapper">
            <div class="logo-wrapper"><a href="moveMain.do"><img class="cgvLogo" src="./images/cgv.png"></a></div>
            <div class="nav-content">
                <div class="movieLogo-wrapper"><img class="cgvMovie" src="./images/h2_movie.png"></div>
                <div class="nav-inner">
                    <div><button>영화</button></div>
                    <div><button>예매</button></div>
                    <div><button>극장</button></div>
                    <div><button>이벤트&컬쳐</button></div>
                    <div class="search-wrapper"><input><button class="searchButton">검색</button></div>
                </div>
            </div>
            <div></div>
            <div></div>
        </nav>
    </div>
    <div class="reserve-container">
        <div class="movie-part">
            <div class="reserve-title">영화</div>
            <div class="sort-wrapper">
                <div class="sort-rate sort-selected">예매율순</div>
                <div class="sort-korean">가나다순</div>
            </div>
             <div class="movie-list-wrapper">
                <div class="movie-list">
                    <%-- <div class="movie-list-age">15</div>
                    <div class="movie-list-title">1917</div> --%>
                </div>
            </div>
        </div>
        <div class="theater-part">
            <div class="reserve-title">
                극장
            </div>
            <div class="theater-container">
                <div class="theater-wrapper">
                    <div class="theater-location-wrapper">
                        <button class="theater-location">서울(30)</button>
                        <button class="theater-location">경기(43)</button>
                        <button class="theater-location">인천(10)</button>
                        <button class="theater-location">강원(5)</button>
                    </div>
                    <div class="theater-place-wrapper">
                        <button class="theater-place">천호</button>
                        <button class="theater-place">강변</button>
                        <button class="theater-place">건대입구</button>
                        <button class="theater-place">구로</button>
                        <button class="theater-place">대학로</button>
                        <button class="theater-place">동대문</button>
                        <button class="theater-place">목동</button>
                        <button class="theater-place">명동</button>
                        <button class="theater-place">미아</button>
                        <button class="theater-place">불광</button>
                        <button class="theater-place">상봉</button>
                        <button class="theater-place">송파</button>
                        <button class="theater-place">수유</button>
                        <button class="theater-place">압구정</button>
                        <button class="theater-place">여의도</button>
                        <button class="theater-place">영등포</button>
                        <button class="theater-place">왕십리</button>
                        <button class="theater-place">중계</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="day-part">
            <div class="reserve-title">날짜</div>
            <div class="reserve-date"></div>
        </div>
        <div class="time-part">
            <div class="reserve-title">시간</div>
            <div class="reserve-time">
                <div class="reserve-where">4관(Laser) 6층(총 240석) </div>
                <div class="reserve-time-wrapper">
                    <button class="reserve-time-button">
            <span class="reserve-time-want">12:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>
                    <button class="reserve-time-button">
            <span class="reserve-time-want">14:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>
                    <button class="reserve-time-button">
            <span class="reserve-time-want">16:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>
                    <button class="reserve-time-button">
            <span class="reserve-time-want">18:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>

                </div>
            </div>
            <div>
            <form class="moveSeatForm" action="moveSeat.do" method="post">
            <input type="hidden" class="title" name="title">
            <input type="hidden" class="movieAge" name="movieAge">
            <input type="hidden" class="selectedTheater" name="selectedTheater">
            <input type="hidden" class="reserveDate" name="movieDate">
            <input type="hidden" class="runningTime" name="runningTime">
            <button class="moveSeatButton" type="button">예약하기</button>
            </form>
            </div>
        </div>

    </div>
    <script src="js/reserve.js"></script>
</body>
</html>