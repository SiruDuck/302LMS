<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<i class="bi bi-check-square-fill"></i>
	<div class="card mb-4">
    <div class="card-header">
    비품 등록
   	</div>
    <div class="card-body">
    
   		<form method="post" action="eqinsert">
   		<div class="input-group">
   		     <input id="equipment" name="equipment" style="margin-right: 3rem;" type="text" class="form-control bg-light border-0 small" placeholder="비품 이름" aria-label="Search" aria-describedby="basic-addon2">
   		     <input id="equipment_num" name="equipment_num" type="text" class="form-control bg-light border-0 small" placeholder="비품 수량" aria-label="Search" aria-describedby="basic-addon2">
   		      
   		      <div class="input-group-append">
   		      
   		       
   		      </div>
   		    </div>
   	</form>
   	 <button id ="submit" class="btn btn-primary" type="button">
   					<i class="fas fa-check-square"></i>
   		        </button>
   	</div>
  	</div>
	
<script>

$('#submit').click(function(){
	if( $('[name=equipment]').val()==''){
		alert('비품명을 입력하세요!');
		$('[name=equipment]').focus();
		return;
		
	}else if( $('[name=equipment_num]').val()==''){
		
		alert('비품 수량을 입력하세요!');
		$('[name=equipment_num]').focus();
		return;
		
	}else if(isNaN($('[name=equipment_num]').val())){
		alert('정수값을 입력하세요!');
		$('[name=equipment_num]').focus();
		return;
	}
	else{
		alert('등록되었습니다.');
		$('form').submit();
	}
});



</script>
</body>
</html>