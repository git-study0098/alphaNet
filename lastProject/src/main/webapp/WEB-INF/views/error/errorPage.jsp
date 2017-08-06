<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left_script.js" charset="euc-kr"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/images/main/HRDKorea_favicon_16x16.ico" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
<title></title>
<style>
	*{
		margin:0;
		padding:0;
	    box-sizing: border-box;
	}
	.btn{
		width:120px;
		height:40px;
		font-size:14px;
		color:white;
		font-weight: bold;
	    line-height: 16px;
	    box-sizing: border-box;
		background-color: #3274C2;
		border:solid 1.4px #295e9a;
	    border-radius: 3px;
		cursor: pointer;
		vertical-align: middle;
	}
</style>
</head>
<body>
<div style="width:450px;height:500px;margin:0 auto;margin-top:150px;text-align:center;align:center">
	<div>
	<div style="margin-bottom:30px;"><img src="<%=request.getContextPath()%>/resources/images/logo.png"></div>
		<h3>요청 처리 과정에서 에러가 발생했습니다.<br/>
		빠른 시일 내에 해결하도록 하겠습니다.</h3>
	</div>
	<div style="margin-top:110px;">
		<button id="start" onclick="history.go(-1)" class="btn" ><span>이전 페이지</span></button>
		<button id="start" onclick="javascript:location.href='<%=request.getContextPath()%>/main'" class="btn"><span>홈으로 이동</span></button>
	</div>
</div>	
</body>
</html>