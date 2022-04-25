<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <!-- CSS -->
    <link rel="stylesheet" href="../css,js/style.css">
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Gowun+Dodum&family=Rowdies:wght@300;400;700&display=swap" rel="stylesheet">
<style>

 div > h2 {text-align:center;}
 aside{
 
 border-style: dashed;
 color:#339999;
 width:470px;
 height:416px;
 float:right;
 }
 aside>section>h2 {text-align:center;}
#boxoffice {width:470px;height:416px;}

</style>
<%-- 
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
            $(function() {
                let y = new Date();
                y.setDate(y.getDate()-1);
                let str = y.getFullYear() + "-"
                + ("0" + (y.getMonth() + 1)).slice(-2) + "-"
                + ("0" + y.getDate()).slice(-2);
                $("#date").attr("max",str);

                // 버튼의 클릭 이벤트
                $("#mybtn").click(function() {
                    let d = $("#date").val();//YYYY-MM-dd
                    const regex = /-/g;
                    let d_str = d.replace(regex,"")//YYYYMMdd 

                    let url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str
					
                     $.getJSON(url, function(data) {
                         let movieList = data.boxOfficeResult.dailyBoxOfficeList;
                         $("#boxoffice").empty();
                         $("#boxoffice").append(d+" 박스 오피스 순위<br>");
                         for(let i in movieList){
                             $("#boxoffice").append("<div class='movie' id="+movieList[i].movieCd+">"+(parseInt(i)+1)+". <a href='/moviein/detail'>"+movieList[i].movieNm+"</a> / "+movieList[i].audiAcc+"명</div><hr>");
                             //console.log(movieList[i].movieCd);
                         }
                        });
                });//button click
                //영화 제목 클릭시 영화 정보 출력
                $("#boxoffice").on("click",".movie", function(){
                    let d = $(this);
                    let movieCd = d.attr("id");
                    let url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=69572d11a22a27ad291b039c21495eb9&movieCd="+movieCd;
                    $.getJSON(url,function(res){
                        let movie = res.movieInfoResult.movieInfo;
                        d.append("<hr>");
                        d.append("개봉일 : "+movie.openDt+"<br>");
                        d.append("감독 : "+movie.directors[0].peopleNm+"<br>");
                        d.append("주연 : "+movie.actors[0].peopleNm+", "+movie.actors[1].peopleNm+", "+movie.actors[2].peopleNm);
                        d.append("<hr>");
                    })
                })
            });//ready
        </script>
        --%>
        
<title>MovieReview</title>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand nav-home" href="/movie/main">홈</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">

            <li class="nav-item">
                <a class="nav-link" href="/moveMain.do">박스 오피스 순위</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/bbs/list">리뷰</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/mb/login">로그인</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/mb/add">회원가입</a>
            </li>

        </ul>
    </div>
</nav>
<div id="carouselExampleControls" class="carousel slide carousel-img" data-ride="carousel" >
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/img/main3.png" class="d-block main-img" alt="..." style="width: 100%">

        </div>
<%--<aside>
 <section>
<h2>오늘의 영화 랭킹</h2>
<div id="boxoffice">
    박스 오피스 순위<br>
</div>


</section>
</aside>
--%>
   <%-- <div class="carousel-item">
        <img src="/img/aven.JPG" class="d-block w-10" alt="..." style="width: 100%"> 
    </div>
    <div class="carousel-item">
        <img src="..." class="d-block w-10" alt="...">
    </div>

        </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </button>--%> 
</div>


<div style="margin-bottom: 100px;"></div>

<div class="container">
	<h2>영화</h2>
    	<div class="row">
        <div class="col-1" style="max-width: 3.333333%;"></div>
        <div class="card" style="width: 15rem;">
        	<a href="/de/detail?num=2">  
                <img src="/img/frozen.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
			    <div class="card-body">
     
                    <h2>겨울왕국</h2>
            
            	</div>
           	</a> 
         </div>
   
   <div class="col-1" style="max-width: 3.333333%;"></div>
     	<div class="card" style="width: 15rem;">
                <a href="/de/detail?num=8">
                <img src="/img/once.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
				<div class="card-body">
				
                     <h2>Once upon a time in hollywood</h2>

				</div>
				</a>
		</div>


<div style="margin-bottom: 100px;">
</div>

		<div class="col-1" style="max-width: 3.333333%;"></div>
        	<div class="card" style="width: 15rem;">
                <a href="/de/detail?num=9">
                <img src="/img/parasite.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>기생충</h2>

    			</div>
    			</a>
     <div class="col-1"></div>
    
</div>


<div style="margin-bottom: 100px;"></div>

		<div class="col-1" style="max-width: 3.333333%;"></div>
        	<div class="card" style="width: 15rem;">
                <a href="/de/detail?num=10">
                <img src="/img/spider.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
				<div class="card-body">
				
                    <h2>스파이더맨 파 프럼 홈</h2>

   	 			</div>
    			</a>
			</div>

<div style="margin-bottom: 100px;"></div>
		<div class="col-5"style="max-width: 3.44%;"></div>
       		<div class="card" style="width: 15rem;">
                <a href="/de/detail?num=12">
                <img src="/img/ani.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                    <h2>신비한 동물사전</h2>

    			</div>
    			</a>
			</div>

<div style="margin-bottom: 100px;"></div>
		<div class="col-6" style="max-width: 3%;"></div>
        		<div class="card" style="width: 15rem;">
                	<a href="/de/detail?num=13">
                	<img src="/img/ani2.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
	  				<div class="card-body">
                
                    <h2>신비한 동물사전2</h2>

    				</div>
    				</a>
				</div>

<div style="margin-bottom: 100px;">
</div>
 <div class="col-7" style="max-width: 3.333333%;"></div>
          <div class="card" style="width: 15rem;">
                <a href="/de/detail?num=14">
                <img src="/img/dune.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">

                <div class="card-body">
                    <h2>DUNE</h2>

    			</div>
    			</a>
			</div>

<div style="margin-bottom: 100px;"></div>
<div class="col-1" style="max-width: 3.333333%;"></div>
          <div class="card" style="width: 15rem;">
                <a href="/de/detail?num=15 ">
                <img src="/img/cruella.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">

                <div class="card-body">
                    <h2>cruella</h2>

    </div>
    </a>
</div>

<div style="margin-bottom: 100px;"></div>
     <div class="col-1" style="max-width: 3.333333%;"></div>
            <div class="card" style="width: 15rem;">
                <a href="/de/detail?num=16">  
                <img src="/img/batman.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>더 배트맨</h2>
            
            	</div>
            	 </a>
            </div>
            
		<div class="col-1" style="max-width: 3.333333%;"></div>
        	<div class="card" style="width: 15rem;">
            	<a href="/de/detail?num=17">
                <img src="/img/secret.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>말할 수 없는 비밀</h2>

				</div>
				</a>
			</div>
	<div class="col-1" style="max-width: 3.333333%;"></div>
        	<div class="card" style="width: 15rem;">
            	<a href="/de/detail?num=18">
                <img src="/img/now.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>지금 만나러 갑니다</h2>

				</div>
				</a>
			</div>
	<div class="col-1" style="max-width: 3.333333%;"></div>
        	<div class="card" style="width: 15rem;">
            	<a href="/de/detail?num=19">
                <img src="/img/chung.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>중경삼림</h2>

				</div>
				</a>
			</div>

		</div>
</div>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-4">All about movies</h1>
        <p class="lead"> with yeonseo</p>
        <p class="lead"> ⓒ movie_review
        </p>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>