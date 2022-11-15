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
.btnSet {
	margin: 20px auto;
}
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
	display: flex;
}
</style>
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>   
</head>
<body>
	<h2>score</h2>
		<div class="top-menu">
			<ul class="list-lectures">
				<li><select id="lectureList" class="w-px100">
				<option value="-1">전체</option>
					<c:forEach items="${lectures}" var ="vo">
						<option value="${vo.lecture_num}">${vo.lecture_title}</option>
					</c:forEach>
				</select></li>
			</ul>
			<div class='btnSet api'>
				<a >과목별 조회</a> <a>학년별 조회</a>
			</div>
		</div>

	<div id="data-list">data</div>
	
<script>
$("#lectureList").change(function(){
	console.log($(this).val());
	subject_list($(this).val());
})


$(function(){
	$(".api a").eq(0).trigger("click");
});

$(".api a").click(function(){
	$(".api a").removeClass();
	$(this).addClass("btn-fill");
	$(".api a").not($(this)).addClass("btn-empty");
	
	if($(this).index()==0) subject_list(-1);
	else 					grade_list();
})

//과목별 성적조회
function subject_list(num){
	var test 	= 	"<table class='table'>"
				+ "<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>학기</th><th>학점</th></tr>"
				+ "<c:forEach items='${sub_list}' var='vo'>"
				+ "<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.smester}</td><td>${vo.semesterpoint}</td></tr>"
				+ "</c:forEach>"
		 		+ "</table>";
	$("#data-list").empty();
// 	$("#data-list").append(test);
	
	$.ajax({
		url:"list/subject",
		data : {lecture_num : num} ,
		success : function(res){
			console.log(res);
			$("#data-list").append(test);
		},error : function(req, text){
			alert(text + ':' + req.status);
		}
	});
}

// 학년별 성적조회
function grade_list(){
	$("#data-list").empty();
}

</script>	

</body>
</html>