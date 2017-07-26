<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/customer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/client/base2017.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%
	String email = (String) session.getAttribute("email");
%>



<script>
	function insert() {
		var url;
		var nm = document.getElementById("client_nm").value;
		var bir = document.getElementById("client_bir").value;
		var ph2 = document.getElementById("moblie2").value;
		var ph3 = document.getElementById("moblie3").value;
		var kind = document.getElementById("client_consulting_kind").value;
		var title = document.getElementById("client_title").value;
		var content = document.getElementById("client_consulting_content").value;
		var agree1 = $(':input:radio[name=client_process_state]:checked').val();
		var agree2 = $(':input:radio[name=client_process_state2]:checked').val();
		
		
		if (nm == "") {
			alert("이름을 입력해주세요");
		} else if (bir == "") {
			alert("생년월일을 입력해주세요");
		} else if (ph2 == "" || ph3 == "") {
			alert("전화번호를 입력해주세요");
		} else if (kind == "") {
			alert("상담구분을 선택해주세요");
		} else if (title == "" || content == "") {
			alert("고민글을 작성해주세요");
		} else if (agree1 == "N" || agree1 == undefined) {
			alert("필수정보수집에 동의해주세요.")
		} else if (agree2 == undefined) {
			alert("정보수집에 동의 또는 동의하지않음을 선택해주세요");
		} else {
			switch(kind){
					case "1":
						url = "insert"+ kind;
					break;
					case "2":
						url = "insert"+ kind;
					break;
					case "3":
						url = "insert"+ kind;
					break;
					case "4":
						url = "insert"+ kind;
					break;
					case "5":
						url = "insert"+ kind;
					break;
					case "6":
						url = "insert"+ kind;
					break;
					case "7":
						url = "insert"+ kind;
					break;
					case "8":
						url = "insert"+ kind;
					break;
					case "9":
						url = "insert"+ kind;
					break;
					case "10":
						url = "insert"+ kind;
					break;
					case "11":
						url = "insert"+ kind;
					break;
				}	
		 	
			document.clientForm.method = "post";
			document.clientForm.action = url;
			document.clientForm.submit();
			alert('${message}');
			}
		}
</script>



