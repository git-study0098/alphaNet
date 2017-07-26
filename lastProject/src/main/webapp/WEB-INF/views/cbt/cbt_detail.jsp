<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<title>Insert title here</title>
</head>
<body>
<%int[] quizList1 = (int[])session.getAttribute("quizList1");%>

<style>
	.num{
		width:20px;
	}
</style>
<script>
	var sQ = '<c:out value="${startQuiz}" />'
	function answer_check(num, content){
		var c = 'ans'+num+'.'+content;
		var imgc = '#answer'+num+content;
		
		document.getElementById('ans'+num+'.'+1).style.backgroundImage = "url('')";
		document.getElementById('ans'+num+'.'+2).style.backgroundImage = "url('')";
		document.getElementById('ans'+num+'.'+3).style.backgroundImage = "url('')";
		document.getElementById('ans'+num+'.'+4).style.backgroundImage = "url('')";
		document.getElementById(c).style.backgroundImage = "url('<%=request.getContextPath()%>/resources/cbt/red_v38.gif')";
		
		$('#answer'+num+'1').attr('src','<%=request.getContextPath()%>/resources/cbt/num'+1+'.gif');		
		$('#answer'+num+'2').attr('src','<%=request.getContextPath()%>/resources/cbt/num'+2+'.gif');		
		$('#answer'+num+'3').attr('src','<%=request.getContextPath()%>/resources/cbt/num'+3+'.gif');		
		$('#answer'+num+'4').attr('src','<%=request.getContextPath()%>/resources/cbt/num'+4+'.gif');		
		$(imgc).attr('src','<%=request.getContextPath()%>/resources/cbt/num'+content+'_gray.gif');

		document.getElementById('so'+num+'.'+num).value=content;
	}
	
	function finish_exam(sev){
		document.oxCheck.action="<%=request.getContextPath()%>/cbtChoice";
		document.oxCheck.submit();
	}

// 		document.getElementById('ans'+num+'.'+1).style.backgroundColor = ""
// 		document.getElementById('ans'+num+'.'+2).style.backgroundColor = ""
// 		document.getElementById('ans'+num+'.'+3).style.backgroundColor = ""
// 		document.getElementById('ans'+num+'.'+4).style.backgroundColor = ""
// 		document.getElementById(c).style.backgroundColor = "blue"
// 		$(d).css('background-color','black');
// 		$(c+'>a').css('background-color','yellow');
// 		$('#c>a').append('<img src=./img/num'+content+'_gray.gif>');
</script>
<script>
	var startQuiz = "<c:out value='${startQuiz}' />";
	var count = startQuiz;
	function examClick(){
			var idvalue = "test";
			alert(count+"????");
			var cc = $('#oQuiz').val();
			var ccArray = new Array();
			var ca=-1;
			var cb=-1;
			if(cc!=null && cc!=""){
				ccArray = cc.split(',');
			}
			alert(ccArray);
			$.ajax({
				url:'result',
				type:"post",
				data:"count="+count,
				success:function(abc){
					var code ="";
					var ccode ="";
					var cdode ="";
					var cbd = "";
					v = abc.examList;
					$.each(v, function(i, res){
						if(i==3){
							code="";
						}
						code +="<div ";
						
						if(ccArray != 0){
							for(var k in ccArray){
								if(res.cbt_em_quiz_numb.split('.')[0] == ccArray[k]){
									ca=1;
								}
							}
						}
						if(ca==1){
							code += " style='margin: 0px; position: absolute; width: 55px; height: 45px; background-image: url("+"<%=request.getContextPath()%>/resources/cbt/re_o.gif"+");'"
							ca=-1;
						}else if(cc!=0){
							code += " style='margin: 0px; position: absolute; width: 55px; height: 45px; background-image: url("+"<%=request.getContextPath()%>/resources/cbt/re_x.gif"+");'"
						}
						
						code +="><img src='../../alphanet/resources/cbt/blank.gif' style='width:55px; height:45px;'>";
						code += "</div><table class='table table-striped'>";
						code += "<tr><td class='num'>"+res.cbt_em_quiz_numb+"</td><td>" + res.cbt_em_quiz + "</td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"1 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 1)'>" + res.cbt_quiz1 + "</a></td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"2 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 2)'>" + res.cbt_quiz2 + "</a></td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"3 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 3)'>" + res.cbt_quiz3 + "</a></td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"4 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 4)'>" + res.cbt_quiz4 + "</a></td></tr>";
						code += "</table>";
						cbd += "<input type='hidden' name='ansH' value='"+res.cbt_em_answer+"'>";
						cbd += "<input type='hidden' name='solH' id=so"+res.cbt_em_quiz_numb+count+" value='0'>";
						if(i>2){
							ccode=code;
						}else{
							cdode=code;
						}
						count++;
					})
					$('#quizAns').html($('#quizAns').html()+cbd);
					$('#quizContent').html(cdode);
					$('#quizContent2').html(ccode);
				}
			})
	}
</script>
<table><tr>
<td>
<div style="width:815px;">
<form name='oxCheck' id='oxCheck'>
	<div id="quizAns" style="width:400px;float:left;margin-right:15px;">
	</div>
	<input type="hidden" name="seVal" id="seVal" value="${seVal}">
	<input type="hidden" name="oQuiz" id="oQuiz" value="${oQuiz}">
	<div id="quizContent" style="width:400px;float:left;margin-right:15px;">
		<!-- 문제가 붙을거다 -->
	</div>
	<div id="quizContent2" style="width:400px;float:right;">
		<!-- 문제가 붙을거다 -->
	</div>
</form>
</div>
	<button id="start" onclick="examClick()">버튼</button>
	</td>
	<td style="padding-left:4px; border:none; width:130px;" valign="top"><!-- 답안지 출력 -->
	<jsp:include page="answer.jsp" />
	</tr>
	</table>
</body>
</html>