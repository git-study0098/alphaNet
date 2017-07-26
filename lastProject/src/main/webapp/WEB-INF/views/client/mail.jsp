<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>메일인증</title>

<%
	String ranNum = (String)request.getAttribute("ranNum");
	String email = (String)request.getAttribute("email");
	
%>

</head>

<script language="Javascript">


function authMail(){
	document.form.action="<%=request.getContextPath()%>/client/mailSend";
	document.form.submit();	
}
	
	
	//이메일 체크부분 
	function checkemailaddy() {
		if (form.email_select.value == '1') {
			form.email2.readonly = false;
			form.email2.value = '';
			form.email2.focus();
		} else {
			form.email2.readonly = true;
			form.email2.value = form.email_select.value;
		}
	}
function check(form){
	
	alert(<%=ranNum%>);
	if(!form.authNum.value){
		alert("인증번호를 입력하세요!!!");
		return false;
	}
	
	if(form.authNum.value != <%=ranNum%>){
		alert("틀린 인증번호 입니다. 확인하시고 다시 입력해주세요!!!");
		form.authNum.value="";
		return false;
	}
	
	if(form.authNum.value == <%=ranNum%>){
		alert("인증완료되었습니다.");
		<% session.setAttribute("email", email); %>	
		opener.location.href="<%=request.getContextPath()%>/client/client"
		self.close();
		
	}
}

	//이메일인증
</script>


<form name="form" method="post">
	<input name="email1" type="text" class="box" id="email1" size="15">
	@ <input name="email2" type="text" class="box" id="email2" size="20">
	<select name="email_select" class="box" id="email_select"
		onChange="checkemailaddy();">
		<option value="" selected>선택하세요</option>
		<option value="naver.com">naver.com</option>
		<option value="hotmail.com">hotmail.com</option>
		<option value="hanmail.com">hanmail.com</option>
		<option value="yahoo.co.kr">yahoo.co.kr</option>
		<option value="1">직접입력</option>
	</select> <a href="#" onclick="authMail()">인증하기 </a>
	<!-- 	 	<button type="button" value="메일인증하기" onclick="sendMail()">인증하기</button>  -->
	<br /> <br /> <input type="text" name="authNum" id="authNum"
		size="35" />
	<!-- <input type="button" value="인증"  onclick="check()"/> -->
	<button type="button" onclick="check(this.form);">인증</button>

</form>
</html>
