<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>리뷰 목록보기</title>
<style>
#btt { display: block; margin: 0 auto; width: fit-content;}

</style>

</head>
<body>
<div id="btt">
<h3>리뷰 목록보기</h3>

<c:forEach var="b"  items="${list}">

   <div>${b.num}
      <a href="/bbs/detail?num=${b.num}" >${b.title}</a>
       
      <c:forEach var="a" items="${b.attach}">
         ${a.num}${a.filename} ${a.filesize}
      </c:forEach>
   </div>

</c:forEach>
<p>
<button type="button"><a href="/bbs/add">추가</a></button>
</p>
</div>
</body>
</html>