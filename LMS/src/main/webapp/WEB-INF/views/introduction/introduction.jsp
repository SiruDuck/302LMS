<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영문대학교 학교 소개화면</title>
<link rel="stylesheet" href="resources/css/intro.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">


</style>
</head>
<body>


<div><h1>어쩌구</h1></div>

<div><h1>저쩌구</h1></div>

<div><h1>...</h1></div>

<div><h1>LMS에용</h1></div>

<script>



let observer = new IntersectionObserver((e)=>{
	e.forEach((박스)=>{
		if(박스.isIntersecting){
			박스.target.style.opacity = 1;
			박스.target.style.transform = 'rotate(0deg)';
		}else{
			박스.target.style.opacity = 0;
		}
		박스.intersectionRatio
	})
	
});	
	
	
	
	
});

let div = document.querySelectorAll('div')
observer.observe(div[0])
observer.observe(div[1])
observer.observe(div[2])
observer.observe(div[3])
</script>
</body>
</html>