<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
	
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
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
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
	<jsp:include page="mypageLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>마이페이지</li>
					<li>개인정보관리</li>
					<li><strong>개인정보수정</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<!-- 주소검색팝업 -->
			<div id="addrPopup_view" class="popup"></div>
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">개인정보수정</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<!-- 입력 테이블  시작-->
				<form name="regMEM" method="post" action="https://www.q-net.or.kr/myp001.do?id=myp00103&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend>개인정보수정 폼</legend>
				<input name="memIdChkYn" id="memIdChkYn" type="hidden" value="N">
				<input name="jumin01" type="hidden" value="920218">
				<input name="jumin" type="hidden" value="">
				<input name="picRegYnCcd" type="hidden" value="N">
				<input name="strUploadFileName" type="hidden" value="20170710155806_01096">
				<input name="foreignerYnCcd" id="foreignerYnCcd" type="hidden" value="N">
				<input name="sexGubun" id="sexGubun" type="hidden" value="1">
				<input name="pwdHintDes" type="hidden">
				<input name="emailRecvYn" id="emailRecvYn" type="hidden" value="Y">
				<input name="smsSvc" id="smsSvc" type="hidden" value="Y">
				<input name="dsdrGb" type="hidden" value="N">
				<input name="dsdrGbSel01" type="hidden">
				<input name="dsdrGbSel02" type="hidden">
				<input name="clientIp" type="hidden" value="1.212.157.150">
				<input name="UploadFileCheck" id="UploadFileCheck" type="hidden" value="Y"> 
				<input name="userNm" type="hidden" value="김재현">
				<input name="idChgYn" type="hidden" value="Y">
				
				<input type="hidden" name="PIC_USE_POSBT_YN" id="PIC_USE_POSBT_YN">
				<input type="hidden" name="PIC_USE_POSBT_MSG" id="PIC_USE_POSBT_MSG">
				<input type="hidden" name="ACCU_RATE" id="ACCU_RATE" value="100">
				
				<div class="tbl_join tbl_member mb0">								
					<p class="txt_right"><strong>( <span class="fc_r" title="필수">*</span> ) 필수 입력사항입니다.</strong></p>
					<table summary="개인정보수정으로, 회원이 가입 시 기입했던 개인 정보제공">
						<caption>개인정보수정</caption>
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

									<input type="text" id="member_id" name="memId" class="form_mid" value="ghs0218" readonly="readonly">


									<a href="#" class="btn btncolor2"><span>실명인증 회원입니다.</span></a>

								</td>
								<td rowspan="9" class="photo">
									<p>
