<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>α-net 자격의 모든것 CBT</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left_script.js" charset="euc-kr"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/images/main/HRDKorea_favicon_16x16.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/left_menu.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/content.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mobile.css">

</head>
<%int[] quizList1 = (int[])session.getAttribute("quizList1");%>

<body>
<style>
	.num{
		width:20px;
	}
</style>
<script>
	$(document).ready(function(){
		window.resizeTo(1200,1000);
		window.moveTo(300,50);
		examClick()
	})
	$(document).ready(function(){
		listCount = 0;
		if($('#solH2').val()!=0 && $('#ansH2').val()!=0){
			
			oQuiz = $('#oQuiz').val();
			oQuizArray = new Array();
			if(oQuiz!=null || oQuiz!=undefined || oQuiz!=""){
				oQuizArray = oQuiz.split(',');
			}
			sH2 = $('#solH2').val();
			sH2Array = new Array();
			if(sH2!=null || sH2!=undefined || sH2!=""){
				sH2Array = sH2.split(',');
			}
			anH2 = $('#ansH2').val();
			anH2Array = new Array();
			if(anH2!=null || anH2!=undefined || anH2!=""){
				anH2Array = anH2.split(',');
			}
			
			//오른쪽 답지에 답체크
			for(var j=1; j<=sH2Array.length; j++){//sH2Array:내가 푼것들 답. 즉 30033 같이?
				for(var i=0; i<oQuizArray.length; i++){//oQuizArray:1번 4번 5번 풀어서 맞앗다?
						var imgc2 = '#answer'+j+sH2Array[j-1];
						$(imgc2).attr('src','<%=request.getContextPath()%>/resources/cbt/num'+sH2Array[j-1]+'_gray.gif');
					if(oQuizArray[i]==j){
						$('#ans_num'+j).css('background-image', '');
						$('#ans_num'+j).css('background-image','url("<%=request.getContextPath()%>/resources/cbt/ans_O.gif")')
										.css('background-repeat','no-repeat');
						break;
					}
					else{
						$('#ans_num'+j).css('background-image','url("<%=request.getContextPath()%>/resources/cbt/x24.gif")')
						.css('background-repeat','no-repeat');
					}
				}
				for(var k=sH2Array.length+1; k<=100; k++){ //안푼거있으면 전부 오답처리
					$('#ans_num'+k).css('background-image','url("<%=request.getContextPath()%>/resources/cbt/x24.gif")')
					.css('background-repeat','no-repeat');
				}
			}
			
		}
	});	

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
	
	function answer_check(num, content){
		//num은 문제번호, content는 내가 고른거
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
		var endTest = document.getElementsByName('solH');
		for(var i=0; i<endTest.length; i++){
			if(endTest[i].value == 0){
				if (confirm("풀지않은 문제가 남아있습니다. 제출 하시겠습니까?") == true){    //확인
					document.oxCheck.action="<%=request.getContextPath()%>/cbtChoice";
					document.oxCheck.submit();
					break;
				}else{   //취소
				    return;
				}
			} 
		}
// 		else{
<%-- 			document.oxCheck.action="<%=request.getContextPath()%>/cbtChoice"; --%>
// 			document.oxCheck.submit();
// 		}
	}
	
	function examClick(){
			var idvalue = "test";
			var cc = $('#oQuiz').val();
			var ccArray = new Array();
			var ca=-1;
			var cb=-1;
			var seVal=$('#seVal').val();
			if(cc!=null && cc!=""){
				ccArray = cc.split(',');
			}
			$.ajax({
				url:'result',
				type:"post",
				data:"count="+count,
				success:function(abc){
					var code ="";
					var ccode ="";
					var cdode ="";
					var cbd = "";
					var icode = "";
					v = abc.examList;
					if(listCount<4){
					$.each(v, function(i, res){
						
						if(i==3){
							code="";
						}
						code +="<div ";
						
						if(ccArray != 0){
							for(var k in ccArray){
								if(res.cbt_em_quiz_numb == ccArray[k]){
									ca=1;
								}
							}
						}
						if(ca==1){
							code += " style='margin: 0px; position: absolute; width: 55px; height: 45px; background-image: url("+"<%=request.getContextPath()%>/resources/cbt/re_o.gif"+");'"
							ca=-1;
						}else if(cc!=undefined && cc!=0){
							code += " style='margin: 0px; position: absolute; width: 55px; height: 45px; background-image: url("+"<%=request.getContextPath()%>/resources/cbt/re_x.gif"+");'"
						}
						var chan=-1;
						var chan3=-1;
						var chan2=-1;
						var chan4=-1;
						code +="><img src='../../alphanet/resources/cbt/blank.gif' style='width:55px; height:45px;'>";
						code += "</div><table class='table table-striped'>";
						code += "<tr><td class='num'>"+res.cbt_em_quiz_numb+". </td><td>" + res.cbt_em_quiz;
						
						if(res.cbt_question_img!=undefined && res.cbt_question_img!=null && res.cbt_question_img!=""&& res.cbt_question_img!=0){
							
							code +="<div id='qim"+res.cbt_em_quiz_numb+"'><img src='<%=request.getContextPath()%>/resources/upload/image/"+
							res.cbt_question_img+"'></div>";
						}
						
						code += "</td></tr>";
						if(ccArray != 0){
						for(var k=0; k<ccArray.length;k++){
// 							alert('k는'+k+', '+ccArray.length + "이거:"+res.cbt_em_quiz_numb.split('.')[0])
							if(res.cbt_em_quiz_numb == ccArray[k]){
								for(var l=1; l<=4;l++){
									if(sH2Array[ccArray[k]-1]!=l){
										if(chan==-1){
											if(res.cbt_answer1!=undefined && res.cbt_answer1!=null && res.cbt_answer1!=""&& res.cbt_answer1!=0){
												code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+l+" style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'>"; 
												if(l==1){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 1)'> ①" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer1+"'></div>";
												code += icode;
												}else if(l==2){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 2)'> ②" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer2+"'></div>";
												code += icode;
												}else if(l==3){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 3)'> ③" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer3+"'></div>";
												code += icode;
												}else if(l==4){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 4)'> ④" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer4+"'></div>";
												code += icode;
													chan=1;
													chan3=1;
												}
											}else{
												code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+l+" style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+","+l+")'>";
												if(l==1){
													code+= (res.cbt_quiz1);
												}else if(l==2){
													code+= (res.cbt_quiz2);
												}else if(l==3){
													code+= (res.cbt_quiz3);
												}else if(l==4){
													code+= (res.cbt_quiz4);
													chan=1;
													chan3=1;
												}
											}
											code += "</a></td></tr>";
										}
									}else{
										if(chan2==-1){  // 정답일때
											if(res.cbt_answer1!=undefined && res.cbt_answer1!=null && res.cbt_answer1!=""&& res.cbt_answer1!=0){
												code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+sH2Array[ccArray[k]-1]+" style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;background-image:url("+"<%=request.getContextPath()%>/resources/cbt/red_v38.gif"+")'>";
												icode = "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+sH2Array[ccArray[k]-1]+" style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;background-image:url("+"<%=request.getContextPath()%>/resources/cbt/red_v38.gif"+")'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+","+l+ ")'>";
												if(sH2Array[ccArray[k]-1]==1){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 1)'> ①" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer1+"'></div>";
												code += icode;
												}else if(sH2Array[ccArray[k]-1]==2){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 2)'> ②" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer2+"'></div>";
												code += icode;
												}else if(sH2Array[ccArray[k]-1]==3){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 3)'> ③" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer3+"'></div>";
												code += icode;
												}else if(sH2Array[ccArray[k]-1]==4){
													icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 4)'> ④" +
													"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer4+"'></div>";
												code += icode;
													chan2=1;
													chan4=1;
												}
											}else{
												code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+sH2Array[ccArray[k]-1]+" style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;background-image:url("+"<%=request.getContextPath()%>/resources/cbt/red_v38.gif"+")'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+","+l+ ")'>";
												if(sH2Array[ccArray[k]-1]==1){
													code+= (res.cbt_quiz1);
												}else if(sH2Array[ccArray[k]-1]==2){
													code+= (res.cbt_quiz2);
												}else if(sH2Array[ccArray[k]-1]==3){
													code+= (res.cbt_quiz3);
												}else if(sH2Array[ccArray[k]-1]==4){
													code+= (res.cbt_quiz4);
													chan2=1;
													chan4=1;
												}
											}
											code += "</a></td></tr>";
										}
									}
								}
								
							}chan=-1;chan2=-1;
						}
						}
						if(!(chan3==1 || chan4==1)){
							if(res.cbt_answer1!=undefined && res.cbt_answer1!=null && res.cbt_answer1!=""&& res.cbt_answer1!=0){
									code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"1 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'>";
									icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 1)'> ①" +
										"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer1+"'></div>";
									code += icode;
									code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"2 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'>";
									icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 2)'> ② " + 
										"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer2+"'></div>";
									code += icode;
									code +="<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"3 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'>";
									icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 3)'> ③ " +
										"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer3+"'></div>";
									code += icode;
									code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"4 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'>";
									icode = "<a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 4)'> ④ " +
										"<div><img src='<%=request.getContextPath()%>/resources/upload/image/"+res.cbt_answer4+"'></div>";
									code += icode;
							}else{
								code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"1 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 1)'>" + res.cbt_quiz1;
								code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"2 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 2)'>" + res.cbt_quiz2;
								code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"3 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 3)'>" + res.cbt_quiz3;
								code += "<tr><td class='num'></td><td id=ans"+res.cbt_em_quiz_numb+"."+"4 style='padding-left:0px;padding-top:0px;background-repeat: no-repeat;'><a href='javascript:answer_check("+res.cbt_em_quiz_numb+", 4)'>" + res.cbt_quiz4;
							}
							code += "</a></td></tr>";
						}
						
						code += "</table>";
						if(ccArray!=0){
						if(res.cbt_em_answer == "0"){
							code += "<input type='text' name='ansH' value='출제오류로 전항 정답'>";
						}else{
							code += "<input type='text' name='ansH' value='"+res.cbt_em_answer+"'>";
						}
						}else{
						cbd += "<input type='hidden' name='ansH' value='"+res.cbt_em_answer+"'>";
						}
						cbd += "<input type='hidden' name='solH' id=so"+res.cbt_em_quiz_numb+"."+count+" value='0'>";
						icode="";
						if(i>2){
							ccode=code;
						}else{
							cdode=code;
						}
						count++;
						
					})
					listCount++;
					if(listCount==4){
						if($('#solH2').val()==0 && $('#ansH2').val()==0){
						$('#start').attr('onclick','finish_exam()');
						$('#start>span').text('답안 제출');
						}else{
							$('#start').attr('onclick','history.go(-1)');
							$('#start>span').text('뒤로가기');
						}
					}
					if($('#solH2').val()!=0 && $('#ansH2').val()!=0){
						$('#end').text('').attr('class','');
					}
					}
					$('#quizAns').html($('#quizAns').html()+cbd);
					$('#quizContent').html(cdode);
					$('#quizContent2').html(ccode);
				}
			})
			
