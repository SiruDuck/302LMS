<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btnSet {
	margin: 20px auto;
	text-align: right;
}
a:hover{text-decoration: none;}
a.btn-empty {
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
</style>
</head>
<body>
	<h2>score</h2>
	<div class='btnSet api'>
		<a class="btn-fill">과목별 조회</a> <a class="btn-empty">학기별 조회</a> <a class="btn-empty" >학년별 조회</a>
	</div>
	<table class='table'>

		<%-- <colgroup>
	<col width='100px'>
	<col>
	<col width='140px'>
	<col width='140px'>
</colgroup> --%>

		<tr>
			<th>강의명</th>
			<th>교수</th>
			<th>학과</th>
			<th>학점</th>
		</tr>
		<c:forEach items='${vo}' var='vo'>
			<tr>
				<td>${vo.lecture_title}</td>
				<td>${vo.teacher_name}</td>
				<td>${vo.department_id}</td>
				<td>${vo.semesterpoint}</td>
			</tr>
		</c:forEach>
	</table>
	<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script> 
	
<script>
$(function(){
	$('.api a').eq(1).trigger( 'click' ); //클릭이벤트 강제발생
});

$(".api a").click(function(){
	$(".api a").removeClass();
	$(this).addClass("btn-fill");
	$(".api a").not($(this)).addClass("btn-empty");
	
	
})

</script>	

</body>
</html>