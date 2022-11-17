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
<body>
<div class='card mb-4'>
	<div class='card-header py-3'>
		<h6 class='m-0 font-weight-bold text-primary'>���� �˻�</h6>
	</div>
	<div class='card-body d-flex'>
		<div class='dataTables_filter search-box'>
			<input type="search" class='form-control form-control-sm' placeholder='�����'>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>�а� ��ü����</option>
				<option value='game'>���Ӱ����а�</option>
				<option value='ai'>�ΰ������а�</option>
				<option value='web'>���а�</option>
				<option value='db'>DB�а�</option>
				<option value='iot'>Iot�а�</option>
				<option value='app'>�۰����а�</option>
				<option value='info'>���������а�</option>
			</select>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>���� ��ü����</option>
				<option value='major'>���� �ʼ�</option>
				<option value='optional'>���� ����</option>
				<option value='required'>���� �ʼ�</option>
				<option value='elective'>���� ����</option>
			</select>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>���� ��ü����</option>
				<option value='mon'>��</option>
				<option value='tue'>ȭ</option>
				<option value='wed'>��</option>
				<option value='thu'>��</option>
				<option value='fri'>��</option>
			</select>
		</div>
		<div class='dataTables_filter'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value='all'>�ð� ��ü����</option>
				<option value='1'>1���� (09:00~09:50)</option>
				<option value='2'>2���� (10:00~10:50)</option>
			</select>
		</div>
	</div>
</div>
<div class="card shadow mb-4">
	<div class="card-header py-3">
	    <h6 class="m-0 font-weight-bold text-primary">���� ��û</h6>
	</div>
    <div class="card-body">
        <div class="table-responsive">
        <div class="col-sm-12 col-md-6 count-box">
        	<div class="dataTables_length" id="dataTable_length">
        		
        			<select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
        				<option value="10">10</option>
        				<option value="20">20</option>
        				<option value="30">30</option>
        				<option value="40">40</option>
       				</select>
   				 
			 </div>
		 </div>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                    <tr role="row" class='bg-gray-100'>
                    	<th>�����ڵ�</th>
                    	<th>�����</th>
                    	<th>����</th>
                    	<th>��米��</th>
                    	<th>���ǽ�</th>
                    	<th>�̼�</th>
                    	<th>����</th>
                    	<th>��������</th>
                    	<th>�󼼺���</th>
                    	<th>���ǽ�û</th>
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
                        		<a class='text-white'>�󼼺���</a>
                        	</span>
                        </td>
                        <td>
                        	<span  class=' btn btn-info btn-icon-split'>
                        		<a class='text-white'>��û�ϱ�</a>
                        	</span>
                        </td>
                    </tr>
                </c:forEach>

            </table>
		<div class="row">
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
		</div>
        </div>
    </div>
</div>
</body>
</html>