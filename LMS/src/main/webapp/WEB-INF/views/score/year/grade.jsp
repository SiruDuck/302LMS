<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<li><select name="grade_num" id="yearList" class="w-px200" onchange="$('form').submit()">
<option value="-1">년도별</option>
	<c:forEach items="${years}" var ="year">
		<option value="${year}"> ${year}</option>
	</c:forEach>
</select></li>
<table class='table'>
	<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>학기</th><th>학점</th></tr>
	<c:forEach items='${list}' var='vo'>
	<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.semester}</td><td>${vo.semesterpoint}</td></tr>
	</c:forEach>
</table>
