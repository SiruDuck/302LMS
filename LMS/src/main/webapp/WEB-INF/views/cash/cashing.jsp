<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% Date nowTime = new Date();
	SimpleDateFormat day = new SimpleDateFormat("YYYY년"); %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교직원 월급 관리 페이지</title>
<style type="text/css">

h1{font-weight: bold; margin-bottom: 10rem;}
th{
	background: rgb(248,249,252);
}
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
</style>
</head>
<body>


					
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2"></h1>

                   

<div class="container-fluid">


					
					



<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">재무 관리</h1>

									
					<div class="dd">
					<!-- Page Heading -->
                    <ul class="nav nav-tabs mb-3">
					  <li class="nav-item">
					    <a class="nav-link active" aria-current="page" href="#">전체 관리</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" onclick="" href="#">급여 관리</a>
					  </li>
					 <li class="nav-item">
					    <a class="nav-link" href="#">등록금 현황</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#">장학금 현황</a>
					  </li>
					</ul>
					
					<!-- 필터 -->
					
					<div class='card mb-4'>
					<form id='all_manage' action='cash.ing' method='post'>
						<div class='card-header py-3'>
							<h6 class='m-0 font-weight-bold text-primary'>검색</h6>
						</div>
						<div class='card-body d-flex'>
							<!-- 연도 별 검색 -->
							<div class='dataTables_filter search-box'>
								<select name='cash_year' class='custom-select custom-select-sm form-control form-control-sm' onchange='$("form#all_manage").submit()'>
									<option value='-1'> 연도별</option>
									<option value="2020"> 2020월 </option>
									<option value="2021"> 2021월 </option>
									<option value="2022"> 2022월 </option>
								</select>
							</div>
							
							<!-- 월별 검색 -->
							<div class='dataTables_filter search-box'>
								<select name='cash_month'  class='custom-select custom-select-sm form-control form-control-sm' onchange='$("form#all_manage").submit()'>
									<option value='-1'> 월별</option>
									<c:forEach var='mm' begin='1' end='12'>
									<option value="${mm}"  > ${mm}월 </option>
<%-- 									<option value="${mm}" ${filter.month eq mm ? 'selected' : ''}> ${mm}월 </option> --%>
									</c:forEach>
<%-- 									<option value="1" ${filter.month eq 1 ? 'selecte' : ''}> 1월 </option> --%>
<!-- 									<option value="2"> 2월 </option> -->
<!-- 									<option value="3"> 3월 </option> -->
<!-- 									<option value="4"> 4월 </option> -->
<!-- 									<option value="5"> 5월 </option> -->
<!-- 									<option value="6"> 6월 </option> -->
<!-- 									<option value="7"> 7월 </option> -->
<!-- 									<option value="8"> 8월 </option> -->
<!-- 									<option value="9"> 9월 </option> -->
<!-- 									<option value="10"> 10월 </option> -->
<!-- 									<option value="11"> 11월 </option> -->
<!-- 									<option value="12"> 12월 </option> -->
								</select>
							</div>
							
							<!-- 아이디로 검색 -->
							<div class='dataTables_filter search-box'>
								<input type="search" class='ids form-control form-control-sm' placeholder='아이디로 검색'>
							</div>
							
							<!-- 이름으로 검색 -->
							<div class='dataTables_filter search-box'>
								<input type="search" class='names form-control form-control-sm' placeholder='이름으로 검색'>
							</div>
							
							<!-- 직책으로 검색 -->
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm'>
									<option value='department_all'> 직책 검색</option>
									<c:forEach items="${department_list }" var="department_list">
									<option value='${department_list }'> ${ department_list.department_name}</option>
									</c:forEach>
								</select>
							</div>
							
							<!-- 수당으로 검색 -->
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm' onchange='$("form").submit()'>
									<option value='info_all' value='-1'> 수당검색</option>
									<c:forEach items="${info_list }" var="info">
									<option ${info_cd eq info.info_cd ? 'selected' : ''} 
									value='${info.info_cd }'> ${info.info_name }</option>
									</c:forEach>
								</select>
							</div>
							
							<!-- 학과로 검색 -->
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm' onchange='$("form").submit()'>
									<option value='info_all' value='-1'> 학과검색</option>
									<c:forEach items="${department_list }" var="department_list">
									<option ${department_list eq department_list.department_id ? 'selected' : ''} 
									value='${department_list.department_id }'> ${department_list.department_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</form>
					</div>
					<!-- 필터 끝 -->
					
                    <!-- 데이터 테이블 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">재무 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                            <!-- 테이블 자리 -->
                                <c:import url="/WEB-INF/views/cash/common/cm_list.jsp"/>
                                
                            </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
					
					
					
					</div>

                					



                    
<script>
function weblist(){
	
}





</script>      
</body>
</html>