<div id="container">
	<div class="Top">
		<h1 class="logo">
			<a href="main" class="hrd"> <img src="<%=request.getContextPath()%>/resources/client/images/logo.jpg"
				alt="알파넷" width="130px" height="100px" />
			</a> <a href="main" class="voc"> <img
				src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png" alt="알파넷 고객의 소리"
				style="margin-left: 80px;" />
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
					href="<%=request.getContextPath()%>/client/myPage?email=<%=email %>">마이페이지</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>

	<div class="sectionArea" style="height: 1080px;">

		<div id="snb">
			<h2>
				무엇이<br>궁금하십니까?
			</h2>
			<ul>
				<li><a href="question">자주하는 질문</a>
					<ul class="depth3MenuList" id="treeDiv" style="display: none;"></ul>
				</li>
				<li><a href="clientSound">고객의 소리</a></li>
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
		<script type="text/javascript">
			function checkemailaddy() {
				if (clientForm.selmail.value == '1') {
					clientForm.selmail2.readonly = false;
					clientForm.selmail2.value = '';
					clientForm.selmail2.focus();
				} else {
					clientForm.selmail2.readonly = true;
					clientForm.selmail2.value = clientForm.selmail.value;
				}
			}

			function juso_go() {
				var pop = window.open("juso", "pop",
						"width=570,height=420, scrollbars=yes, resizable=yes");
			}

			function jusoCallBack(roadAddrPart1, addrDetail, roadAddrPart2,
					zipNo) {
				// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
				document.clientForm.client_add1.value = roadAddrPart1;
				document.clientForm.client_add2.value = roadAddrPart2;
				document.clientForm.client_add3.value = addrDetail;
				document.clientForm.client_post_numb.value = zipNo;
			}

			function removeMent(text) {
				if (text.value == text.defaultValue) {
					text.value = "";
				}
			}

			function file_change(file) {
				var str = file.lastIndexOf("\\") + 1; //파일 마지막 "\" 루트의 길이 이후부터 글자를 잘라 파일명만 가져온다.
				file = file.substring(str, file.length);
				document.getElementsByName('client_attach_file')[0].value = file;
			}
		</script>

		<div class="content">
			<div class="title voice">
				<h3>고객의 소리</h3>
				<p>
					고객의 작은 소리도 크게 듣겠습니다.<br>비공개 신청 민원은 마이페이지에서 확인가능합니다.
				</p>
			</div>
			<div class="txt_title">
				<img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif" alt="필수">표시는 필수입력사항
				입니다.
			</div>
			<form id="form" name="clientForm" enctype="multipart/form-data">
				<table class="write">
					<tbody>
						<tr>
							<th width="80px"><img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif"
								alt="필수"> 성명</th>
							<td colspan="3"><input type="text" name="client_nm"
								id="client_nm" maxlength=""
								style="margin-right: 550px; margin-bottom: 3px"></td>
						</tr>
						<tr>
							<th style="margin-right: 100px;"><img
								src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif" alt="필수"> 생년월일</th>
							<td style="margin-left: 160px;"><input type="text"
								name="client_bir" id="client_bir" maxlength="15"
								style="margin-right: 550px; margin-bottom: 3px;"></td>

						</tr>
						<tr>
							<th width=""><img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif"
								alt="필수"> 연락처</th>
							<td colspan="3">
								<div style="margin-right: 180px; margin-bottom: 3px;">
									<select name="moblie1" id="moblie1">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select> &nbsp;-&nbsp; <input type="text" name="moblie2" id="moblie2"
										maxlength="4"> &nbsp;-&nbsp; <input type="text"
										name="moblie3" id="moblie3" maxlength="4"> &nbsp;( <input
										type="checkbox" name="noticeSms" id="noticeSms" value="Y">
									안내문자수신여부)
								</div>
							</td>
						</tr>
						<tr>
							<th>큐넷ID</th>
							<td colspan="3">
								<div style="margin-bottom: 3px; margin-right: 195px; width: 500">
									<input type="text" name="mem_code" id="mem_code"
										style="margin-right: 550px; margin: 0" value=""> <b>(※
										구체적인상담을 원하시면 아이디를 입력해주시길 바랍니다.)</b>
								</div>
							</td>
						</tr>
						<tr>
							<th>수험번호</th>
							<td colspan="3">
								<div
									style="margin-bottom: 3px; margin: 0; margin-right: 210px; width: 500px;">
									<input type="text" name="stare_code" id="stare_code" value="">
									<b>(※ 채점결과문의시 반드시수험번호를입력해주시길바랍니다.)</b>
								</div>
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td colspan="3">
								<div style="margin-right: 191px; margin-bottom: 3px;">
									<input type="text" name="mail" id="mail" maxlength=""
										class="w150"> @ <select name="selmail" id="selmail"
										onChange="checkemailaddy();">
										<option value="1" selected="">직접입력</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="naver.com">naver.com</option>
									</select> <input type="text" name="selmail2" id="selmail2" maxlength=""
										class="w200">
								</div>
							</td>
						</tr>
						<tr>
							<th>통보방법</th>
							<td colspan="3">
								<div style="margin-right: 400px">
									<input type="checkbox" name="EMAIL_RECV_YN" id="EMAIL_RECV_YN"
										value="Y"> 이메일 [답변 내용을 메일로 받으실 수 있습니다.]
								</div>
							</td>
						</tr>
						<tr>
							<th>우편번호</th>
							<td colspan="3">
								<div style="margin-right: 530px; margin-bottom: 3px;">
									<input type="text" name="client_post_numb"
										id="client_post_numb" maxlength="" class="w50"
										style="width: 70px;" readonly=""> <a href="#"
										onclick="juso_go()"> <img
										src="<%=request.getContextPath()%>/resources/client/images/btn_zipcode.gif" alt="우편번호검색"
										align="absmiddle">
									</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td colspan="3">
								<div style="margin-right: 110px; margin-bottom: 3px">
									<input type="text" name="client_add1" id="client_add1"
										maxlength="" class="w250" readonly=""> <input
										type="text" name="client_add2" id="client_add2" maxlength=""
										class="w300">
								</div> <input type="text" name="client_add3" id="client_add3"
								maxlength="" class="w250" readonly=""
								style="margin-right: 420px">
							</td>
						</tr>
					</tbody>
				</table>
				<table class="write">
					<tbody>
						<tr>
							<th width="80px"><img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif"
								alt="필수"> 유형구분</th>
							<td colspan="5">
								<div
									style="margin-right: 235px; margin-bottom: 3px; width: 360px">
									<input type="radio" name="client_type_di" id="CUST_RQ"
										onclick="javascript:setSuggest();" value="일반문의" class="radio"
										checked="">일반문의 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="client_type_di" id="CUST_RQ" value="불편불만"
										onclick="javascript:setSuggest();" class="radio">불편불만
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
										name="client_type_di" id="CUST_RQ" value="고객제안"
										onclick="javascript:setSuggest();" class="radio">고객제안
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
										name="client_type_di" id="CUST_RQ" value="고객칭찬"
										onclick="javascript:setSuggest();" class="radio">고객칭찬
								</div>
							</td>
						</tr>
						<tr>
							<th width="80px"><img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif"
								alt="필수"> 상담구분</th>
							<td colspan="5">
								<div style="float: left;" id="ACPT_BCD_DIV">
									<select name="client_consulting_kind"
										id="client_consulting_kind" style="width: 140"
										onchange="getAcptCdM();setAcptCd(this)">
										<option value="" title="유형선택">유형선택</option>
										<option value="1"  title="평생능력개발">평생능력개발</option>
										<option value="2" title="자격시험">자격시험</option>
										<option value="3" title="직업능력표준">직업능력표준</option>
										<option value="4" title="외국인고용지원">외국인고용지원</option>
										<option value="5" title="해외취업지원">해외취업지원</option>
										<option value="6" title="국제교류협력">국제교류협력</option>
										<option value="7" title="숙련기술장려">숙련기술장려</option>
										<option value="8" title="기능경기">기능경기</option>
										<option value="9" title="경영지원">경영지원</option>
										<option value="10" title="기타(일반)">기타(일반)</option>
										<option value="11" title="기타">기타</option>
									</select>
								</div>
								<div style="float: left;" id="ACPT_MCD_DIV"></div>
							</td>
						</tr>
						<tr>
							<th width="80px">공개여부</th>
							<td colspan="5">
								<div style="margin-right: 572px; margin-bottom: 3px;">
									<input type="radio" name="client_open_at" id="client_open_at"
										value="Y" class="radio">예
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
										name="client_open_at" id="client_open_at" value="N"
										class="radio" checked="">아니오
								</div> <strong style="margin-bottom: 3px;"><p>“비공개 신청 민원은
										마이페이지에서 확인가능합니다.”</p></strong>
							</td>
						</tr>
						<tr>
							<th><img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif" alt="필수">
								제목</th>
							<td colspan="5"><input type="text" name=client_title
								id="client_title" maxlength="" class="w580"
								style="margin-right: 102px"></td>
						</tr>
						<tr>
							<th width="80px"><img src="<%=request.getContextPath()%>/resources/client/images/ico_check.gif"
								alt="필수"> 내용</th>
							<td colspan="5"><textarea class="textarea"
									name="client_consulting_content" id="client_consulting_content"
									onclick="removeMent(this);" rows="14"
									style="width: 100%; height: 100px; word-break: break-word;">고객님의 소중한 문의사항에 친절히 답변 드리겠습니다. 
