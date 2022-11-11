<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>lecture</h2>

<table class='table'>
<colgroup>
	<col width='100px'>
	<col>
	<col width='140px'>
	<col width='140px'>
</colgroup>
<tr><th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일자</th>
</tr>
<c:forEach items='${vo}' var='vo'>
<tr>
	<td>${vo.lecture_title}</td>
	<td>${vo.semester}</td>
	<td >${vo.lectur_room }	</td>
	<td>${vo.teacher_name}</td>
</tr>
</c:forEach>
</table>
</body>
</html>