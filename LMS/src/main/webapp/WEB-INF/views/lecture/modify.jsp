<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 정보 수정</title>
</head>
<body>
	<h3>강의 정보 수정</h3>

<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
span.btn {
	display: block;
}

.search-box {
	margin: 0 1rem 0 0;
}

.table-responsive {
	overflow: hidden;
}

.count-box {
	padding: 0;
	margin-bottom: 1rem;
	max-width: 10%;
}
</style>

<body>


	<div class="container-fluid">
		<!-- <h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">강의 상세 정보</h1> -->



		<!-- DataTales Example -->
		
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">강의 상세 정보</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div id='dataTable_wrapper'
						class='dataTables_wrapper dt-bootstrap4'>
						
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							
							<form method='post' action='update.lec'>
								<thead>
									<table class='table table-bordered dataTable'>
										<tr>
											<th class='w-px160'>강의 번호</th>
											<td><input type='hidden' name='lecture_num' value="${vo.lecture_num }" readonly="readonly"></td>
										</tr>
										<tr>
											<th>강의명</th>
											<td><input type='text' name='lecture_title' value="${vo.lecture_title}"></td>
										</tr>
										<tr>
											<th>교수명</th>
											<td><input type='text' name='teacher_name' value="${vo.teacher_name}"></td>
										</tr>
										<tr>
											<th>이수 구분</th>
											<td>
											<label><input type='radio' name='sortation' value="전공선택"${vo.sortation eq '전공필수' ? 'checked' : '' }>전공필수</label>
											<label><input type='radio' name='sortation' value="전공선택"${vo.sortation eq '전공선택' ? 'checked' : '' }>전공선택</label>
											<label><input type='radio' name='sortation' value="전공선택"${vo.sortation eq '교양' ? 'checked' : ''}>교양</label>
											</td>
										</tr>
										<tr>
											<th>학점</th>
											<td><input type='number' name='subjectcredit' min='1' max='3' value="${vo.subjectcredit}">학점</td>
										</tr>
										<tr>
											<th>강의실</th>
											<td><input type='text' name='lecture_room' value="${vo.lecture_room}"></td>
										</tr>
										<tr>
											<th>수강요일</th>
											<td>
											<label><input type='checkbox' name='lecture_day' value="월"${vo.lecture_day eq '월' ? 'checked' : '' }>월</label> 
											<label><input type='checkbox' name='lecture_day' value="화"${vo.lecture_day eq '화' ? 'checked' : '' }>화</label>
											<label><input type='checkbox' name='lecture_day' value="수"${vo.lecture_day eq '수' ? 'checked' : '' }>수</label>
											<label><input type='checkbox' name='lecture_day' value="목"${vo.lecture_day eq '목' ? 'checked' : '' }>목</label>
											<label><input type='checkbox' name='lecture_day' value="금"${vo.lecture_day eq '금' ? 'checked' : '' }>금</label>
											</td>
										</tr>
										<tr>
											<th>교시</th>
											<td>
												<label><input type='checkbox' name='lecture_time' value="1교시"${vo.lecture_time eq '1교시' ? 'checked' : '' }>1교시</label>
												<label><input type='checkbox' name='lecture_time' value="2교시"${vo.lecture_time eq '2교시' ? 'checked' : '' }>2교시</label>
												<label><input type='checkbox' name='lecture_time' value="3교시"${vo.lecture_time eq '3교시' ? 'checked' : '' }>3교시</label>
												<label><input type='checkbox' name='lecture_time' value="4교시"${vo.lecture_time eq '4교시' ? 'checked' : '' }>4교시</label>
												<label><input type='checkbox' name='lecture_time' value="5교시"${vo.lecture_time eq '5교시' ? 'checked' : '' }>5교시</label>
												<label><input type='checkbox' name='lecture_time' value="6교시"${vo.lecture_time eq '6교시' ? 'checked' : '' }>6교시</label>
												<label><input type='checkbox' name='lecture_time' value="7교시"${vo.lecture_time eq '7교시' ? 'checked' : '' }>7교시</label>
												<label><input type='checkbox' name='lecture_time' value="8교시"${vo.lecture_time eq '8교시' ? 'checked' : '' }>8교시</label>
											</td>
										</tr>
										<tr>
											<th>수강인원</th>
											<td><input type='text' name='capacity' value="${vo.capacity}"></td>
										</tr>
										<tr>
											<th>중간고사</th>
											<td><input type='date' name='midex' value="${vo.midex}"></td>
										</tr>
										<tr>
											<th>기말고사</th>
											<td><input type='date' name='finalex' value="${vo.finalex }"></td>
										</tr>
										<tr>
											<th>온/오프라인</th>
											<td><label><input type='radio' name='state' value="온라인"${vo.state eq '온라인' ? 'checked' : '' }/>온라인</label>
												<label><input type='radio' name='state' value="오프라인"${vo.state eq '오프라인' ? 'checked' : '' }/>오프라인</label>
											</td>
										</tr>
										<tr>
											<th>교재명</th>
											<td><input type='text' name='book' value="${vo.book}"></td>
										</tr>
										<tr>
											<th>년도</th>
											<td>
											<input type='text' class='date' name='lecture_year' value='${vo.lecture_year }'>
											</td>
										</tr>
										<tr>
											<th>학기</th>
											<td><label><input type='radio' name='semester' value="1학기"${vo.semester eq '1학기' ? 'checked' : '' }/>1학기</label>
												<label><input type='radio' name='semester' value="2학기"${vo.semester eq '2학기' ? 'checked' : '' }/>2학기</label>
											</td>
										</tr>
									</table>
								</thead>
								</form>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	<div style='text-align: center'>
		<a class="btn btn-primary" onclick="$('form').submit()">저장</a>
		<a class="btn btn-primary" href="detail.lec?lecture_num=${vo.lecture_num}">취소</a>
	</div>
	<script>
$(function(){
	$('.date').datepicker();
	
});
</script>	
</body>
</html>