<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>영화 정보 추가하기</title>
</head>
<body>
<h3>영화 정보 추가하기</h3>
<form action="/de/add" method="post" enctype="multipart/form-data">
	<div><label for="title">영화 제목</label><input type="text" name="title" value="영화 제목"></div>
	<div><label for="director">감독</label><input type="text" name="director" value="영화 감독"></div>
	<div><label for="actor">배우</label><input type="text" name="actor" value="영화 배우"></div>
	<div><label for="movietime">상영시간</label><input type="text" name="movietime" value="상영시간"></div>
	<div><label for="grade">관람연령</label><input type="text" name="grade" value="관람 연령"></div>
	<div><label for="contents">줄거리</label><textarea name="contents" cols="40" rows="5"></textarea></div>
	<div><label>첨부파일</label><input type="file" name="files" multiple></div>
	<div>
		<button type="submit">저장</button>
		<button type="reset">취소</button>
	</div>
</form>
</body>
</html>