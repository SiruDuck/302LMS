<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='css/score.css?<%=new java.util.Date()%>' type='text/css' rel='stylesheet'> 
</head>
<body>

<h3>성적 등록</h3>
	<form action="insert.sc" method="post">
		<div class="insert_form" style="">
			<table class="textform">
				<tr>
					<th>강의번호</th>
						<td>
						<select name="lecture_num" id="lecture_num" style="width: 220px;">
							<c:forEach items="${lectureList}"  var = "l" >
								<option value="${l.lecture_num}">${l.lecture_num} ( ${l.lecture_title} )</option>
							</c:forEach>					
						</select>
						</td>
				</tr>
				<tr>
					<th>아이디</th>
						<td>
						<select name="id" id="id" style="width: 220px;">
							<c:forEach items="${student}"  var = "s" >
								<option value="${s.id}">${s.name} ( ${s.id} )</option>
							</c:forEach>					
						</select>
						</td>
				</tr>
				<tr>
					<th>점수 </th>
					<td><input type="text" id="score" name = "score" /></td>
				</tr>
			</table>
		</div>
		<div class='btnSet'>
	<a class='btn-fill submit' >저장</a>
	<a class='btn-empty' href='list.sc'>취소</a>
</div>
</form>

<script>
	$(".submit").click(function(){
		
		data_check();
		if($("#score").val() < 0 || $("#score").val()>4.5 || $("#score").val() == "" || !$.isNumeric($("#score").val())){
			alert("점수를 잘못 입력하였습니다");
			$("#score").focus();
			return;
		}else if(confirm("저장하시겠습니까?")){
			alert("저장되었습니다");
			$("form").submit();
		}
	});
	
	//이미 데이터가 있는 경우 ruturn
	function data_check(){
		$.ajax({
			url : "insert_data_check",
			data : { num : $("[name=lecture_num]").val(), id : $("[name=id]").val() },
			success : function(res){
				if (!res){
					alert("이미 데이터가 있습니다.")
					return;
				}
			}, error : function(req, text){
				alert("실패!! " + text+':'+req.status);
			}
		});
	}

</script>

	
</body>
</html>