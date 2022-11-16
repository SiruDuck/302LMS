<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 강의 개설</title>
</head>
<body>
<h3>신규 강의 개설</h3>
<form method='post' action='insert.lec'>
<table class='w-px600'>
<tr><th class='w-px160'>강의 번호</th>
	<td><input type='text' name='lecture_num'></td>
</tr>
<tr><th>강의명</th>
	<td><input type='text' name='lecture_title'></td>
</tr>
<tr><th>교수명</th>
	<td><input type='text' name='teacher_name'></td>
</tr>
<tr><th>이수 구분</th>
	<td>
		<label><input type='radio' name='sortation' >전공</label>
		<label><input type='radio' name='sortation' >교양</label>
	</td>
</tr>
<tr><th>학점</th>
	<td><input type='text' name='subjectcredit' ></td>
</tr>
<tr><th>강의실</th>
	<td><input type='text' name='lecture_room' ></td>
</tr>
<tr><th>수강요일</th>
	<td>
		<label><input type='checkbox' name='lecture_day' value='월' >월</label>
		<label><input type='checkbox' name='lecture_day' value='화' >화</label>
		<label><input type='checkbox' name='lecture_day' value='수' >수</label>
		<label><input type='checkbox' name='lecture_day' value='목' >목</label>
		<label><input type='checkbox' name='lecture_day' value='금' >금</label>
	</td>
</tr>
<tr><th>수강시간</th>
	<td>
		<label><input type='checkbox' name='lecture_time1' value='1교시' >1교시</label>
		<label><input type='checkbox' name='lecture_time2' value='2교시' >2교시</label>
		<label><input type='checkbox' name='lecture_time3' value='3교시' >3교시</label>
		<label><input type='checkbox' name='lecture_time4' value='4교시' >4교시</label>
		<label><input type='checkbox' name='lecture_time5' value='5교시' >5교시</label>
		<label><input type='checkbox' name='lecture_time6' value='6교시' >6교시</label>
		<label><input type='checkbox' name='lecture_time7' value='7교시' >7교시</label>
		<label><input type='checkbox' name='lecture_time8' value='8교시' >8교시</label>
	</td>
</tr>
<tr><th>수강인원</th>
	<td><input type='text' name='capacity' ></td>
</tr>
<tr><th>중간고사</th>
	<td><input type='text' name='midex' ></td>
</tr>
<tr><th>기말고사</th>
	<td><input type='text' name='finalex' ></td>
</tr>
<tr><th>온/오프라인</th>
	<td>
		<input type='text' name='state' >
	</td>
</tr>
<tr><th>교재명</th>
	<td><input type='text' name='book' ></td>
</tr>
<tr><th>년도</th>
	<td><input type='text' name='lecture_year' ></td>
</tr>
<tr><th>학기</th>
	<td>
	<label><input type='checkbox' name='semester' >1학기</label>
	<label><input type='checkbox' name='semester' >2학기</label>
	</td>
</tr>
</table>
</form>
<div class='btnSet'>
	<a class='btn-fill' href="javascript:$('form').submit()">저장</a>
<!-- 	<a class='btn-fill' onclick="$('form').submit()">저장</a> -->
	<a class='btn-empty' href='list.lec'>취소</a>
</div>
</body>
</html>