<!-- 										<img id="viewImg" src="/common/loadimg.do?div=M" width="120" height="160">//사진에 대한 대체텍스트 필요. 2014.12.08 접근성 -->
										<img id="viewImg" src="<%=request.getContextPath()%>/resources/images/step/sora.jpg" width="120" height="160"><!-- //사진에 대한 대체텍스트 필요. 2014.12.08 접근성 -->
									</p>
									<div class="regi">
										<button type="button" class="btn3_type2" onclick="openFileDialog();" title="파일첨부"><span>사진등록</span></button>
										
										<!-- <button type="button" class="btn3_type2"><span>사진등록</span></button> -->
										<span>자격증 발급용 사진은 <br>자격증 발급 신청 시 등록</span>
										<p>본인 사진이 아닌 비정상적인 <br>사진(타인, 동물, 확인이 불가능한 사진등)을 등록할 경우 <span class="fc_r">시험응시에 불이익</span>을 당할 수 있습니다.</p>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row">생년월일</th>
								<td colspan="3">
									<label for="birth_yy" class="birthSel"></label><select id="birth_yy" name="birth_yy" title="법정생년월일 년도" style="width:71px" disabled="disabled"><option value="" selected="selected">년도</option><option value="17">2017</option><option value="16">2016</option><option value="15">2015</option><option value="14">2014</option><option value="13">2013</option><option value="12">2012</option><option value="11">2011</option><option value="10">2010</option><option value="09">2009</option><option value="08">2008</option><option value="07">2007</option><option value="06">2006</option><option value="05">2005</option><option value="04">2004</option><option value="03">2003</option><option value="02">2002</option><option value="01">2001</option><option value="00">2000</option><option value="99">1999</option><option value="98">1998</option><option value="97">1997</option><option value="96">1996</option><option value="95">1995</option><option value="94">1994</option><option value="93">1993</option><option value="92">1992</option><option value="91">1991</option><option value="90">1990</option><option value="89">1989</option><option value="88">1988</option><option value="87">1987</option><option value="86">1986</option><option value="85">1985</option><option value="84">1984</option><option value="83">1983</option><option value="82">1982</option><option value="81">1981</option><option value="80">1980</option><option value="79">1979</option><option value="78">1978</option><option value="77">1977</option><option value="76">1976</option><option value="75">1975</option><option value="74">1974</option><option value="73">1973</option><option value="72">1972</option><option value="71">1971</option><option value="70">1970</option><option value="69">1969</option><option value="68">1968</option><option value="67">1967</option><option value="66">1966</option><option value="65">1965</option><option value="64">1964</option><option value="63">1963</option><option value="62">1962</option><option value="61">1961</option><option value="60">1960</option><option value="59">1959</option><option value="58">1958</option><option value="57">1957</option><option value="56">1956</option><option value="55">1955</option><option value="54">1954</option><option value="53">1953</option><option value="52">1952</option><option value="51">1951</option><option value="50">1950</option><option value="49">1949</option><option value="48">1948</option><option value="47">1947</option><option value="46">1946</option><option value="45">1945</option><option value="44">1944</option><option value="43">1943</option><option value="42">1942</option><option value="41">1941</option><option value="40">1940</option><option value="39">1939</option><option value="38">1938</option><option value="37">1937</option><option value="36">1936</option><option value="35">1935</option><option value="34">1934</option><option value="33">1933</option><option value="32">1932</option><option value="31">1931</option><option value="30">1930</option><option value="29">1929</option><option value="28">1928</option><option value="27">1927</option><option value="26">1926</option><option value="25">1925</option><option value="24">1924</option><option value="23">1923</option><option value="22">1922</option><option value="21">1921</option><option value="20">1920</option><option value="19">1919</option><option value="18">1918</option></select>
									<label for="birth_mm" class="birthSel"></label><select id="birth_mm" name="birth_mm" title="법정생년월일 월" style="width:59px" disabled="disabled"><option value="" selected="">월</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
									<label for="birth_dd" class="birthSel"></label><select id="birth_dd" name="birth_dd" title="법정생년월일 일" style="width:59px" disabled="disabled"><option value="" selected="">일</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
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
											<input type="radio" id="foreignerN" name="foreignerYnCcd01" disabled="">
											<label for="foreignerN">내국인</label>
										</span>
										<span>
											<input type="radio" id="foreignerY" name="foreignerYnCcd01" disabled="">
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
											<input type="radio" id="member_sex1" name="sexGubun01" disabled="">
											<label for="member_sex1">남자</label>
										</span>
										<span>
											<input type="radio" id="member_sex2" name="sexGubun01" disabled="">
											<label for="member_sex2">여자</label>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">이 름<strong class="fc_r" title="필수">*</strong></th>
								<td colspan="3">김재</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="member_name_e">이 름(영문)</label>
								</th>
								<td colspan="3">
									<input type="text" id="member_name_e" name="userEng" class="form_mid">
									<span class="txt_add">(여권과 동일하게 입력)</span>
								</td>
							</tr>
							
							<tr>
								<th scope="row">
									<label for="member_pw">비밀번호</label> <!-- <strong class="fc_r" title="필수">*</strong> -->
								</th>
								<td colspan="3">
									<input type="password" class="form_mid" id="member_pw" name="newPwd" maxlength="16">
									<span class="txt_add">(변경하는 경우만 입력)</span>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="member_pw_c">비밀번호 확인</label> <!-- <strong class="fc_r" title="필수">*</strong> -->
								</th>
								<td colspan="3">
									<input type="password" class="form_mid mr5" id="member_pw_c" name="newPwdChk" maxlength="16">
									<strong class="info_tool ml5" title="비밀번호 조합예시 : korea123@ 입력가능 특수문자 : ! @ # $ % ^ &amp; * (보안지침에 의거하여 비밀번호는 9~16자리이며, 반드시 영문자·숫자·특수문자를 모두 혼합하여 입력하시기 바랍니다. 대소문자 구분되므로 주의!)" tabindex="0">비밀번호 유의사항</strong>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="member_pw_q">비밀번호 질문</label> <strong class="fc_r" title="필수">*</strong>
								</th>
								<td colspan="3">
									<select id="member_pw_q" name="pwHnt" title="비밀번호 답변" class="member_pw_q">
										<option value="">- 선택하세요 -</option><option value="가장 많이 이용하는 교통수단은?">가장 많이 이용하는 교통수단은?</option><option value="가장 친한 친구의 이름은?">가장 친한 친구의 이름은?</option><option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option><option value="당신의 별명은?">당신의 별명은?</option><option value="당신의 신발사이즈는?">당신의 신발사이즈는?</option><option value="당신이 가장 좋아하는 동물은?">당신이 가장 좋아하는 동물은?</option><option value="당신이 가장 좋아하는 색깔은?">당신이 가장 좋아하는 색깔은?</option><option value="어머니의 고향은 어디일까요?">어머니의 고향은 어디일까요?</option><option value="제일 좋아하는 연예인은?">제일 좋아하는 연예인은?</option><option value="가장 좋아하는 음식은?">가장 좋아하는 음식은?</option><option value="첫사랑의 이름은?">첫사랑의 이름은?</option><option value="애완동물 이름은?">애완동물 이름은?</option><option value="출신 초등학교는?">출신 초등학교는?</option><option value="출신 중학교는?">출신 중학교는?</option><option value="출신 고등학교는?">출신 고등학교는?</option><option value="가장 좋아하는 색깔은?">가장 좋아하는 색깔은?</option><option value="어릴적 짝꿍이름은?">어릴적 짝꿍이름은?</option><option value="좋아하는 스포츠는?">좋아하는 스포츠는?</option><option value="사용안함">사용안함</option>
									</select>
									<span class="txt_add">(서비스 이용시 질문을 선택해주세요.)</span>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="member_pw_a">비밀번호 답변</label> <strong class="fc_r" title="필수">*</strong>
								</th>
								<td colspan="4">
									<input type="text" id="member_pw_a" name="pwHntAns" class="member_pw_a">
									<span class="txt_add">(비밀번호 분실시 사용됩니다. 질문의 답변을 잘 기억해 두세요.)</span><br>
									<span class="txt_add">(안전한 답변 작성 예시 : 걸어다닙니다.(서술형))</span>
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
											<input type="radio" title="장애여부" id="member_dis2" name="dsdrGb00">
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
									<input type="text" class="join_email" id="member_mail_add" name="email">
								</td>
								<th scope="row" class="txt_center">
									이메일 수신여부 <!-- <strong class="fc_r" title="필수">*</strong> -->
								</th>
								<td colspan="2">
									<div class="group_form1">
										<span>
											<input type="radio" id="member_mail1" name="emailRecvYn01">
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
									<select id="member_phone" name="phone01" class="form_short" title="전화번호 첫번째 자리">
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
									<input type="text" name="phone02" class="form_short numInput" title="전화번호 가운데 자리" maxlength="4">
									<span>-</span>
									<input type="text" name="phone03" class="form_short numInput" title="전화번호 마지막 자리" maxlength="4">
									<span class="txt_add">(예 : 02-111-1111)</span>
								</td>
							</tr>
							<tr>
								<th scope="row">
									이동전화
								</th>
								<td colspan="4">
									<label for="member_mobile" class="txt_phone">이동전화 번호</label>
									<select id="member_mobile" name="mPhone01" class="form_short" title="핸드폰번호 첫번째 자리">
										<option value="0">선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
									<span>-</span>
									<input type="text" name="mPhone02" class="form_short numInput" title="핸드폰번호 가운데 자리" maxlength="4" onkeyup="nextFocus('regMEM', 'mPhone02', 'mPhone03');">
									<span>-</span>
									<input type="text" name="mPhone03" class="form_short numInput" title="핸드폰번호 마지막 자리" maxlength="4">
									<span class="txt_add">(예 : 010-1111-1111)</span>
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
											<input type="radio" id="member_ser2" name="smsSvc001">
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
									<input type="text" id="zip01" name="zip01" class="form_short numInput" readonly="readonly" title="우편번호" maxlength="5">
									
									<button type="button" class="btn3_type1" name="addrPop" id="01"><span>주소검색</span></button>
									
									<strong class="info_tool" title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다. " tabindex="0">주소입력방법 안내</strong>
								</td>
							</tr>

							<tr>
								<td colspan="4">
									<label for="addr01" class="txt_addr">주소</label>
									<input type="text" style="width: 414px;" id="addr01" name="addr01" class="member_addr1" readonly="readonly">

								</td>
							</tr>
							<tr>
								<td colspan="4">
									<label for="addr02" class="txt_addr">나머지 주소 입력</label>
									<input type="text" id="addr02" name="addr02" class="member_addr3" value="1동 1호">
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
									<input type="text" id="dZip01" name="dZip01" class="form_short numInput" readonly="readonly" title="우편번호" maxlength="5">
									
									<button type="button" class="btn3_type1" name="addrPop" id="02"><span>주소검색</span></button>
									
									<strong class="info_tool" title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다." tabindex="0">주소입력방법 안내</strong>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<label for="dAddr01" class="txt_addr">주소</label>
									<input type="text" style="width: 414px;" id="dAddr01" name="dAddr01" class="member_addr1" readonly="readonly">

								</td>
							</tr>
							<tr>
								<td colspan="4">
									<label for="dAddr02" class="txt_addr">나머지 주소 입력</label>
									<input type="text" id="dAddr02" name="dAddr02" class="member_addr3" value="1동 1호">
									<input type="hidden" name="gibunAbdAddr" id="gibunAbdAddr" value="대전광역시 서구 복수동 ">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn_center">
					<button type="button" id="formSubmit" class="btn2 btncolor2"><span>완료</span></button>
					<button type="button" id="formCancel" class="btn2 btncolor4"><span>취소</span></button>
				</div>
				</fieldset>
				</form>
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
		
	</div>
</article>