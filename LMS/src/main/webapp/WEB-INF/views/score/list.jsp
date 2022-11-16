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
	width: calc(100%-10px);
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
}
</style>
</head>
<body>
	<h2>score</h2>
		<div class="top-menu">
			<div>
			<!-- if 학년조회하고 다시 페이지를 왔을때는 ==> gradeList 바로 실행  -->
				<form action="list.sc" method="post">
					<ul class="list-lectures">
						<li>
						<select name="lecture_num" id="lectureList" class="w-px200" onchange="$('form').submit()">
						<option value="-1">전체</option>
							<c:forEach items="${lectures}" var ="vo">
								<option ${lecture_num eq vo.lecture_num ? 'selected' : '' }
								 value="${vo.lecture_num}">${vo.lecture_title}</option>
							</c:forEach>
						</select></li>
					</ul>
				</form>
			</div>
			<div class='api'>
				<a >전체 조회</a> <a>학년별 조회</a>
			</div>
		</div>

<!-- <table class='table'> -->
<!-- 		<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>학기</th><th>학점</th></tr> -->
<%-- 		<c:forEach items='${list}' var='vo'> --%>
<%-- 		<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.semester}</td><td>${vo.semesterpoint}</td></tr> --%>
<%-- 		</c:forEach> --%>
<!--  		</table> -->


	<div id="data-list">data</div>
<script>

//$("#lectureList").change(function(){
//	console.log($(this).val());
//	subject_list($(this).val());
//})

$(function(){
	$(".api a").eq(0).trigger("click");
// 	$("#lectureList").trigger("change");
	console.log("test");
});


$(".api a").on('click',function(){
	if($(this).hasClass("btn-fill")) 	return;
	else{
		$(".api a").removeClass();
		$(this).addClass("btn-fill");
		$(".api a").not($(this)).addClass("btn-empty");
		
		if($(this).index()==0) subject_list();
		else 					grade_list();
	}
})

//전체 성적조회
function subject_list(){
	$("#lectureList").css({"display":"block"});
	$("#data-list").empty();
	$('#yearList').closest('li').remove();
	var tag 	= 	"<table class='table'>"
		+ "<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>년도</th><th>학기</th><th>학점</th><th>성적</th></tr>"
		+ "<c:forEach items='${list}' var='vo'>"
		+ "<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td>"
		+"<td>${vo.teacher_name}</td><td>${vo.lecture_year}년</td><td>${vo.semester}</td>"
		+ "<td>${vo.subjectcredit}</td><td>${vo.semesterpoint}</td></tr>"
		+ "</c:forEach>"
 		+ "</table>";
			$("#data-list").append(tag);
// 	$("#data-list").append(test);
// 	$.ajax({
// 		url:"list/subject",
// 		data : {lecture_num : num} ,
// 		success : function(response){
// 			console.log(response);
// 			$("#data-list").empty();
// 			$("#data-list").append(test);
// 		},error : function(req, text){
// 			alert(text + ':' + req.status);
// 		}
// 	});
}



// 학년별 성적조회
function grade_list(){
		$("#lectureList").css({'display': 'none'});
		$("#data-list").empty();
		$.ajax({
			url:"list/grade",
			async: false,
	// 		data : {lecture_num : num} ,
			success : function(response){
				$("#data-list").append(  response );
				$(".list-lectures").append( $("#data-list").find('li') );
				$("#data-list").find('li').remove();
			},error : function(req, text){
				alert(text + ':' + req.status);
			}
		});
}


//년도별 성족
</script>	

</body>
</html>