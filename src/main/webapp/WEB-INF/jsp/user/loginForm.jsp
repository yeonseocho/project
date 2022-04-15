<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
	main { width:fit-content; padding:1em; margin:0 auto; text-align: center;}
	label {display:inline-block; width:50px; text-align:right; margin:0 10px; }
	input { width:100px; }
	form {border:1px solid black; padding:10px; border-radius:3px; }
	div:last-child { margin-top:1em; }
	#btt { display: block; margin: 0 auto; width: fit-content;}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>로그인</title>
	<script>
		function login() {
			var serData = $('#loginForm').serialize();
			
			$.ajax({
				url : '/mb/login',
				method : 'post',
				cache : false,
				data : serData,
				dataType : 'json',
				success : function(res) {
				
					 if(res.ok) {
						alert('로그인 성공!');
						location.href = "/movie/main"; 
					} else {
						alert('로그인 실패');
					} 
				},
				error : function(xhr, status, err) {
					alert('err: ' + err);
				} 
			});
			return false;
		}
	</script>
</head>
<body>

	<div id="btt"> 
	<h3>로그인</h3>
	<form id = "loginForm" onsubmit = "return login();">
		<div><label>아이디</label>
			<input type = "text" name = "uid" id = "uid" value = "아이디를 입력하세요. ">
		</div>
		<div><label>암 호</label>
			<input type = "password" name = "pwd" id = "pwd" value = "비밀번호를 입력하세요">
		</div>
		<div>
			<button type = "submit">로그인</button>
			<button type = "reset">취소</button>
		   <!-- get방식 -->
		<button type="button" 
		onclick="location.href='/mb/add';">회원이 아니세요?</button>
		</div>
	</form>
	</div>
</body>
</html>