<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <span id="allCk">전체선택</span>/<span id="allclear">전체선택</span>
<table class='table'>
	<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>년도</th><th>학기</th><th>학점</th><th>점수</th><th>성적</th>
	</tr>
	<c:forEach items='${list}' var='vo'>
		<tr class='average'><td>${vo.lecture_title}</td><td class = "${vo.lecture_num}">${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.lecture_year}년</td>
		<td>${vo.semester}</td><td class='credit'>${vo.subjectcredit}</td><td class='point'>${vo.semesterpoint}</td><td>${vo.score_name}</td><td><input id="list_check"  type="checkbox" disabled/></td></tr>
	</c:forEach>
</table>
<script>
$('.average').click(function(){
	if($(this).find("[type=checkbox]").is(':checked')){
		$(this).find("[type=checkbox]").prop('checked',false);
		$(this).removeClass("checked")
	}else	{
		$(this).find("[type=checkbox]").prop('checked',true);
			$(this).addClass("checked");
		}
	calc_avg();
});

function calc_avg(){
	var sum_credit=0, sum_point=0;
	$('.table tr').each(function(){
		if($(this).find("[type=checkbox]").is(':checked')){
    			sum_point += Number($(this).children('.credit').text()) * Number($(this).children('.point').text());
    			sum_credit += Number($(this).children('.credit').text());
    		var average = sum_credit==0 ? '' : (sum_point / sum_credit).toFixed(2);
    		$('.selected_avg').text( average );
		}
	});
	if($(this).find("[type=checkbox]").checked == false)     		$('.selected_avg').text( "0" );
}

$(".average").click(function(){
});
// $(function(){
// 	var sum_credit=0, sum_point=0;
// 	$('.average').each(function(){
// 		sum_point += Number($(this).children('.credit').text()) * Number($(this).children('.point').text());
// 		sum_credit += Number($(this).children('.credit').text());
// 	})
// 	var average = sum_credit==0 ? '' : (sum_point / sum_credit).toFixed(2);
// 	$('.selected_avg').text( average );
// });

	$('#allCk').click(function(){
			$('input:checkbox').prop('checked',true);
			$(".average").addClass("checked");
			calc_avg();
	});
	$('#allclear').click(function(){
			$('input:checkbox').prop('checked',false);
			$(".average").removeClass("checked");
			calc_avg();
	});
	$(function(){
		$('.selected_avg').text( "0" );
	})
</script>