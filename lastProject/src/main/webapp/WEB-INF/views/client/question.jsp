<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/client/base2017.css" />
<%
	String email =(String)session.getAttribute("email");
%>
<div id="container">
			<div class="Top">
				<h1 class="logo">
					<a href="main" class="hrd">
						<img src="<%=request.getContextPath() %>/resources/client/images/logo.jpg" alt="알파넷"  width="130px" height="100px">
					</a>
					<a href="main" class="voc">
						<img src="<%=request.getContextPath() %>/resources/client/images/voc_logo.png" alt="알파넷" style="margin-left: 80px;">
					</a>
				</h1>
				<div class="Quick_M">
				<ul class="Quick_Menu" style="margin-left: 250px">

				<li class="icon02"><a
					href="<%=request.getContextPath()%>/client/clientSound">고객의소리</a></li>
				<%
					if (email == null || email.equals("")) {
				%>
				<li class="icon04"><a
					href="<%=request.getContextPath()%>/client/auto">마이페이지</a></li>
				<%
					} else {
				%>
				<li class="icon04"><a
					href="<%=request.getContextPath()%>/client/myPage">마이페이지</a></li>
				<%
					}
				%>
			</ul>
				</div>
			</div>
			<div class="sectionArea">
				<div id="snb">
			<h2>
				무엇이<br>궁금하십니까?
			</h2>
			<ul>
				<li><a href="question">자주하는 질문</a>
					<ul class="depth3MenuList" id="treeDiv" style="display: none;"></ul>
				</li>
				<li><a href="clientSound">고객의 소리</a></li>
				<li><a href="question2">개선사항</a></li>
			</ul>

			<div class="subtelBox">
				<p class="tel">
					<span>전화</span><strong>1644 - 8000</strong>
				</p>
				<p class="tel_txt">
					09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외
				</p>
				<p class="tel_txt">문자상담은 40자 이내</p>
			</div>
		</div>
				<div class="content">
					<div class="title">
						<h3>자주하는 질문</h3>
						<p>궁금하신 내용을 검색해 주세요. <br>잘 살펴보시고 더 궁금한 점이 있으시면 문의하기를 이용해주세요.</p>	
					</div>
					<div class="contentSearchForm">
						<select name="searchGb" class="w100">
							<option value="" selected="selected">전체</option>
							<option value="T">제목</option>
							<option value="C">내용</option>
						</select>
						<span>
							<input type="text" id="searchWord" name="searchWord" maxlength="" value="">
						</span>
						<a href="javascript:search();" class="searchbtn">검색</a>
					</div>
				    <table style="width: 100%; ">
				    	<tbody><tr>
				    		<td>
				    			<div id="LIST_DIV" style="display: block;"><table id="LIST_TB" width="100%" class="table01" cellspacing="1" style="table-layout: fixed;"><tbody><tr><th class="colresize" style="cursor: col-resize;" width="30"><span onclick="">번호<span id="LIST_TH_SPAN_ID1"></span></span></th><th class="colresize" style="cursor: pointer;" width="100"><span onclick=""> 분류<span id="LIST_TH_SPAN_ID2"></span></span></th><th class="colresize" style="cursor: col-resize;" width=""><span onclick=""> 제목<span id="LIST_TH_SPAN_ID3"></span></span></th><th class="colresize" style="" width="120"><span onclick=""> 부서명<span id="LIST_TH_SPAN_ID4"></span></span></th><th class="colresize" style="" width="100"><span onclick=""> 등록일<span id="LIST_TH_SPAN_ID5"></span></span></th><th class="colresize" style="" width="40"><span onclick=""> 조회수<span id="LIST_TH_SPAN_ID6"></span></span></th></tr><tr id="LIST_TR_ID1" onmouseover="javascript:SELECTED_ROW_IDX[0] = 0 ;rOver(this.id, 0, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',0);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',0);" style="cursor:pointer" class=""><td width="30" align="center">1</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점위원] 채점결과가 이상합니다. 실력 없는 채점위원이 위촉된 것 아닌가요?  제 답안을 채점한 사람을 공개해주세요." style="padding-left: 10px; text-align: left;">[채점위원] 채점결과가 이상합니다. 실력 없는 채점위원이 위촉된 것 아닌가요?  제 답안을 채점한 사람을 공개해주세요.</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">618</td></tr><tr id="LIST_TR_ID2" onmouseover="javascript:SELECTED_ROW_IDX[0] = 1 ;rOver(this.id, 1, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',1);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',1);" style="cursor:pointer" class=""><td width="30" align="center">2</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점기준] 답안을 제출했는데도, 결과를 조회해보니 실격으로 나오는데 실격사유가 무엇인가요?" style="padding-left: 10px; text-align: left;">[채점기준] 답안을 제출했는데도, 결과를 조회해보니 실격으로 나오는데 실격사유가 무엇인가요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">284</td></tr><tr id="LIST_TR_ID3" onmouseover="javascript:SELECTED_ROW_IDX[0] = 2 ;rOver(this.id, 2, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',2);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',2);" style="cursor:pointer" class=""><td width="30" align="center">3</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점기준] 계산과정은 맞고 답이 틀린 경우 점수는 어떻게 주어지나요?" style="padding-left: 10px; text-align: left;">[채점기준] 계산과정은 맞고 답이 틀린 경우 점수는 어떻게 주어지나요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">190</td></tr><tr id="LIST_TR_ID4" onmouseover="javascript:SELECTED_ROW_IDX[0] = 3 ;rOver(this.id, 3, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',3);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',3);" style="cursor:pointer" class=""><td width="30" align="center">4</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점기준] 제가 생각한 부분점수 기준과 다른 것 같습니다. 부분점수의 기준은 무엇인가요?" style="padding-left: 10px; text-align: left;">[채점기준] 제가 생각한 부분점수 기준과 다른 것 같습니다. 부분점수의 기준은 무엇인가요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">224</td></tr><tr id="LIST_TR_ID5" onmouseover="javascript:SELECTED_ROW_IDX[0] = 4 ;rOver(this.id, 4, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',4);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',4);" style="cursor:pointer" class=""><td width="30" align="center">5</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점기준] 기술사 시험(기타 논술형 시험)에서 교시별 점수 차이가 심한데 채점을 하지 않은 문항이 있는건 아닌가요?  채점위원별 점수를 알수 있나요?  제 답안지를 열람할 수 있나요?" style="padding-left: 10px; text-align: left;">[채점기준] 기술사 시험(기타 논술형 시험)에서 교시별 점수 차이가 심한데 채점을 하지 않은 문항이 있는건 아닌가요?  채점위원별 점수를 알수 있나요?  제 답안지를 열람할 수 있나요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">65</td></tr><tr id="LIST_TR_ID6" onmouseover="javascript:SELECTED_ROW_IDX[0] = 5 ;rOver(this.id, 5, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',5);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',5);" style="cursor:pointer" class=""><td width="30" align="center">6</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[재채점] 제가 채점한 점수와 차이가 납니다. 채점이 잘못된 것 아닌가요? 학원이나 카페에 올라온 답안으로 채점한 결과는 합격인데 불합격처리 되었습니다. 이유가 무엇인가요?" style="padding-left: 10px; text-align: left;">[재채점] 제가 채점한 점수와 차이가 납니다. 채점이 잘못된 것 아닌가요? 학원이나 카페에 올라온 답안으로 채점한 결과는 합격인데 불합격처리 되었습니다. 이유가 무엇인가요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">204</td></tr><tr id="LIST_TR_ID7" onmouseover="javascript:SELECTED_ROW_IDX[0] = 6 ;rOver(this.id, 6, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',6);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',6);" style="cursor:pointer" class=""><td width="30" align="center">7</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점기준] 답을 연필(유색펜)로 작성했습니다. 어떻게 처리되나요?  답안의 일부만 연필로 작성한 경우에 부분점수라도 받을 수 있나요?" style="padding-left: 10px; text-align: left;">[채점기준] 답을 연필(유색펜)로 작성했습니다. 어떻게 처리되나요?  답안의 일부만 연필로 작성한 경우에 부분점수라도 받을 수 있나요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">137</td></tr><tr id="LIST_TR_ID8" onmouseover="javascript:SELECTED_ROW_IDX[0] = 7 ;rOver(this.id, 7, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',7);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',7);" style="cursor:pointer" class=""><td width="30" align="center">8</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[합격확인] 합격자 결정기준이 무엇인가요? 합격인원을 정해놓고 채점하여 조정한다는데 사실인가요? 합격자 발표전에 합격여부를 알고 싶습니다. 가능한가요?" style="padding-left: 10px; text-align: left;">[합격확인] 합격자 결정기준이 무엇인가요? 합격인원을 정해놓고 채점하여 조정한다는데 사실인가요? 합격자 발표전에 합격여부를 알고 싶습니다. 가능한가요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">238</td></tr><tr id="LIST_TR_ID9" onmouseover="javascript:SELECTED_ROW_IDX[0] = 8 ;rOver(this.id, 8, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',8);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',8);" style="cursor:pointer" class=""><td width="30" align="center">9</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[채점기준] 계산식 문제에도 부분점수가 있나요? 단위를 쓰지 않았는데, 틀린건가요? 여백란에 계산식을 기재했습니다. 어떻게 처리되나요?" style="padding-left: 10px; text-align: left;">[채점기준] 계산식 문제에도 부분점수가 있나요? 단위를 쓰지 않았는데, 틀린건가요? 여백란에 계산식을 기재했습니다. 어떻게 처리되나요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">154</td></tr><tr id="LIST_TR_ID10" onmouseover="javascript:SELECTED_ROW_IDX[0] = 9 ;rOver(this.id, 9, LIST_DIV,0);" onmouseout="javascript:rOut(this.id,0);" onclick="javascript:changeClass(this.id, LIST_DIV,0);tableClickEvent('LIST_ON_CLICK',9);" ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',9);" style="cursor:pointer" class=""><td width="30" align="center">10</td><td class="c_align ellipsis">자격시험</td><td class="c_align ellipsis" title="[재채점] 채점결과가 이상합니다. 재채점 가능한가요? 이의신청을 하면 채점위원이 다시 채점해주시는 건가요?" style="padding-left: 10px; text-align: left;">[재채점] 채점결과가 이상합니다. 재채점 가능한가요? 이의신청을 하면 채점위원이 다시 채점해주시는 건가요?</td><td class="c_align ellipsis">채점팀</td><td class="c_align ellipsis">2017-06-22</td><td class="c_align ellipsis">258</td></tr></tbody></table></div>
				    		</td>
				    	</tr>
					</tbody></table>
					<table style="width: 100%; ">
						<tbody><tr>
							<td>
								<div id="LIST_PAGE_DIV">	<table border="0" width="100%" height="21" align="center" style="background-color:white"><colgroup><col width="45px"><col width="40px"><col width="%"><col width="40px"></colgroup><tbody><tr><td height="5"></td></tr><tr align="center"><td><a href="#" onfocus="this.blur();"><img src="/common/images/common/bod_btn_prev2.gif" width="16" height="15" style="margin-right:5px" align="absmiddle" alt="처음"></a><a href="#" onfocus="this.blur();"><img src="/common/images/common/bod_btn_prev.gif" width="16" height="15" align="absmiddle" style="margin-right:5px" alt="이전"></a>&nbsp;<a href="#" onfocus="this.blur();"><font color="#0876D0"><span id="pageSpan1">[1]</span></font></a><a href="#" onclick="javascript:reverseAscDesc(0);REQ_PAGE[0]=2;reqFaqList(10, 2); " onfocus="this.blur();"><span id="pageSpan2">[2]</span></a><a href="#" onclick="javascript:reverseAscDesc(0);REQ_PAGE[0]=3;reqFaqList(10, 3); " onfocus="this.blur();"><span id="pageSpan3">[3]</span></a><a href="#" onclick="javascript:reverseAscDesc(0);REQ_PAGE[0]=4;reqFaqList(10, 4); " onfocus="this.blur();"><span id="pageSpan4">[4]</span></a><a href="#" onclick="javascript:reverseAscDesc(0);REQ_PAGE[0]=5;reqFaqList(10, 5); " onfocus="this.blur();"><span id="pageSpan5">[5]</span></a>&nbsp;<a href="#" onclick="javascript:reverseAscDesc(0);reqNextPage(0);reqFaqList(10, 6); " onfocus="this.blur();"><img src="/common/images/common/bod_btn_next.gif" width="16" height="15" align="absmiddle" style="margin-left:5px" alt="다음"></a>&nbsp;<a href="#" onclick="javascript:reverseAscDesc(0);reqLastPage(0,13);reqFaqList(10, 61);" onfocus="this.blur();"><img src="/common/images/common/bod_btn_next2.gif" width="16" height="15" align="absmiddle" alt="마지막"></a><font color="gray">&nbsp;&nbsp;[ 전체 : 622 건 ]&nbsp;</font></td></tr></tbody></table></div>
							</td>
						</tr>
					</tbody></table>
				</div>
			</div>
		</div>