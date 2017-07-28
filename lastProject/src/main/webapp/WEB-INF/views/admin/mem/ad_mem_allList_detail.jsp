<%@page import="com.last.common.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@page import="java.io.File"%>
<%@page import="org.springframework.web.multipart.MultipartRequest"%>
<script type="text/javascript" src="../resources/js/member.js"></script>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link
	href="<%=request.getContextPath()%>/resources/images/main/HRDKorea_favicon_16x16.ico"
	rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/left_menu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/content.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header_footer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/mobile.css">
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js'></script>

<style>
	* {	box-sizing: content-box;}
	
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:midd..le; letter-spacing:-1px; font-weight:bold}
	.searchType span:first-child label {margin-left:0}
	.searchType select {width:107px; margin-right:40px}
	.searchType input[type="text"] {background:#f9f9f9}
	.searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
	.searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
	.content > .searchType {padding-top:0}
	.searchType.txt_left > span {zoom:1}
	.searchType.txt_left > span:after {content:''; display:block; clear:both}
	.searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
	.searchType.txt_left > span > select {float:left}
	.searchType.txt_left > span > select.last {width:130px; margin-right:5px}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
	
</style>

<c:set var="vo" value="${vo}" />
<script>
	function allMemberList(){ //목록으로 돌아가기
		location.href="<%=request.getContextPath()%>/admin/allmem";
	}
</script>
<input type="hidden" id="mem_kor_for" value="${vo.mem_kor_for}"/>
<input type="hidden" id="mem_gender" value="${vo.mem_gender}"/>
<input type="hidden" id="mem_jang" value="${vo.mem_jang}"/>
<input type="hidden" id="mem_email_agree" value="${vo.mem_email_agree}"/>
<script>
	//외국인 내국인
	$(function(){
		var mem_kor_for = $('#mem_kor_for').val();
		
		if(mem_kor_for==="F"){
			$("#foreignerN").prop('checked',false);	
			$("#foreignerY").prop('checked',true);
		}
	});
	
	//성별
	$(function(){
		var mem_gender = $('#mem_gender').val();
		if(mem_gender=="남자"){
			$("#member_sex2").prop('checked',false);
			$("#member_sex1").prop('checked',true);
		}
	});
	
	//장애여부
	$(function(){
		var mem_jang = $('#mem_jang').val();
		if(mem_jang=="Y"){
			$("#member_dis1").prop('checked',false);
			$("#member_dis2").prop('checked',true);
		}
	});
	
	//이메일 수신여부
	$(function(){
		var mem_email_agree = $('#mem_email_agree').val();
		if(mem_email_agree=="N"){
			$("#member_mail1").prop('checked',false);
			$("#member_mail2").prop('checked',true);
		}
	});
	
	
</script>

<div id="page-wrapper">
		<div id="page-inner">
		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- 주소검색팝업 -->
			<div id="addrPopup_view" class="popup"></div>
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">회원상세정보</h3>
				<!-- //컨텐츠 타이틀 -->
				<form name="regMEM">
				<fieldset>
				<div class="tbl_join tbl_member mb0">								
					<table summary="개인정보수정으로, 회원이 가입 시 기입했던 개인 정보제공">
						<colgroup>
								<col width="130px">
								<col width="220px">
								<col width="130px">
								<col width="136px">
								<col width="134px">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="member_id">아이디</label> <strong class="fc_r" title="필수">*</strong></th>
								<td colspan="3">
									<input type="text" id="member_id" name="memId" class="form_mid" value="${vo.id}" readonly="readonly">
									<a href="#" class="btn btncolor2"><span>실명인증 회원입니다.</span></a>
								</td>
								<td rowspan="9" class="photo" id="memberPhoto">
									<p>
										<img id="viewImg" src="<%=request.getContextPath()%>/resources/upload/image/${vo.mem_photo}" width="120" height="160"><!-- //사진에 대한 대체텍스트 필요. 2014.12.08 접근성 -->
									</p>
									<div class="regi">
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row">생년월일</th>
								<td colspan="3">
									${vo.mem_bir}
									<span class="txt_add">(법정생년월일 6자리)</span>
								</td>
							</tr>

							<tr>
								<th scope="row">
									내국인 / 외국인 <strong class="fc_r" title="필수">*</strong>
								</th>
								<td colspan="3">
									<div class="group_form1">
										<span>	
											<input type="radio" id="foreignerN" name="foreignerYnCcd01" checked>
											<label for="foreignerN">내국인</label>
										</span>
										<span>
											<input type="radio" id="foreignerY" name="foreignerYnCcd01" >
											<label for="foreignerY">외국인</label>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">
									성 별 <strong class="fc_r" title="필수">*</strong>
								</th>
								<td colspan="3">
									<div class="group_form1">
										<span>
											<input type="radio" id="member_sex1" name="sexGubun01">
											<label for="member_sex1">남자</label>
										</span>
										<span>
											<input type="radio" id="member_sex2" name="sexGubun01" checked>
											<label for="member_sex2">여자</label>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">이 름<strong class="fc_r" title="필수">*</strong></th>
								<td colspan="3">${vo.name}</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="member_name_e">이 름(영문)</label>
								</th>
								<td colspan="3">
									<input type="text" id="mem_enName" name="mem_enName" class="form_mid" value="${vo.mem_enName} " readonly="readonly">
									<span class="txt_add">(여권과 동일하게 입력)</span>
								</td>
							</tr>
							
							<tr>
								<th scope="row">
									장애여부 
								</th>
								<td colspan="4">
									<div class="group_form1">
										<span>
											<input type="radio" title="장애여부" id="member_dis1" name="dsdrGb00">
											<label for="member_dis1">예</label>
										</span>
										<span>
											<input type="radio" title="장애여부" id="member_dis2" name="dsdrGb00" checked>
											<label for="member_dis2">아니요</label>
										</span>
										<span id="dsdrGb01" class="ml40" style="display:none">
											<label for="select2">장애구분</label>
											<select name="dsdrGb01" title="장애유형 선택" class="input ml5 w350" id="select2">
												<option value="">- 선택하세요 -</option>

												<option value="1">시각장애인</option>

												<option value="10">기타 의료기관장이 인정한 장애(과민성 대장증후군 및 과민성 방광증후군 등)</option>

												<option value="11">상지지체장애인</option>

												<option value="12">하지지체장애인</option>

												<option value="13">기타 (임신부)</option>

												<option value="2">청각장애인</option>

												<option value="3">지체장애인</option>

												<option value="4">뇌병변장애인</option>

												<option value="5">배설장기장애</option>

												<option value="6">틱장애 및 간질장애인</option>

												<option value="7">신장장애인</option>

												<option value="8">심장장애인</option>

												<option value="9">장루/요루장애인</option>

											</select>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="member_mail_add"> 이메일 <strong class="fc_r" title="필수">*</strong></label>
								</th>
								<td>
									<input type="text" class="join_email" id="mem_email" name="mem_email" value="${vo.mem_email}" readonly="readonly">
								</td>
								<th scope="row" class="txt_center">
									이메일 수신여부 
								</th>
								<td colspan="2">
									<div class="group_form1">
										<span>
											<input type="radio" id="member_mail1" name="emailRecvYn01" checked>
											<label for="member_mail1">예</label>
										</span>
										<span>
											<input type="radio" id="member_mail2" name="emailRecvYn01">
											<label for="member_mail2">아니요</label>
										</span>
									</div>
									<strong class="info_tool" title="공단에서는 자격정보, 시험일정 등의 정보를 이메일로 제공하오니 동 서비스를 받고자 하시는 분은  '예'를 선택 하시기 바랍니다." tabindex="0">수신여부 상세내용</strong>
								</td>
							</tr>
							<tr>
								<th scope="row">
									전화번호
								</th>
								<td colspan="4">
									<label for="member_phone" class="txt_phone">연락가능한 전화번호</label>
									<select id="phone1" name="phone1" class="form_short" title="전화번호 첫번째 자리" >
										<option value="0">선택</option>
										<option value="02">02</option>
										<option value="031">031</option>
										<option value="032">032</option>
										<option value="033">033</option>
										<option value="041">041</option>
										<option value="042">042</option>
										<option value="043">043</option>
										<option value="044">044</option>
										<option value="051">051</option>
										<option value="052">052</option>
										<option value="053">053</option>
										<option value="054">054</option>
										<option value="055">055</option>
										<option value="061">061</option>
										<option value="062">062</option>
										<option value="063">063</option>
										<option value="064">064</option>
										<option value="070">070</option>
										<option value="0502">0502</option>
									</select>
									<span>-</span>

								<c:set var="phone" value="${vo.mem_phone} "></c:set>
									<input type="text" name="phone2" class="form_short numInput" value=" ${fn:substring(phone,4,8)}" title="전화번호 가운데 자리" maxlength="4" readonly="readonly">
									<span>-</span>
									<input type="text" name="phone3" class="form_short numInput" title="전화번호 마지막 자리" value="${fn:substring(phone,9,13)}"  vamaxlength="4" readonly="readonly">
								</td>
							</tr>
							<tr>
								<th scope="row">
									이동전화
								</th>
								<td colspan="4">
									<label for="member_mobile" class="txt_phone">이동전화 번호</label>
									<select id="member_mobile" name="phone1_1" class="form_short" title="핸드폰번호 첫번째 자리">
										<option value="0">선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
									<span>-</span>
									<input type="text" name="phone1_2" class="form_short numInput" title="핸드폰번호 가운데 자리" maxlength="4" onkeyup="nextFocus('regMEM', 'mPhone02', 'mPhone03');">
									<span>-</span>
									<input type="text" name="phone1_3" class="form_short numInput" title="핸드폰번호 마지막 자리" maxlength="4">
								</td>
							</tr>
							<tr>
								<th scope="row">
									알림서비스
								</th>
								<td colspan="4">
									<div class="group_form1">
										<span>
											<input type="radio" id="member_ser1" name="smsSvc001">
											<label for="member_ser1">예</label>
										</span>
										<span>
											<input type="radio" id="member_ser2" name="smsSvc001" checked>
											<label for="member_ser2">아니요</label>
										</span>
									</div>
									<strong class="info_tool" title="시험장소 ,합격자 등을 sms/알림톡 등으로 알려주는 서비스를 원하시는 고객님께서는 큐넷 개인정보에서 본인 핸드폰번호 확인 및 알림서비스 항목을 '예'로 체크해 주셔야 메세지를 정상 수신하실수 있습니다.(메세지 수신시 별도 데이터 이용료 발생할 수 있음)" tabindex="0">알림서비스 상세내용</strong>
								</td>
							</tr>
							<tr>
								<th scope="row" rowspan="3">
									주민등록 거주지 <strong class="fc_r" title="필수">*</strong>
								</th>
								<td colspan="4">
									<label for="zip01" class="txt_addr">우편번호 입력</label> 
									<input type="text" id="mem_post_numb1" name="mem_post_numb1" class="form_short numInput" readonly="readonly" title="우편번호" maxlength="5" value="${vo.mem_post_numb1}">
									
									<button type="button" class="btn3_type1" name="addrPop" id="01" onclick="go_pop();"><span>주소검색</span></button>
									
									<strong class="info_tool" title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다. " tabindex="0">주소입력방법 안내</strong>
								</td>
							</tr>

							<tr>
								<td colspan="4">
									<label for="addr01" class="txt_addr">주소</label>
									<input type="text" style="width: 414px;" id="mem_add1" name="mem_add1" class="member_addr1" readonly="readonly" value="${vo.mem_add1 }">

								</td>
							</tr>
							<tr>
								<td colspan="4">
									<label for="addr02" class="txt_addr">나머지 주소 입력</label>
									<input type="text" id="mem_add2" name="mem_add2" class="member_addr3" value="${vo.mem_add2 }">
									<input type="hidden" name="gibunResdAddr" id="gibunResdAddr" value="대전광역시 서구 복수동">
								</td>
							</tr>
							<tr>
								<th scope="row" rowspan="3">
									<div class="option">
										<label for="addr_same">(상동)</label>
										<input type="checkbox" id="addr_same" name="addrChk">
									</div>
									실제 거주지 <strong class="fc_r" title="필수">*</strong>
								</th>
								<td colspan="4">
									<label for="dZip01" class="txt_addr">우편번호 입력</label>
									<input type="text" id="mem_post_numb2" name="mem_post_numb2" class="form_short numInput" readonly="readonly" title="우편번호" maxlength="5" value="${vo.mem_post_numb2}">
									
									<button type="button" class="btn3_type1" name="addrPop" id="02" onclick="go_pop2()"><span>주소검색</span></button>
									
									<strong class="info_tool" title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다." tabindex="0">주소입력방법 안내</strong>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<label for="dAddr01" class="txt_addr">주소</label>
									<input type="text" style="width: 414px;" id="mem_add3" name="mem_add3" class="member_addr1" readonly="readonly" value="${vo.mem_add3}">

								</td>
							</tr>
							<tr>
								<td colspan="4">
									<label for="dAddr02" class="txt_addr">나머지 주소 입력</label>
									<input type="text" id="mem_add4" name="mem_add4" class="member_addr3" value="${vo.mem_add4}">
									<input type="hidden" name="gibunAbdAddr" id="gibunAbdAddr" value="대전광역시 서구 복수동 ">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				</fieldset>
				</form>
				<p class="txt_right">
						<input type="submit" class="btn btncolor1" value="목록"
							style="color: #ffffff" onclick="allMemberList()"/> 
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
	</div>
	</div>
