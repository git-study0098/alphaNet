<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CBT</title>
</head>
<body>
<script>
	function start_test(subject, check, startQuiz){
// 		var list1 = '<c:out value="${quizList1}" />';
// 		var list2 = '<c:out value="${quizList2}" />';
// 		var list3 = '<c:out value="${quizList3}" />';
// 		var list4 = '<c:out value="${quizList4}" />';
// 		var list5 = '<c:out value="${quizList5}" />';
		var seVal = '<c:out value="${seVal}" />';
		alert(subject+'<'+check+'>'+startQuiz);
		if(subject=='1'){
			location.href='<%=request.getContextPath()%>/cbtDetail?startQuiz='+startQuiz+'&seVal='+seVal;
		}
		
		if(subject==2){
			location.href='<%=request.getContextPath()%>/cbtDetail?startQuiz='+startQuiz+'&seVal='+seVal;	
		}
		
		if(subject==3){
			location.href='<%=request.getContextPath()%>/cbtDetail?startQuiz='+startQuiz+'&seVal='+seVal;
		}
		
		if(subject==4){
			location.href='<%=request.getContextPath()%>/cbtDetail?startQuiz='+startQuiz+'&seVal='+seVal;
		}
		
		if(subject==5){
			location.href='<%=request.getContextPath()%>/cbtDetail?startQuiz='+startQuiz+'&seVal='+seVal;
		}
		
	}
</script>
<table style="width:100%; border:3px double #aaa;" border="0" cellspacing="0" cellpadding="0">
<tbody><tr>
<td style="text-align:left;">
<div style="margin:0px; padding:10px; font-size:10pt; font-weight:normal; line-height:1.4; ">
	<span id="subj_01"><h2>정보처리기사[필기] 기출문제 모의고사 CBT</h2></span><br>
	<div id="linesp_01"></div>[1과목] 데이터베이스 (20문제)<br>
	[2과목] 전자계산기구조 (20문제)<br>
	[3과목] 운영체제 (20문제)<br>
	[4과목] 소프트웨어공학 (20문제)<br>
	[5과목] 데이터통신 (20문제)<br><br>
	<div id="linesp_01"></div>[시험시간] 과목 구분 없이 150분 (75분 경과 퇴실 가능)<br>
	[합격점수] 60점 이상 (100문제 중 60문제 이상 득점)<br>
	[과목낙제] 한 과목이라도 7문제 이하 득점하면 실격<br>
</div>
</td>
</tr>

<tr>
<td style="padding:0px; border-top:3px double #aaa; background:#f5f5f5" align="center">
	<table style="padding-bottom:5px; width:100%; " cellspacing="0" cellpadding="0">
	<tbody><tr height="33">
	<td style="padding:3px 2px 1px 2px; text-align:center" class="title01">구분</td>
	<td style="padding:3px 2px 1px 2px; text-align:center" class="title01">과목명</td>
	<td style="padding:3px 2px 1px 2px; text-align:center" class="title01">정답수/문제수</td>
	<td style="padding:3px 2px 1px 2px; text-align:center" class="title01">5문제씩풀기</td>
	</tr>

<tr style="padding:3px 2px 1px 2px" height="33">
<td align="center">1과목</td>
<td align="center">데이터베이스<br></td>
<td align="center"><span id="stare1">응시전</span><br>20문제<br></td>
<td colspan="1" align="center"><a href="javascript:start_test(1,'first', 1)" style="color:#CC9900; font-weight:bold">응시하기</a></td>
</tr>

<tr style="padding:3px 2px 1px 2px" height="33">
<td align="center">2과목</td>
<td align="center">전자계산기구조<br></td>
<td align="center"><span id="stare2">응시전</span><br>20문제<br></td>
<td colspan="1" align="center"><a href="javascript:start_test(2,'first', 21)" style="color:#CC9900; font-weight:bold">응시하기</a></td>
</tr>

<tr style="padding:3px 2px 1px 2px" height="33">
<td align="center">3과목</td>
<td align="center">운영체제<br></td>
<td align="center"><span id="stare3">응시전</span><br>20문제<br></td>
<td colspan="1" align="center"><a href="javascript:start_test(3,'first', 41)" style="color:#CC9900; font-weight:bold">응시하기</a></td>
</tr>

<tr style="padding:3px 2px 1px 2px" height="33">
<td align="center">4과목</td>
<td align="center">소프트웨어공학<br></td>
<td align="center"><span id="stare4">응시전</span><br>20문제<br></td>
<td colspan="1" align="center"><a href="javascript:start_test(4,'first', 61)" style="color:#CC9900; font-weight:bold">응시하기</a></td>
</tr>

<tr style="padding:3px 2px 1px 2px" height="33">
<td align="center">5과목</td>
<td align="center">데이터통신<br></td>
<td align="center"><span id="stare5">응시전</span><br>20문제<br></td>
<td colspan="1" align="center"><a href="javascript:start_test(5,'first', 81)" style="color:#CC9900; font-weight:bold">응시하기</a></td>
</tr>
</tbody></table>

</td>
</tr>
</tbody></table>

</body>
</html>