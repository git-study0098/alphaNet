<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left_script.js" charset="euc-kr"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/images/main/HRDKorea_favicon_16x16.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/left_menu.css">

<html>
<head>
	<title></title>
</head>
<script>
	function goLogin2(){
		var id ="<c:out value='${findId }'/>";
		opener.goLogin(id);
		window.close();
		return id;
	}

</script>

<body>
	<div style="margin-left:30px;">
	<c:choose>
		<c:when test="${!empty findId}">
		<h3>조회하신 아이디</h3>
		<h2 class="tit_content"><b>${findId}</b></h2>
		
		<div>
		<button type="button" class="btn_login" onclick="goLogin2()"><span style="width:100px;">로그인</span></button>
		<button type="button" class="btn_login" onclick="findPwd2()"><span style="width:100px;">비밀번호 찾기</span></button>
		</div>
		</c:when>
		<c:otherwise>
			<h3>존재하지 않습니다.</h3>
			<div style="margin-top:50px;">
			<button type="button" class="btn_login" onclick="window.close()"><span style="width:100px">닫기</span></button>
			</div>		
		</c:otherwise>
	</c:choose>
	</div>
</body>
</html>  