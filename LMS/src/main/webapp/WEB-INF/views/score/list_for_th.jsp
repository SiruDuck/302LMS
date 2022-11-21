<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='css/common.css?<%=new java.util.Date()%>' type='text/css' rel='stylesheet'> 
<style type="text/css">
a:hover{text-decoration: none;}
a .btn-empty {

    background-color: #fff;
    color: #3367d6;
}
a.btn-fill {
    background-color: #3367d6;
    color: #fff;
}
a.btn-fill, a.btn-empty {
    display: inline-block;
    height: 40px;
    padding: 3px 15px;
    border: 1px solid #3367d6;
    border-radius: 3px;
}
a{cursor: pointer;}
.top-menu{
	width: 100%;
	margin: 1.5rem auto;
	display: flex;
	justify-content: space-between;
}
#data-list{
	height: 100%;
	overflow: auto;
}
#insert{
float: right;
}
</style>
</head>
<body>
	<h2>score</h2>
		<div class="top-menu">
			<div>
			<!-- if 학년조회하고 다시 페이지를 왔을때는 ==> gradeList 바로 실행  -->
				<ul class="search">
					<li>학생명 : <input type="text" id="student_name" /></li>
					<li><select name="years" id="years" class="w-px200" >
						<option value="-1">전체 년도</option>
							<c:forEach items="${teacher_years}" var ="vo">
								<option 
								 value="${vo.year}">${vo.year}</option>
							</c:forEach>
						</select></li>
				</ul>
			</div>
					<a class = "btn-fill" id="insert" href="insert.sc"> 성적입력</a>
		</div>

<!-- <table class='table'> -->
<!-- 		<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>학기</th><th>학점</th></tr> -->
<%-- 		<c:forEach items='${list}' var='vo'> --%>
<%-- 		<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.semester}</td><td>${vo.semesterpoint}</td></tr> --%>
<%-- 		</c:forEach> --%>
<!--  		</table> -->


	<div id="data-list">
		<table class='table'>
			<tr>
				<th>강의명</th>
				<th>강의번호</th>
				<th>학생명</th>
				<th>년도</th>
				<th>학기</th>
				<th>학점</th>
				<th>점수</th>
				<th>성적</th>
			</tr>
		<c:forEach items='${list}' var='vo'>
			<tr>
				<td>${vo.lecture_title}</td>
				<td>${vo.lecture_num}</td>
				<td>${vo.name} (${vo.id})</td>
				<td>${vo.lecture_year}년</td>
				<td>${vo.semester}</td>
				<td>${vo.subjectcredit}</td>
				<td>${vo.semesterpoint}</td>
				<td>${vo.score_name}</td>
				<td><a href="" class="btn-fill"> 점수 수정</a></td>
			</tr>
		</c:forEach>
		
		</table>
	
	</div>
<script>
$("#student_name").keyup(function(){
	$.ajax({
		url: "search_student_name",
// 		aysnc : false,
		data: {student : $("#student_name").val(), year : $("#years").val()},
		success : function (res){
			$("#data-list").empty();
			$("#data-list").append(res);
		},error: function(req, text){
			alert(text+':'+req.status);
		}
	});
}); 

$("#years").change(function(){
			console.log($(this).val());
	$.ajax({
		url: "search_student_name",
// 		aysnc : false,
		data: {student : $("#student_name").val(), year : $("#years").val()},
		success : function (res){
			$("#data-list").empty();
			$("#data-list").append(res);
		},error: function(req, text){
			alert(text+':'+req.status);
		}
	});
}); 



</script>	

</body>
</html>