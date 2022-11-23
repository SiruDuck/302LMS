<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% Date nowTime = new Date();
	SimpleDateFormat day = new SimpleDateFormat("YYYY년"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교직원 월급 관리 페이지</title>
</head>
<body>
<div class="container-fluid">
					<ul class="nav nav-tabs mb-3">
					  <li class="nav-item">
					    <a class="nav-link active" aria-current="page" href="#">월급 현황</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#">급여 관리</a>
					  </li>
					 <li class="nav-item">
					    <a class="nav-link" href="#">급여 관리</a>
					  </li>
					</ul>
					
					
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800 mt-2 mb-2"></h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"><%= day.format(nowTime) %> 교직원 월급 현황 및 관리</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row">
                                <div class="col-sm-12 col-md-6">
                                <label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col-sm-12">
                                <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                    <thead>
                                        <tr role="row">
                                        <th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 150px;">구분</th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 200.328px;">교직원</th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 200px;">금액</th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 200px;">상세 설명</th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 184.547px;">지급일</th>
                                    </thead>
                                   <!--  <tfoot>
                                        <tr><th rowspan="1" colspan="1">구분</th>
                                        <th rowspan="1" colspan="1">교직원</th>
                                        <th rowspan="1" colspan="1">금액</th>
                                        <th rowspan="1" colspan="1">상세 설명</th>
                                        <th rowspan="1" colspan="1">지급일</th>
                                        </tr>
                                    </tfoot> -->
                                    <tbody>
                                    <c:forEach items="${list }" var="vo" >
                                    <tr class="odd">
                                            <td class="sorting_1">${vo.cash_code }</td>
                                            <td>${vo.id }</td>
                                            <td>${vo.price }</td>
                                            <td>${vo.cash_name }</td>
                                            <td>${vo.payment_day }</td>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                                </table>
                                </div>
                                </div>
                                <div class="row"><div class="col-sm-12 col-md-5">
                                <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                                </div>
                                <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                                <ul class="pagination">
                                <li class="paginate_button page-item previous disabled" id="dataTable_previous">
                                <a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                </li>
                                <li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                                </li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                <li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                </ul>
                                </div>
                                </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
					
                    
<script>



</script>      
</body>
</html>