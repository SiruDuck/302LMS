<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 상세 보기</title>
</head>
<body>
<h3>강의정보</h3>
	<table class="w-px600">
		<tr><th class="w-px160">강의번호</th>
			<td>${vo.lecture_num}</td>
		</tr>
		<tr><th>교수명</th>
			<td>${vo.teacher_name}</td>
		</tr>
		<tr><th>강의명</th>
			<td>${vo.lecture_title}</td>
		</tr>
		<tr><th>강의실</th>
			<td>${vo.lecture_room}</td>
		</tr>
		<tr><th>년도</th>
			<td>${vo.lecture_year}</td>
		</tr>
		<tr><th>학기</th>
			<td>${vo.semester}</td>
		</tr>
		<tr><th>이수구분</th>
			<td>${vo.sortation}</td>
		</tr>
		<tr><th>과목학점</th>
			<td>${vo.subjectcredit}</td>
		</tr>
		<tr><th>교재명</th>
			<td>${vo.book}</td>
		</tr>
		<tr><th>강의시간</th>
			<td>${vo.lecture_time}</td>
		</tr>
		<tr><th>수강신청</th>
			<td>${vo.enrolment}</td>
		</tr>
		<tr><th>수강인원</th>
			<td>${vo.capacity}</td>
		</tr>
		<tr><th>중간고사</th>
			<td>${vo.midex}</td>
		</tr>
		<tr><th>기말고사</th>
			<td>${vo.finalex}</td>
		</tr>
		<tr><th>온라인/오프라인</th>
			<td>${vo.state}</td>
		</tr>
		<tr><th>접수상태</th>
			<td>${vo.reception_status}</td>
		</tr>
		
	
	</table>
	<div class="btnSet">
		<a href="list.lec" class="btn-fill">강의 목록</a>
		<a href="modify.cu?id=${vo.lecture_title}" class="btn-fill">정보수정</a>
		<a class="btn-fill" onclick="if(confirm('정말 삭제?')) location='delete.lec?lecture_title=${vo.lecture_title}'">삭제</a>
	</div>
</body>
</html>