고객님의 질문은 고객지원팀에서 접수하여 일반문의 사항 7일, 채점 관련 문의사항은 10일 이내에 답변하여 드립니다.				
								</textarea></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="5">
								<table cellpadding="0" cellspacing="0" id="dynamic_table"
									border="1">
									<tbody>
										<tr>
											<td>
												<div style="margin-right: 260px;">
													<input type="text" name="client_attach_file" size="30" /> <input
														type="file" name="f"
														onchange="javascript:file_change(this.value);" size="40">
												</div>
											</td>
										</tr>
									</tbody>
								</table> 제한용량은 2MB입니다. <a href="javascript:addInputBox();"> <img
									src="<%=request.getContextPath()%>/resources/client/images/btn_add2.gif">
							</a> &nbsp; <a href="javascript:subtractInputBox();"> <img
									src="<%=request.getContextPath()%>/resources/client/images/btn_delete2.gif">
							</a>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
					<table class="agree">
						<tbody>
							<tr>
								<th><b>&lt;개인정보 수집 및 활용 동의&gt;</b></th>
							</tr>
							<tr>
								<td>공단은 고객상담 서비스 제공을 위하여 최초 서비스 이용 시 개인정보를 수집하고 있습니다.</td>
							</tr>
							<tr>
								<td><textarea class="textarea" rows="7" style="width: 98%"
										readonly="">개인정보 수집 및 이용 안내
	
	
