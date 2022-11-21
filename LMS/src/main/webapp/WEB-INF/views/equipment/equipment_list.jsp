<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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


<div class="container-fluid">
<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2" >교재 및 비품관리</h1>
<a href="eqadd" class="btn btn-primary btn-icon-split mb-2">
   <span class="icon text-gray-600">
   <i class="fas fa-arrow-right"></i>
   </span>
   <span class="text">비품 등록</span>
 </a>

					<div class='card mb-4'>
						<div class='card-header py-3'>
							<h6 class='m-0 font-weight-bold text-primary'>검색</h6>
						</div>
						<div class='card-body d-flex'>
							<div class='dataTables_filter search-box'>
								<input type="search" class='eqname names form-control form-control-sm' placeholder='이름으로 검색'>
						</div>
						</div>
					</div>	
					
					
					
					
					
									
					<div class="dd">
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">비품 관리</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>비품 이름</th>
                                            <th>수량</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.equipment }</td>
                                            <td>${vo.equipment_num }
	                                            <a href="#" class="btn btn-secondary btn-icon-split" style="float: right;" >
		                                        	<span class="icon text-white-50">
		                                            <i class="fas fa-arrow-right"></i>
		                                        	</span>
		                                        	<span class="text">수량 변경</span>
	                                    		</a>
                                            </td>
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



<script>
$('.eqname').keyup(function(){
	$.ajax({
		data:{name: $(this).val()},
		url:"eqnamelist",
		success:function(data){
			$('#dataTable_wrapper').html(data);
		}
		
	})
});


</script>
</body>
</html>