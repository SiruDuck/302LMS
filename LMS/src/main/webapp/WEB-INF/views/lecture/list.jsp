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

.lec-font {
	font-size: 14px;
	text-align: center;
}
</style>

<body>


	<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">강의 목록</h1>
		<div class='card mb-4'>
			<div class='card-header py-3'>
				<h6 class='m-0 font-weight-bold text-primary'>강의 검색</h6>
			</div>
			<div class='card-body d-flex'>
				<div class='dataTables_filter search-box'>
					<input type="search" class='form-control form-control-sm'
						placeholder='과목명'>
				</div>
				<div class='dataTables_filter search-box'>
					<select
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value='all'>학과 전체보기</option>
						<option value='game'>게임개발학과</option>
						<option value='ai'>인공지능학과</option>
						<option value='web'>웹학과</option>
						<option value='db'>DB학과</option>
						<option value='iot'>Iot학과</option>
						<option value='app'>앱개발학과</option>
						<option value='info'>정보보안학과</option>
					</select>
				</div>
				<div class='dataTables_filter search-box'>
					<select
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value='all'>구분 전체보기</option>
						<option value='major'>전공 필수</option>
						<option value='optional'>전공 선택</option>
						<option value='required'>교양 필수</option>
						<option value='elective'>교양 선택</option>
					</select>
				</div>
				<div class='dataTables_filter search-box'>
					<select
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value='all'>요일 전체보기</option>
						<option value='mon'>월</option>
						<option value='tue'>화</option>
						<option value='wed'>수</option>
						<option value='thu'>목</option>
						<option value='fri'>금</option>
					</select>
				</div>
				<div class='dataTables_filter'>
					<select
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value='all'>시간 전체보기</option>
						<option value='1'>1교시 (09:00~09:50)</option>
						<option value='2'>2교시 (10:00~10:50)</option>
					</select>
				</div>
			</div>
		</div>
		<div class="dd">
			<!-- Page Heading -->

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">전체 강의 목록</h6>
				</div>
				<div class="card-body lec-font">
					<div class="table-responsive">
						<div id='dataTable_wrapper'
							class='dataTables_wrapper dt-bootstrap4'>
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>년도</th>
										<th>강의번호</th>
										<th>학기</th>
										<th>강의명</th>
										<th>교수명</th>
										<th>강의실</th>
										<th>교시</th>
										<th>이수구분</th>
										<th>수강신청</th>
										<th>수강인원</th>
										<th>과목학점</th>
										<th>수업유형</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${vo}" var="vo">
										<tr>
											<td>${vo.lecture_year}</td>
											<td>${vo.lecture_num}</td>
											<td>${vo.semester}</td>
											<td>${vo.lecture_title}</td>
											<td>${vo.teacher_name}</td>
											<td>${vo.lecture_room}</td>
											<td>${vo.lecture_time}</td>
											<td>${vo.sortation}</td>
											<td>${vo.reception_status}</td>
											<td>${vo.capacity}</td>
											<td>${vo.subjectcredit}</td>
											<td>${vo.state}</td>
											<td><a href="detail.lec?lecture_title=${vo.lecture_title}"><button id="lec_detail" class="btn-primary">상세보기</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- container-fluid -->



	</div>




</body>
</html>