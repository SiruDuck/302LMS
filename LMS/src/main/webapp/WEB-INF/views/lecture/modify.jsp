<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 정보 수정</title>
</head>
<body>
	<h3>강의 정보 수정</h3>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!DOCTYPE html>
<html>
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
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">강의 상세 정보</h1>



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
							<form method='post' action='insert.lec'>
								<thead>
									<table class='w-px600'>
										<tr>
											<th class='w-px160'>강의 번호</th>
											<td><input type='text' name='lecture_num' class='chk'></td>
										</tr>
										<tr>
											<th>강의명</th>
											<td><input type='text' name='lecture_title'></td>
										</tr>
										<tr>
											<th>교수명</th>
											<td><input type='text' name='teacher_name'></td>
										</tr>
										<tr>
											<th>이수 구분</th>
											<td><label><input type='radio' name='sortation'>전공</label>
												<label><input type='radio' name='sortation'>교양</label>
											</td>
										</tr>
										<tr>
											<th>학점</th>
											<td><input type='number' name='subjectcredit' min='1'
												max='3'>학점</td>
										</tr>
										<tr>
											<th>강의실</th>
											<td><input type='text' name='lecture_room'></td>
										</tr>
										<tr>
											<th>수강요일</th>
											<td><label><input type='checkbox'
													name='lecture_day' value='월'>월</label> <label><input
													type='checkbox' name='lecture_day' value='화'>화</label> <label><input
													type='checkbox' name='lecture_day' value='수'>수</label> <label><input
													type='checkbox' name='lecture_day' value='목'>목</label> <label><input
													type='checkbox' name='lecture_day' value='금'>금</label></td>
										</tr>
										<tr>
											<th>수강시간</th>
											<td><label><input type='checkbox'
													name='lecture_time' value='1교시'>1교시</label> <label><input
													type='checkbox' name='lecture_time' value='2교시'>2교시</label>
												<label><input type='checkbox' name='lecture_time'
													value='3교시'>3교시</label> <label><input
													type='checkbox' name='lecture_time' value='4교시'>4교시</label>
												<label><input type='checkbox' name='lecture_time'
													value='5교시'>5교시</label> <label><input
													type='checkbox' name='lecture_time' value='6교시'>6교시</label>
												<label><input type='checkbox' name='lecture_time'
													value='7교시'>7교시</label> <label><input
													type='checkbox' name='lecture_time' value='8교시'>8교시</label>
											</td>
										</tr>
										<tr>
											<th>수강인원</th>
											<td><input type='text' name='capacity'></td>
										</tr>
										<tr>
											<th>중간고사</th>
											<td><input type='date' name='midex'></td>
										</tr>
										<tr>
											<th>기말고사</th>
											<td><input type='date' name='finalex'></td>
										</tr>
										<tr>
											<th>온/오프라인</th>
											<td><label><input type='radio' name='state'>온라인</label>
												<label><input type='radio' name='state'>오프라인</label>
											</td>
										</tr>
										<tr>
											<th>교재명</th>
											<td><input type='text' name='book'></td>
										</tr>
										<tr>
											<th>년도</th>
											<td><input type='week' name='lecture_year'>년</td>
										</tr>
										<tr>
											<th>학기</th>
											<td><label><input type='checkbox'
													name='semester'>1학기</label> <label><input
													type='checkbox' name='semester'>2학기</label></td>
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
</body>
</html> --%>