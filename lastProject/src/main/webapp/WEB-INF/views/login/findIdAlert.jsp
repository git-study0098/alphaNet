<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:choose>
	<c:when test="${!empty findId}">
	<h1>조회하신 아이디는 ${findId}입니다.</h1>
	
	<button type="button" onclick="goLogin2()">로그인</button>
	<button type="button" onclick="findPwd2()">비밀번호 찾기</button>
	</c:when>
	<c:otherwise>
		입력하신 정보와 일치하는 아이디가 없습니다.
		<button type="button" onclick="window.close()">닫기</button>		
	</c:otherwise>
</c:choose>
</body>
</html>  