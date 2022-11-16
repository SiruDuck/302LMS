<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
ul {
	list-style: none;
}

li {
	float: left;
	margin-right: 10px;
}

.w-px1200 {
	width: 1200px;
}

.w-px100 {
	width: 100px;
}

.w-px300 {
	width: 300px;
}
</style>
</head>
<body>
	<h2>공지사항</h2>
	<div class="table-responsive">
		<table class="table table-bordered" id="dataTable" width="100%"
			cellspacing="0">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>첨부파일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Tiger Nixon</td>
					<td>System Architect</td>
					<td>Edinburgh</td>
					<td>61</td>
				</tr>
			</tbody>
		</table>
	</div>
	<form method='post' action='list.no'
		style="margin: auto; width: 220px;">
		<div id='list-top' class='w-px1200'>
			<ul>
				<li><select class='w-px100' name='search'>
						<option value='all'>전체</option>
						<option value='title'>제목</option>
						<option value='content'>내용</option>
						<option value='writer'>작성자</option>
				</select></li>
				<li><input type='text' value='' name='keyword' class='w-px300'></li>
				<li><a class='btn btn-primary'>검색</a></li>
			</ul>
		</div>

		<input type='hidden' name='curPage' value='1'>
	</form>
</body>
</html>