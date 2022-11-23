<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.btn {
	padding: 6px;
}
</style>
<body>


	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">자유게시판 안내</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th style="vertical-align: inherit; width: 11rem">제목</th>
							<td colspan="5"><div class='form-control form-control-user'></div></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><div class='form-control form-control-user'></div></td>
							<th style="vertical-align: inherit; width: 11rem">작성일자</th>
							<td><div class='form-control form-control-user'></div></td>
							<th style="vertical-align: inherit; width: 11rem">조회수</th>
							<td><div class='form-control form-control-user'></div></td>
						</tr>
						<tr>
							<th style="vertical-align: baseline;">내용</th>
							<td colspan='5'><div class='form-control form-control-user'
									style='height: 27rem'></div></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan='5'>
								<div class='form-control form-control-user'>
									<span id='file-name'>${vo.filename}</span>
									<c:if test='${not empty vo.filename }'>
										<a id='download'><i
											class="font-b fa-solid fa-file-arrow-down"></i></a>
									</c:if>
								</div>
							</td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>



	
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th style="vertical-align: inherit; width: 11rem">commenter</th>
							<td colspan="5"><div class='form-control form-control-user'></div></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	




	<div class='btn_blue' style='padding: 2rem; text-align: center;'>
		<a class='btn btn-secondary btn-icon-split' href='list.br'>목록으로</a>
		<c:if test='${loginInfo.id eq vo.writer }'>
			<a class='btn btn-primary btn-icon-split'
				href='modify.no?id=${vo.id}&${hrefParam}'>정보수정</a>
			<a class='btn btn-danger btn-icon-split' id='remove'>정보삭제</a>
		</c:if>
	</div>
</body>
</html>