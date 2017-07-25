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
<style>
	.num{
		width:20px;
	}
</style>
<script>
	function answer_check(num, content){
		var c = 'ans'+num+'.'+content;
		var imgc = '#answer'+num+content;
		
		document.getElementById('ans'+num+'.'+1).style.backgroundImage = "url('')";
		document.getElementById('ans'+num+'.'+2).style.backgroundImage = "url('')";
		document.getElementById('ans'+num+'.'+3).style.backgroundImage = "url('')";
		document.getElementById('ans'+num+'.'+4).style.backgroundImage = "url('')";
		document.getElementById(c).style.backgroundImage = "url('./img/red_v38.gif')";
		
		$('#answer'+num+'1').attr('src','./img/num'+1+'.gif');		
		$('#answer'+num+'2').attr('src','./img/num'+2+'.gif');		
		$('#answer'+num+'3').attr('src','./img/num'+3+'.gif');		
		$('#answer'+num+'4').attr('src','./img/num'+4+'.gif');		
		$(imgc).attr('src','./img/num'+content+'_gray.gif');
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
	var count = -4;
	function examClick(){
		var startQuiz = "<c:out value='${startQuiz}' />";
	alert(count);
			var idvalue = "test";
			alert('디테일');
			count+=5;
			$.ajax({
				url:'result',
				type:"post",
				data:"count="+count,
				success:function(abc){
					console.log(count);
					alert('success');
					var code ="";
					var ccode ="";
					var cdode ="";
					v = abc.examList;
					$.each(v, function(i, res){
						if(i==3){
							code="";
						}
						code +="<div></div><table class='table table-striped'>";
						code += "<tr><td class='num'>"+res.cbt_em_quiz_numb+"</td><td>" + res.cbt_em_quiz + "</td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"1 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 1)'>" + res.cbt_quiz1 + "</a></td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"2 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 2)'>" + res.cbt_quiz2 + "</a></td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"3 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 3)'>" + res.cbt_quiz3 + "</a></td></tr>";
						code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"4 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 4)'>" + res.cbt_quiz4 + "</a></td></tr>";
						code += "</table>";
						code += "<input type='hidden' value='"+res.cbt_em_answer+"'>";
						if(i>2){
							ccode=code;
						}else{
							cdode=code;
						}
					})
					$('#quizContent').html(cdode);
					$('#quizContent2').html(ccode);
				}
			})
	}
</script>
<table><tr>
<td>
<div style="width:815px;">
	<div id="quizContent" style="width:400px;float:left;margin-right:15px;">
		<!-- 문제가 붙을거다 -->
	</div>
	<div id="quizContent2" style="width:400px;float:right;">
		<!-- 문제가 붙을거다 -->
	</div>
</div>
	<button id="start" onclick="examClick()">버튼</button>
	</td>
	<td style="padding-left:4px; border:none; width:130px;" valign="top"><!-- 답안지 출력 -->
	<jsp:include page="answer.jsp" />
	</tr>
	</table>
</body>
</html>