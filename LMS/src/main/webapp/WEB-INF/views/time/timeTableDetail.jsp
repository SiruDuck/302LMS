<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
.table td:nth-child(1) {
	font-weight: 700;
	width:8rem;
	text-align: center;
	background-color:#f8f9fc;
}
.btn a:hover{
	text-decoration: none;
}
</style>
<body>
<div class="container-fluid" style='width:50%'>      
	 <!-- DataTales Example -->
	 <div class="card shadow mb-4">
	     <!-- <div class="card-header py-3">
	         <h6 class="m-0 font-weight-bold text-primary">������ �����</h6>
	     </div> -->
	     <div class="card-body">
	         <div class="table-responsive">
	             <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	             	
	                 <!-- <thead>
	                     <tr>
	                         <th>���� �ð�</th>
	                         <th>��</th>
	                         <th>ȭ</th>
	                         <th>��</th>
	                         <th>��</th>
	                         <th>��</th>
	                     </tr>
	                 </thead> -->
	                 <!-- <tfoot>
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
	                     <tr>
	                         <td>�����ڵ�</td>
	                         <td>${vo.lecture_num }</td>
	                     </tr>
	                     <tr>
	                         <td>���Ǹ�</td>
	                         <td>${vo.lecture_title }</td>
	                     </tr>
	                     <tr>
	                         <td>����</td>
	                         <td>${vo.sortation }</td>
	                     </tr>
	                     <tr>
	                         <td>���ǽ�</td>
	                         <td>${vo.lecture_room }</td>
	                     </tr>
	                     <tr>
	                         <td>��米��</td>
	                         <td>${vo.teacher_name }</td>
	                     </tr>      
	                     <tr>
	                         <td>���ǽð�</td>
	                         <td>${vo.lecture_time }</td>
	                     </tr>                
	                     <tr>
	                         <td>����</td>
	                         <td>${vo.subjectcredit }</td>
	                     </tr>             
	                     <tr>
	                         <td>��������</td>
	                         <td>${vo.state }</td>
	                     </tr>
	                     <tr>
	                     	<td>�����</td>
	                     	<td>${vo.book }</td>
	                     </tr>             
	                 </tbody>
	             </table>
	         </div>
	     </div>
	 </div>
	<div class='btn btn-primary btn-icon-split'>
		<a class='text text-white' onclick='history.go(-1)'>�ڷΰ���</a>
	</div>
</div>
</body>
</html>