1. 개인정보의 수집 및 이용 목적(개인정보보호법 제15조)
  한국산업인력공단 고객의 소리는 법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다.
  수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.
  ※ 관련근거: 민원사무 처리에 관한 법률 및 동법 시행령, 전자정부법 제9조(방문에 의하지 아니하는 민원처리), 제10조(민원인 등의 본인 확인)
	
  가. 민원사무 접수·처리·사후관리 서비스 제공
     민원신청서에 포함된 개인정보는 민원의 접수·처리 등 소관 업무 수행을 위해 한국산업인력공단에서 이용합니다.
  나. 타 시스템 이용
     민원사무의 전자적 처리를 위해 내부적으로 타 시스템 연계 및 이용 시 개인정보를 이용합니다.
  다. 고객의소리 서비스 향상
     고객의소리 서비스 향상 및 서비스 평가를 위하여 접수된 민원은 관계 법령에 따라 분석·평가 및 처리결과의 사후관리를 시행합니다.
	   
2. 수집하는 개인정보의 항목
  필수항목: 성명, 생년월일, 기본연락처
  선택항목: 주소, 이메일, 큐넷ID, 수험번호
  자동수집항목: IP(Internet Protocol)주소, 이용내용의 기록- 개인정보가 포함된 비공개 대상정보를 생성·수정·삭제·열람 시 관련 규정에 의하여 정보이용 내역들이 자동으로 수집되고 있습니다.
  ※ 관련근거: 행정기관 정보시스템 접근 권한 관리 규정(국무총리훈령 제601호)
	
3. 개인정보의 보유 및 이용기간
  한국산업인력공단 고객의 소리는 원칙적으로 개인정보 보존기간이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다.
  개인정보 보존기간 : 2년, 민원내용 보존기간 5년
  ※ 관련근거: 공공기록물 관리에 관한 법률 시행령 제26조(보존기간)
	
4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용
  민원 신청 시 수집하는 최소한의 정보 외에 개인정보 수집에 동의를 거부할 권리가 있으나 최소한의 개인정보 수집 동의 거부 시에는 민원 신청 서비스가 제한됩니다.
									</textarea></td>
							</tr>
							<tr>
								<td><b>민원신청시 수집하는 최소한의 정보 외에 개인정보수집에 동의를 거부 할 권리가 있으나,<br>최소한의
										개인정보수집 동의 거부시에는 민원 신청 서비스가 제한됩니다.
								</b></td>
							</tr>
						</tbody>
					</table>
					<table class="agree">
						<tbody>
							<tr>
								<td><span class="f_red">&lt;필수정보&gt; 성명, 생년월일, 연락처</span> <br>
									<span class="f_small">필수정보는 민원사무 처리를 위해서만 이용하며, 보관기간 경과
										후 즉시 파기합니다.</span></td>
							</tr>
							<tr>
								<td>
									<table class="agree_table">
										<tbody>
											<tr>
												<td width="400"><img src="<%=request.getContextPath()%>/resources/client/images/bu_02.gif"
													alt="">&nbsp;개인정보 수집 및 이용에 동의하십니까?</td>
												<td width="320"><input type="radio" class="radio"
													name="client_process_state" id="client_process_state"
													value="Y">동의함
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
													type="radio" class="radio" name="client_process_state"
													id="client_process_state2" value="N">동의하지 않음</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="agree">
						<tbody>
							<tr>
								<td class="f_red">&lt;선택정보&gt; 주소, 이메일, 큐넷ID, 수험번호</td>
							</tr>
							<tr>
								<td class="f_small">선택정보는 좀 더 정확한 답변 및 회신을 위해 필요합니다.</td>
							</tr>
							<tr>
								<td>
									<table class="agree_table">
										<tbody>
											<tr>
												<td width="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
													src="<%=request.getContextPath()%>/resources/client/images/bu_02.gif" alt="">&nbsp;선택적
													개인정보 수집 및 이용에 동의하십니까?
												</td>
												<td width="320"><input type="radio" class="radio"
													name="client_process_state2" id="client_process_state3"
													value="Y">동의함
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
													type="radio" class="radio" name="client_process_state2"
													id="client_process_state4" value="N">동의하지 않음</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn_area">
					<span id="spInsert">
						<button type="button" onclick="javascript:insert();">
							<img src="<%=request.getContextPath()%>/resources/client/images/btn_resister.gif" alt="등록">
						</button>
					</span>
					<button type=button onclick="javascript:goList();">
						<img src="<%=request.getContextPath()%>/resources/client/images/btn_cancel2.gif" alt="취소">
					</button>
				</div>
			</form>
		</div>
	</div>
</div>