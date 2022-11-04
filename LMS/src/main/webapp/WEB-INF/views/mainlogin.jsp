<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>영문대학교(LMS)</title>
<link rel="icon" type="image/x-icon" href="resources/assets/images/mainlogin/lmslogo.png">
<link rel="stylesheet" href="resources/assets/css/mainlogin.css" />
</head>
<body>
<!-- <div class='loginbox'>
	<p>LOGIN</p>
	<div id='id'><input type='text' name='id' placeholder='아이디'></div>
	<div id='password'><input type='text' name='password' placeholder="비밀번호"></div>
</div>
<div>
	<button>LOGIN</button>
</div>
<div>
	사용자기억
</div>
<div>
	아이디/비번
</div> -->
<div class='loginbox'>
	<div class="col-loginbox ">
		<div class="row">				
			<div class="col-login col-login-person">
			<h2 class="login-title">LOGIN</h2>
			<div class="langmenu">			
			<form class="mform form-login" method="post" action="https://smart.wsu.ac.kr/login/index.php">
				<div class="textform">
					<input type="text" id="input-username" name="username" placeholder="아이디" value="" class="required init_lang_en" />
					<input type="password" id="input-password" name="password" placeholder="비밀번호" class="required init_lang_en"/>
				</div>
				<div class="submitform">
					<input type="submit" name="loginbutton" class="btn btn-success" value="로그인" />
				</div>						
				<div class="checkbox">
					<label>
						<input type="checkbox" id="remember" name="rememberusername"  />
						사용자이름 기억								
					</label>
				</div>
				<div class="loginfind">
					<ul>							
						<li><a href="http://info.wsu.ac.kr/" target="_blank">아이디 / 비밀번호 찾기</a></li>
					</ul>							
				</div>
			</form>
		</div>
			<div class="col-family">
				<ul>
					<li class="family-1"><a href="https://www.wsu.ac.kr/main/" target="_blank">대학홈페이지</a></li>
					<li class="family-2"><a href="https://info.wsu.ac.kr/index_new.jsp" target="_blank">대학정보시스템</a></li>
					<li class="family-3"><a href="http://wctl.wsu.ac.kr/" target="_blank">교수학습개발센터</a></li>
					<li class="family-4"><a href="http://wcc.wsu.ac.kr/main/index.jsp" target="_blank">우송학생상담센터</a></li>
					<li class="family-5"><a href="https://career.wsu.ac.kr/user" target="_blank">학생경력개발센터 GPS</a></li>
					<li class="family-6"><a href="http://itedu.wsu.ac.kr/main/index.jsp" target="_blank">우송 IT 교육센터</a></li>
				</ul>
			</div>
			</div>
		</div>
	</div>	
</div>	
</body>
</html>