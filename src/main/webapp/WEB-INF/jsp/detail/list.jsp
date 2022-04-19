<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>영화 목록보기</title>
<style>
#btt { display: block; margin: 0 auto; width: fit-content;}
</style>

</head>
<body>
<div id="btt">
<h3>영화 정보 목록보기</h3>

<c:forEach var="d"  items="${list}">

   <div>${d.num}
      <a href="/de/detail?num=${d.num}" >${d.title}</a>
       
      <c:forEach var="a" items="${d.dattach}">
         ${da.num}${da.filename} ${da.filesize}
      </c:forEach>
   </div>

</c:forEach>
<p>
<button type="button"><a href="/de/add">추가</a></button>
</p>
</div>
</body>
</html>