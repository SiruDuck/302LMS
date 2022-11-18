<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
span.btn{
	display:block;
}
.search-box{
	margin:0 1rem 0 0;
}
.table-responsive{
	overflow:hidden;
}
.count-box{
	padding: 0;
    margin-bottom: 1rem;
    max-width: 10%;
}
.btn a{
	text-decoration: none;
}
.datepicker-days .datepicker-months{
	display: none;
}
</style>
<body>
<form method='post' action='regist.tt'>
<div class='card mb-4'>
	<div class='card-header py-3'>
		<h6 class='m-0 font-weight-bold text-primary'>강의 검색</h6>
	</div>
	<div class='card-body d-flex'>
	<div class="dataTables_length search-box" id="dataTable_length">   		
       			<select name="dataTable_length" class="custom-select custom-select-sm form-control form-control-sm">
       				<option value="10">10개씩 보기</option>
       				<option value="20">20개씩 보기</option>
       				<option value="30">30개씩 보기</option>
       				<option value="40">40개씩 보기</option>
  				</select>   				 
			 </div>
		<div class='dataTables_filter search-box'>
			<input type="search" class='form-control form-control-sm' placeholder='과목명' onchange="$('form').submit()" aria-controls="dataTable">
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm' name='lecture_num' onchange="$('form).submit()">
				<option value='-1'>전체 학과보기</option>
				<c:forEach items="${lectures }" var="l">
					<option value="${l.lecture_num }" ${lecture_num eq l.lecture_num ? 'selected' : '' }>${l.lecture_title}</option>
				</c:forEach>
			</select>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>구분 전체보기</option>
				<option value='major'>전공 필수</option>
				<option value='optional'>전공 선택</option>
				<option value='required'>교양 필수</option>
				<option value='elective'>교양 선택</option>
			</select>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>요일 전체보기</option>
				<option value='mon'>월</option>
				<option value='tue'>화</option>
				<option value='wed'>수</option>
				<option value='thu'>목</option>
				<option value='fri'>금</option>
			</select>
		</div>
		<div class='dataTables_filter'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>시간 전체보기</option>
				<option value='1'>1교시 (09:00~09:50)</option>
				<option value='2'>2교시 (10:00~10:50)</option>
			</select>
		</div>
		
	</div>
</div>
</form>
<div class="card shadow mb-4">
	<div class="card-header py-3">
	    <h6 class="m-0 font-weight-bold text-primary">수강 신청</h6>
	</div>
    <div class="card-body">
        <div class="table-responsive">
        <!-- <div class="col-sm-12 col-md-6 count-box">      	
			 <a href="spare.tt" class="btn btn-warning btn-icon-split">
                 <span class="icon text-white-50">
                     <i class="fas fa-calendar-alt"></i>
                 </span>
                 <span class="text">장바구니</span>
             </a>
		 </div> -->

		 <!-- 수강신청리스트 -->
         <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <tr role="row" class='bg-gray-100'>
             	<th>과목코드</th>
             	<th>과목명</th>
             	<th>구분</th>
             	<th>담당교수</th>
             	<th>강의실</th>
             	<th>강의시간</th>
             	<th>학점</th>
             	<th>강의유형</th>
             	<th>상세보기</th>
             	<th>강의신청</th>
           	</tr>

            <c:forEach items="${vo }" var="vo">
                <tr>
                	<td>${vo.lecture_num }</td>
                    <td>${vo.lecture_title }</td>
                    <td>${vo.sortation }</td>
                    <td>${vo.teacher_name }</td>
                    <td>${vo.lecture_room }</td>
                    <td>${vo.lecture_time }</td>
                    <td>${vo.subjectcredit }</td>
                    <td>${vo.state }</td>
                    <td>
                    	<span  class=' btn btn-primary btn-icon-split'>
                    		<a class='text-white' href='detail.tt?lecture_num=${vo.lecture_num }'>상세보기</a>
                    	</span>
                    </td>
                    <td>
	                   	<span  class=' btn btn-info btn-icon-split'>
	                   		<a class='text-white'>신청하기</a>
	                   	</span>
                    </td>
                </tr>
            </c:forEach>

         </table>
        
        <!-- 페이지 전환 -->
		<!-- <div class="row">
       		<div class="col-sm-12 col-md-7">
       			<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
       				<ul class="pagination">
       					<li class="paginate_button page-item previous disabled" id="dataTable_previous">
       						<a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
						</li>
						<li class="paginate_button page-item active">
							<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a>
						</li>
						<li class="paginate_button page-item next" id="dataTable_next">
							<a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
						</li>
					</ul>
				</div>
			</div>
		</div> -->
        </div>
    </div>
</div>
</body>
</html>