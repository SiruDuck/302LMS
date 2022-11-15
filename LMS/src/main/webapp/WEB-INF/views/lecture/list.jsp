<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 목록</title>
</head>
<body>
<h2>lecture</h2>

<table class='table'>
 <colgroup>
	<col width='140px'>
	<col width="140px">
	<col width='140px'>
	<col width='220px'>
	<col width='140px'>
	<col width='140px'>
	<col width='140px'>
	<col width='160px'>
	<col width='140px'>
	<col width='160px'>
	<col width='160px'>
	<col width='200px'>
	<col width='200px'>
	<col width='160px'>
	<col width='120px'>
	<col width='220px'>
</colgroup>
<tr><th>강의번호</th>
	<th>년도</th>
	<th>학기</th>
	<th>강의명</th>
	<th>교수명</th>
	<th>강의실</th>
	<th>시간</th>
	<th>이수구분</th>
	<th>수강신청</th>
	<th>접수상태</th>
	<th>수강인원</th>
	<th>중간고사</th>
	<th>기말고사</th>
	<th>과목학점</th>
	<th>온라인/오프라인</th>
	<th>교재명</th>
</tr>
<c:forEach items='${vo}' var='vo'>
<tr>
	<td>${vo.lecture_num}</td>
	<td>${vo.lecture_year}</td>
	<td>${vo.semester}</td>
	<td><a href="detail.lec?lecture_title=${vo.lecture_title}">${vo.lecture_title}</a></td>
	<td>${vo.teacher_name}</td>
	<td>${vo.lecture_room}</td>
	<td>${vo.lecture_time}</td>
	<td>${vo.sortation}</td>
	<td>${vo.enrolment}</td>
	<td>${vo.reception_status}</td>
	<td>${vo.capacity}</td>
	<td>${vo.midex}</td>
	<td>${vo.finalex}</td>
	<td>${vo.subjectcredit}</td>
	<td>${vo.state}</td>
	<td>${vo.book}</td>
</tr>
</c:forEach>
</table>
</body>
</html>