<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영문대학교 LMS</title>


<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>   
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>
<script src='js/common.js?<%=new java.util.Date()%>'></script>
</head>
<body>
<tiles:insertAttribute name='header'/>
<tiles:insertAttribute name='container'/>
</body>
</html>