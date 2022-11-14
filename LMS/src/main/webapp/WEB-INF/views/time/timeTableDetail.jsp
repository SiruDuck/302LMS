<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                            <h6 class="m-0 font-weight-bold text-primary">선택한 과목명</h6>
                        </div> -->
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                	
                                    <!-- <thead>
                                        <tr>
                                            <th>강의 시간</th>
                                            <th>월</th>
                                            <th>화</th>
                                            <th>수</th>
                                            <th>목</th>
                                            <th>금</th>
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
                                            <td>과목코드</td>
                                            <td>12345</td>
                                        </tr>
                                        <tr>
                                            <td>과목명</td>
                                            <td>컴퓨터프로그래밍실습1</td>
                                        </tr>
                                        <tr>
                                            <td>구분</td>
                                            <td>전공필수</td>
                                        </tr>
                                        <tr>
                                            <td>강의실</td>
                                            <td>B302</td>
                                        </tr>
                                        <tr>
                                            <td>담당교수</td>
                                            <td>김영문</td>
                                        </tr>      
                                        <tr>
                                            <td>학점</td>
                                            <td>3</td>
                                        </tr>                
                                        <tr>
                                            <td>시수</td>
                                            <td>3</td>
                                        </tr>             
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
					<div class='btn btn-primary btn-icon-split'>
						<a class='text text-white '>뒤로가기</a>
					</div>
                </div>
</body>
</html>