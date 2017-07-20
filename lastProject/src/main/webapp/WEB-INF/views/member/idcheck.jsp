<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="signupController" class="com.last.member.controller.SignupController"></jsp:useBean>    
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	
	int flag = -1;
	
	flag = (int)signupController.idCheck(id);
	
	if(flag == -1){
%>
	{
		"Status" = "OK";
		"id" : "<%=id%>"
	}
	
<%  }else{ %>

	{
		"Status" = "OK";
		"id" : "<%=id%>"
	}
	
<%
	}
%>