// 		exem();			
	}
	function exem(){
		//문제에 답체크
		if($('#solH2').val()!=0 && $('#ansH2').val()!=0){
			
			for(var i=0; i<sH2Array.length; i++){
				alert(i+": "+sH2Array[i]);
				var c = 'ans'+(i+1)+'.'+sH2Array[i];
				alert(c)
				document.getElementById(c).style.backgroundImage = "url('<%=request.getContextPath()%>/resources/cbt/red_v38.gif')";
				//여기도 안오네 첫바퀴부터
			}
		}
	}
// 	window.onload = examClick();

</script>
<table><tr>
<td>
<div style="width:815px;">
<form name='oxCheck' id='oxCheck'>
	<div id="quizAns" style="width:400px;float:left;margin-right:15px;">
	</div>
	<input type="hidden" name="seVal" id="seVal" value="${seVal}">
	<input type="hidden" name="oQuiz" id="oQuiz" value="${oQuiz}">
	<input type="hidden" name="ansH2" id="ansH2" value="${ansH2}">
	<input type="hidden" name="solH2" id="solH2" value="${solH2}">
	<input type="hidden" name="startQuiz" id="startQuiz" value="${startQuiz}">
	<div id="quizContent" style="width:400px;float:left;margin-right:15px;">
		<!-- 문제가 붙을거다 -->
	</div>
	<div id="quizContent2" style="width:400px;float:right;">
		<!-- 문제가 붙을거다 -->
	</div>
</form>
</div>
	</td>
<td style="padding-left:4px; border:none; width:130px;" valign="top"><!-- 답안지 출력 -->
	<jsp:include page="answer.jsp" />
	
	<div style="margin-top:50px;" id="getout">
		<button id="end" onclick="finish_exam()" class="btn3_type1" style="width:80px;float:right;margin:15px;">
		<span>제출하기</span>
		</button>
		<button id="start" onclick="examClick()" class="btn3_type1" style="width:80px;float:right;margin:15px;">
		<span>다음 페이지</span>
		</button>
	</div>
		
</td>
</tr>
</table>
</body>
</html>