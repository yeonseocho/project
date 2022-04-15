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
</style>

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
                <a class="nav-link" href="/moviein/moviess">영화</a>
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
            <img src="/img/toymain.png" class="d-block main-img" alt="..." style="width: 100%">

        </div>
        </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </button>
</div>

<div style="margin-bottom: 100px;"></div>

<div class="container">
	<h2>영화</h2>
    	<div class="row">
        <div class="col-1" style="max-width: 3.333333%;"></div>
        <div class="card" style="width: 15rem;">
        	<a href="/detail/{{id}}">  
                <img src="/img/frozen.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
			    <div class="card-body">
     
                    <h2>겨울왕국</h2>
            
            	</div>
           	</a> 
         </div>
   
   <div class="col-1" style="max-width: 3.333333%;"></div>
     	<div class="card" style="width: 15rem;">
                <a href="/detail/{{id}}">
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
                <a href="/detail/{{id}}">
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
                <a href="/detail/{{id}}">
                <img src="/img/spider.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
				<div class="card-body">
				
                    <h2>스파이더맨</h2>

   	 			</div>
    			</a>
			</div>

<div style="margin-bottom: 100px;"></div>
		<div class="col-5"style="max-width: 3.44%;"></div>
       		<div class="card" style="width: 15rem;">
                <a href="/detail/{{id}}">
                <img src="/img/ani.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                    <h2>신비한 동물사전</h2>

    			</div>
    			</a>
			</div>

<div style="margin-bottom: 100px;"></div>
		<div class="col-6" style="max-width: 3%;"></div>
        		<div class="card" style="width: 15rem;">
                	<a href="/detail/{{id}}">
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
                <a href="/detail/{{id}}">
                <img src="/img/dune.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">

                <div class="card-body">
                    <h2>DUNE</h2>

    			</div>
    			</a>
			</div>

<div style="margin-bottom: 100px;"></div>
<div class="col-1" style="max-width: 3.333333%;"></div>
          <div class="card" style="width: 15rem;">
                <a href="/detail/{{id}}">
                <img src="/img/frozen.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">

                <div class="card-body">
                    <h2>겨울왕국</h2>

    </div>
    </a>
</div>

<div style="margin-bottom: 100px;"></div>
     <div class="col-1" style="max-width: 3.333333%;"></div>
            <div class="card" style="width: 15rem;">
                <a href="/detail/{{id}}">  
                <img src="/img/batman.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>더 배트맨</h2>
            
            	</div>
            	 </a>
            </div>
            
		<div class="col-1" style="max-width: 3.333333%;"></div>
        	<div class="card" style="width: 15rem;">
            	<a href="/detail/{{id}}">
                <img src="/img/secret.JPG" class="card-img-top card-img" name="poster" alt="imgUrl" width="100%" height="340px">
                <div class="card-body">
                
                    <h2>말할 수 없는 비밀</h2>

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