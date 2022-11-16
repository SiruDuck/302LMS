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

					<div class="dd">
					<!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800 mt-2 mb-2" >전체 인원 관리</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">전체 인원 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>전화번호</th>
                                            <th>입학일/입사일</th>
                                            <th>학과 코드</th>
                                            <th>학과 명</th>
                                            <th>구분</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.id }</td>
                                            <td>${vo.name }</td>
                                            <td>${vo.phone }</td>
                                            <td>${vo.start_date }</td>
                                            <td>${vo.department_id }</td> 
                                            <td>${vo.department_name }</td> 
                                            <td>${vo.info_name }</td> 
                                        </tr>
                                     </c:forEach>
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