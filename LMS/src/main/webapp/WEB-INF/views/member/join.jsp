<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{font-family: NanumGothic,"나눔고딕",NanumGothic,"돋움",dotum,sans-serif;}

.container-fluid {height: 55rem;}

a.btn-fill, a.btn-empty {
	display: inline-block;
	height: 25px;
	padding: 3px 15px;
	border: 1px solid #4e73df;
	border-radius: 3px;
	line-height: initial;
}

div.valid {
	color: #4e73df;
	font-size: 14px;
	font-weight: bold;
}

div.invalid {
	color: #ff0000;
	font-size: 14px;
	font-weight: bold;
}

.align {
	align-items: center;
	display: flex;
}

.w-px700 {
	width: 700px
}

.w-px140 {
	width: 140px
}

table td { text-align: left; }

.font-r {
	font-size: 40px;
	color: #ff0000;
}

.font-b {
	font-size: 40px;
	color: #4e73df;
}

.font-g {
	font-size: 40px;
	color: #008000;
}

#delete, #attach-file, #delete-file, .attach-file, .delete-file {
	display: none
}

table th { padding: 12px 0px 15px;}

.btnSet {
	margin: 40px auto;
}

.center { display: flex;} 


a.lastbtn-fill{background-color: #4e73df; color: #fff; margin-right: 10px;}

a.lastbtn-fill, a.lastbtn-empty { padding: 10px 15px; 
    display: initial; 
	height: 28px;
	border: 1px solid #4e73df;
	border-radius: 3px;
	line-height: initial;
    
    } 
    
input[type=radio] { accent-color: #4e73df; }
    
.form-item input:focus{
    border-color:#4e73df;
    outline: none;
}

.w-px80 { width: 80px }

.full { width: calc(100% - 22px) }

.joincenter { margin-left: 50px;}


</style>	
<link rel="stylesheet" href="resources/css/mainlogin.css" />
</head>
<body>
<h2>회원가입</h2>
<div class='joincenter'>
<form method='post' action='join' enctype='multipart/form-data'>
<table class='w-px700 form-item'>
<tr><th class='w-px140'>* 직급</th>
	<td><label><input type='radio' name='name' value='학생' checked>학생</label>
		<label><input type='radio' name='name' value='교수'>교수</label>
		<label><input type='radio' name='name' value='직원'>직원</label>
	</td>
</tr>
<tr><th>* 성명</th>
	<td><input type='text' name='name' autofocus></td>
</tr>
<tr><th>* 아이디</th>
	<td><input type='text' name='id' class='chk'>
		<a class='btn btn-primary' id='btn-id'>아이디 중복확인</a>
		<div class='valid'>아이디를 입력하세요(영문소문자,숫자만)</div>
	</td>
</tr>
<tr><th>* 비밀번호</th>
	<td><input type='password' name='pw' class='chk'>
		<div class='valid'>비밀번호를 입력하세요(영문대/소문자,숫자 모두 포함)</div>
	</td>
</tr>
<tr><th>* 비밀번호 확인</th>
	<td><input type='password' name='pw_ck' class='chk'>
		<div class='valid'>비밀번호를 다시 입력하세요</div>
	</td>
</tr>
<tr><th>* 이메일</th>
	<td><input type='text' name='email' class='chk'>
		<div class='valid'>이메일을 입력하세요</div>
	</td>
</tr>
<tr><th>* 성별</th>
	<td><label><input type='radio' name='gender' value='남' checked>남</label>
		<label><input type='radio' name='gender' value='여'>여</label>
	</td>
</tr>
<tr><th>생년월일</th>
	<td><input type='text' name='birth' class='date' readonly>
		<a id='delete'><i class="font-r fa-regular fa-calendar-xmark"></i></a>
	</td>
</tr>
<tr><th>전화번호</th>
	<td><input type='text' name='phone'></td>
</tr>
<tr><th>주소</th>
	<td><a class='btn btn-primary' id='post'>우편번호찾기</a>
		<input type='text' name='post' class='w-px80' readonly>
		<input type='text' name='address' class='full' readonly>
		<input type='text' name='address' class='full' >
	</td>
</tr>
<tr><th>졸업입자</th>
	<td><input type='text' name='graduate'></td>
</tr>
</table>
</form>
</div>
<div class="center">
<div class='btnSet'>
	<a class='btn btn-primary' id='join'>회원가입</a>
	<a class='btn btn-secondary' onclick='history.go(-1)'>취소</a>
</div>
</div>


</body>
</html>