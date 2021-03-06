<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
	h3 { width:fit-content; margin:10px auto; }
	form { width:fit-content; padding:1em; border:1px solid black; margin:0 auto; }
	label { display:inline-block; width: 5em; text-align: right; margin-right:20px; }
	div:last-child { margin-top:1em; text-align: center; }
	
	body {
  background-image:url("/img/incredible.JPG");
  
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>회원가입</title>
 
 

	<script>
		 var idcheck = false; 
		function addUser() {
			
			 if(!confirm('회원가입 하시겠습니까?')) {
				alert('정상적으로 취소했습니다.');
				return false;
			} 
			 if(idcheck == false) {
				alert('아이디 중복확인을 해주세요');
				return false;
			} 
			
			 var serData = $('#addForm').serialize();
			
			$.ajax({
				url : '/mb/add',
				method : 'post',
				cache : false,
				data : serData,
				dataType : 'json',
				success : function(res) {
					 if(res.add) {
						 alert("환영합니다!");
					 } else {
						 alert('회원 가입에 실패하셨습니다.');						 
					 }
						 location.href = "/mb/login"; 
				},
				error : function(xhr, status, err) {
					alert('중복되는 아이디입니다.');
				} 
			});
			return false; 
		}
		function idchecked() {
			
			var serData = $('#uid').serialize();
			/* alert(serData); */
			$.ajax({
				url : '/mb/idcheck',
				method : 'post',
				cache : false,
				data : serData,
				dataType : 'json',
				success : function(res) {
					 if(res.check) {
						 alert('사용 가능한 아이디입니다.');
						 idcheck = true;
					 } else {
						 alert('중복된 아이디입니다.');
					 }
				},
				error : function(xhr, status, err) {
					alert('err : ' + err);
				} 
			});
			
		   return false;
}  
		   
	</script>
</head>
<body>

	<h3>회원가입을 진행해주세요.</h3> 
	
	<form id = "addForm"  onsubmit = "return addUser();"> 
			<div><label for ="uid">I D</label> <input type = "text" id="uid" name = "uid" value = ""> 
			  <button type = "button" onclick = "idchecked()">중복확인</button>
			 </div>
			<div><label for ="pwd">Password</label> <input type = "text" id="pwd" name = "pwd" value = ""> </div>
			<div><label for ="name">Name</label> <input type = "text" id="name" name = "name" value = ""> </div>
			<div><label for ="phone">Phone</label> <input type = "text" id="phone" name = "phone" value = ""> </div>
			

			<div>
				<button type = "submit">회원가입</button>
				<button type = "reset">초기화</button>
				<%--<button type="button" 
					onclick="location.href='/mb/list';">목록</button> --%>
			</div>
	</form>
</body>
</html>