<%@page import="com.last.common.vo.CbtVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
    <%
    	List<CbtVo> list = (ArrayList<CbtVo>)request.getAttribute("examList");
    	for(int i=0; i<list.size(); i++){
    		CbtVo vo = list.get(i);
    		if(i>0) out.print(",");
    
    %>
    	{
    		"cbt_em_quiz_code" :  "<%=vo.getCbt_em_quiz_code() %>",
    		"cbt_em_quiz_numb" :  "<%=vo.getCbt_em_quiz_numb()%>",
    		"cbt_em_answer" :    "<%=vo.getCbt_em_answer()%>",
    		"cbt_question_img" :    "<%=vo.getCbt_question_img()%>",
    		"cbt_quiz1" :         "<%=vo.getCbt_quiz1()%>",
    		"cbt_quiz2" :         "<%=vo.getCbt_quiz2() %>",
    		"cbt_quiz3" :         "<%=vo.getCbt_quiz3() %>",
    		"cbt_quiz4" :          "<%=vo.getCbt_quiz4() %>",    	
            "cbt_em_quiz": "<%=vo.getCbt_em_quiz() %>"
            }
      <%
      }
      %>
]      