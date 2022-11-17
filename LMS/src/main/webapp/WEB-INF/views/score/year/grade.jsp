<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<li><select name="grade_num" id="yearList" class="w-px200" >
	<option value="-1">전체 년도</option>
		<c:forEach items="${years}" var ="y">
			<option value="${y.lecture_year}"> ${y.lecture_year}년</option>
		</c:forEach>
	</select></li>
	
<table class='table'>
	<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>년도</th><th>학기</th><th>학점</th><th>성적</th><th>성적</th></tr>
	<c:forEach items='${list}' var='vo'>
	<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.lecture_year}년</td>
	<td>${vo.semester}</td><td>${vo.subjectcredit}</td><td>${vo.semesterpoint}</td><td>${vo.score_name}</td></tr>
	</c:forEach>
</table>
<script>
//년도별 성적조회
$("#yearList").change(function(){
		$.ajax({
			url:"list/gradedata",
			async: false,
			data : {grade_num : $(this).val()} ,
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success : function(response){
				console.log(response);
				$("#data-list").empty();
				var  aJsonArray = new Array();
				aJsonArray =  JSON.parse(response);
				var tag 	= 	"<table class='table'>"
					+ "<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>년도</th><th>학기</th><th>학점</th><th>성적</th><th>성적</th></tr>";
				
				for(var i = 0 ; i < aJsonArray.length ; i++){
					var obj = aJsonArray[i];
					tag +=  "<tr><td>" +obj["lecture_title"]+"</td><td>"+ obj["lecture_num"] + "</td><td>"
						+obj["teacher_name"]+"</td><td>"+obj["lecture_year"]+"년</td><td>"+obj["semester"]+"</td><td>"
						+ obj["subjectcredit"]+"</td><td>"+obj["semesterpoint"]+"</td><td>"+ obj["score_name"]+"</td></tr>"
					
				}
				console.log(aJsonArray.length);
				tag +=  "</table>";
			/*   	var tag 	= 	"<table class='table'>"
					+ "<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>년도</th><th>학기</th><th>학점</th><th>성적</th></tr>"
					+ "<c:forEach items='${list}' var='vo'>"
					+ "<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td>"
					+"<td>${vo.teacher_name}</td><td>${vo.lecture_year}</td><td>${vo.semester}</td>"
					+ "<td>${vo.subjectcredit}</td><td>${vo.semesterpoint}</td></tr>"
					+ "</c:forEach>"
			 		+ "</table>"; */
						$("#data-list").append(tag);  
			},error : function(req, text){
				alert(text + ':' + req.status);
			}
		});
	});
</script>