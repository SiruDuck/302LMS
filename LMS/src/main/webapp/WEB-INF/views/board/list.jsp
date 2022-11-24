<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>
<title>자유게시판</title>
<style>

.search-box{
	margin:0 1rem 0 0;
}
.table-responsive{
	overflow:hidden;
}

</style>
</head>
<body>
	<h3>자유게시판</h3>
		<form method='post' action='list.br'>
		<div class='card mb-4'>
			<div class='card-header py-3'>
				<h6 class='m-0 font-weight-bold text-primary'>검색</h6>
			</div>
			<div class='card-body d-flex'>
				<div class='dataTables_filter search-box'>
					<select
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value='all'>전체</option>
						<option value='title'>제목</option>
						<option value='content'>내용</option>
						<option value='writer'>작성자</option>
					</select>
				</div>
				<div class='dataTables_filter search-box'>
					<input type="search" class='names form-control form-control-sm'>
				</div>
			</div>
		</div>
	</form>






	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">자유 게시판</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="70%"
					cellspacing="0">
					<thead>
						<tr class="bg-gray-100">
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center; width:250px;">작성일자</th>
							<th style="text-align: center;">첨부</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items='${list}' var='vo'>
							<tr >
								<td><a href="info.br?id=${vo.id}">${vo.title }</a></td>
								<td style="text-align: center;">${vo.name}</td>
								<td style="text-align: center;">${vo.writedate }</td>
								<td style="text-align: center;">${empty vo.filename ? '' : '<i class="font-c fa-solid fa-paperclip"></i>'}</td>
						
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class='info' style="text-align: right; margin-right: 30px;">
				<a href='new.br' class='btn btn-primary'>글쓰기</a>
			</div>
			<div class="row">
				<div class="col-sm-12 col-md-5">
					<div class="dataTables_info" id="dataTable_info" role="status"
						aria-live="polite">Showing 1 to 10 of 57 entries</div>
				</div>
				<div class="col-sm-12 col-md-7">
					<div class="dataTables_paginate paging_simple_numbers"
						id="dataTable_paginate">
						<ul class="pagination">
							<li class="paginate_button page-item previous disabled"
								id="dataTable_previous"><a href="#"
								aria-controls="dataTable" data-dt-idx="0" tabindex="0"
								class="page-link">Previous</a></li>
							<li class="paginate_button page-item active"><a href="#"
								aria-controls="dataTable" data-dt-idx="1" tabindex="0"
								class="page-link">1</a></li>
							<li class="paginate_button page-item "><a href="#"
								aria-controls="dataTable" data-dt-idx="2" tabindex="0"
								class="page-link">2</a></li>
							<li class="paginate_button page-item "><a href="#"
								aria-controls="dataTable" data-dt-idx="3" tabindex="0"
								class="page-link">3</a></li>
							<li class="paginate_button page-item "><a href="#"
								aria-controls="dataTable" data-dt-idx="4" tabindex="0"
								class="page-link">4</a></li>
							<li class="paginate_button page-item "><a href="#"
								aria-controls="dataTable" data-dt-idx="5" tabindex="0"
								class="page-link">5</a></li>
							<li class="paginate_button page-item "><a href="#"
								aria-controls="dataTable" data-dt-idx="6" tabindex="0"
								class="page-link">6</a></li>
							<li class="paginate_button page-item next" id="dataTable_next"><a
								href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0"
								class="page-link">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>



	


</body>
</html>