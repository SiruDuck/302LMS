<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
					
					<div class="dd">
					<!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800 mt-2 mb-2" >교직원 월급 현황</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">교직원 월급 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>구분</th>
                                            <th>교직원 ID</th>
                                            <th>금액</th>
                                            <th>상세 설명</th>
                                            <th>지급일</th>
                                        </tr>
                                    </thead>
<!--                                     <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot> -->
                                    <tbody>
                                     <%-- <c:forEach begin="1" end="30" step="1"> --%>
                                   <%--  <c:forEach items="${list }" var="vo" > --%>
                                        <tr>
                                      		<td>d</td>
                                            <td>d</td>
                                            <td>d</td>
                                            <td>d</td>
                                            <td>d</td> 
                                        </tr>
                                    <%--  </c:forEach> --%>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
					
					
					
					</div>




</body>
</html>