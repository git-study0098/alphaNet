<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<script>
<%
   HttpSession session2 =request.getSession();
   if(session2.getAttribute("email") != null){
	session2.invalidate();

   }
%>
location.href="<%=request.getContextPath()%>/client/main";
</script>