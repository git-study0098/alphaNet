<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container">





<script type="text/javascript">
<!--
var memType = "pMem";//로그인구분 일반회원
var currentPage = document.location.href;
var arr = "";
$(document).ready(function(){

	if(location.href.indexOf("https://") > -1 ){
		currentPage = currentPage.slice(8);
	} else {
		currentPage = currentPage.slice(7);
	}
	arr = currentPage.split("/");
	currentPage = arr[1];
	//로그인, 로그아웃 처리 후 다시 보여줄 페이지url
	$("input[name=redir]").val(currentPage);
	//로그인form 초기화
	$("#loginForm").attr("method","post");


	$("#gMemInfo").hide();

	//회원구분 선택
	$("#pMem, #gMem").click(function(){
		$(".btn").removeClass("on");
		$(this).addClass("on");

		memType = $(this).attr("id");
		//일반회원
		if(memType=="pMem"){
			$("#gMemInfo").hide();
			$("#loginBtn2").show();
		} else {
		//단체회원
			alert("단체접수 서비스는 '17년 기능사 1회 실기부터 이용 가능 합니다.\n\n※사용일시는 추후 공지사항에 게제");
			$("#gMemInfo").hide();
			$("#loginBtn2").show();
			$(this).removeClass("on");
			$("#pMem").addClass("on");
			/* 2016.12.29 jws : 김종호 대리 요청 단체로그인 제한 위해 주석 
			$("#gMemInfo").show();
			$("#loginBtn2").hide(); 
			*/
		}
	});

	//엔터 로그인
	$("#mem_id, #mem_pswd").keypress(function(e) {
		if(e.keyCode == 13){
			loginForm();
		}
	});

	//로그인 버튼 클릭
	$("#loginBtn").click(function(){
		loginForm();
	});
});

//로그인
function loginForm(){
	if($("#mem_id").val().length==0){
		alert("아이디를 입력하십시오.");
		$("#mem_id").focus();
		return false;
	}

	if(checkBlank($("#mem_id").val()) > 0){
		alert("아이디에 빈공간을 넣을 수 없습니다.");
		$("#mem_id").val("");
		$("#mem_id").focus();
		return false;
	}

	if($("#mem_pswd").val().length==0){
		alert("비밀번호를 입력하십시오.");
		$("#mem_pswd").focus();
		return false;
	}

	if(checkBlank($("#mem_pswd").val()) > 0){
		alert("아이디에 빈공간을 넣을 수 없습니다.");
		$("#mem_pswd").val("");
		$("#mem_pswd").focus();
		return false;
	}

	$("#loginForm").attr("target","loginFrame");
	$("#loginForm").attr("action","https://www.q-net.or.kr/man001.do?id=man00101&gSite=Q&gId=");

	
	$("input[name=groupChk]").val("N");
	

	NetFunnel_goForm({},$("#loginForm"));
}

//로그아웃
function logoutForm(){
	$("#loginForm").attr("action","http://www.q-net.or.kr/man001.do?id=man00102&gSite=Q&gId=");
	$("#loginForm").submit();
}

function fileDown(filePath, fileName){
	  window.location="crf011.do?id=crf01106&gSite=Q&gId=&filePath="+filePath+"&fileName="+fileName;        
}

//-->
</script>

		<!-- #lnb -->
		<div id="lnb" style="min-height: 1262px;">
			<!-- login -->
			<div class="login">
				<!-- 회원 구분 -->
				<div class="login_tab">

				</div>
				<!-- //회원 구분 -->

				<!-- //로그인 전 -->
				<form id="loginForm" method="post">
				<input type="hidden" name="pageId" value="isr001_01">
				<input type="hidden" name="redir" value="isr002.do?id=isr00203&amp;gSite=Q&amp;gId=">
				<input type="hidden" name="lnb" value="Y">
				<input type="hidden" name="groupChk" value="N">
				<input type="hidden" name="logoutYn" value="Y">
				<div class="login_area">

					<!-- 로그인 후 -->
					<div class="welcom">
						<p><span class="fc_b">황창연</span>님 반갑습니다.</p>
					</div>
					<div>
						<a href="#" class="btn_login3 btncolor1" onclick="logoutForm()"><span>로그아웃</span></a>
						<a href="https://www.q-net.or.kr/myp001.do?id=myp00101&amp;gSite=Q&amp;gId=" class="btn_login3 btncolor2"><span>정보수정</span></a>
					</div>
					<div class="my_list">
						<a href="https://www.q-net.or.kr/myp002.do?id=myp00201&amp;gSite=Q&amp;gId=" class="golink01"><span>나의 접수내역 바로가기</span></a>
					</div>
					<div>
						<a href="#" class="btn_loginsend" onclick="popup1('http://m.q-net.or.kr/relay/index.html','certiMoveInfo','620','560','30','30')">
							<span>
								<strong>공인인증서 전송</strong>
								<span><em>PC</em><em>스마트폰</em></span>
							</span>
						</a>
						<a href="https://www.q-net.or.kr/man001.do?id=man00104&amp;gSite=Q&amp;gId=" class="btn_lpoginapp"><span>공인인증서 등록</span></a>
					</div>
					<!-- //로그인 후 -->

				</div>
				</form>
			</div>
			<!-- //login -->

			<h2 id="lnbTitle" class="tit_lnb">자격증/확인서</h2>
			<ul id="lnbNavi" class="lnb on">
				<li class="low"><a href="#"><span>자격증 발급 안내</span></a>
					<ul style="display: none;">
						<li id="QLF001_01"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00101&amp;gSite=Q&amp;gId=">자격증발급/발급처</a></li>
						<li id="QLF001_02"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00102&amp;gSite=Q&amp;gId=">신규/인정/재발급</a></li>
						<li id="QLF001_06"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00106&amp;gSite=Q&amp;gId=">기능사보기능사자격부여</a></li>
						<li id="QLF001_07"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00107&amp;gSite=Q&amp;gId=">면허발급대상종목</a></li>
						<li id="QLF001_08"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00108&amp;gSite=Q&amp;gId=">국가자격취득자주의사항</a></li>
						<li id="QLF001_09"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00109&amp;gSite=Q&amp;gId=">보수교육갱신등록폐지</a></li>
						<li id="QLF001_10"><a href="http://www.q-net.or.kr/qlf001.do?id=qlf00110&amp;gSite=Q&amp;gId=">폐지종목자격증발급</a></li>
					</ul>
				</li>
				<li class="low active on"><a href="#"><span>자격증 발급</span></a>
					<ul style="display: block;">
						<li id="ISR001_01" class="on"><a href="http://www.q-net.or.kr/isr001.do?id=isr00101&amp;gSite=Q&amp;gId=">자격증발급신청</a></li>
						<li id="ISR003_01"><a href="https://www.q-net.or.kr/isr003.do?id=isr00301&amp;gSite=Q&amp;gId=">자격증발급신청내역조회</a></li>
					</ul>
				</li>
				<li class="low"><a href="#"><span>확인서 발급</span></a>
					<ul style="display: none;">
						<li id="ISS001_01"><a href="http://www.q-net.or.kr/iss001.do?id=iss00101&amp;gSite=Q&amp;gId=">확인서발급안내</a></li>
						<li id="ISS002_01"><a href="http://www.q-net.or.kr/iss002.do?id=iss00201&amp;gSite=Q&amp;gId=">확인서발급신청</a></li>
						<li id="ISS003_01"><a href="http://www.q-net.or.kr/iss003.do?id=iss00301&amp;gSite=Q&amp;gId=">확인서발급신청내역조회</a></li>
						<li id="ISS005_01"><a href="http://www.q-net.or.kr/iss005.do?id=iss00501&amp;gSite=Q&amp;gId=">기능경기확인서신청</a></li>
					</ul>
				</li>
				<li class="low"><a href="#"><span>자격취득/미발급 조회</span></a>
					<ul style="display: none;">
						<li id="QLF002_01"><a href="https://www.q-net.or.kr/qlf002.do?id=qlf00201&amp;gSite=Q&amp;gId=">자격증취득조회 </a></li>
						<li id="QLF005_01"><a href="https://www.q-net.or.kr/qlf005.do?id=qlf00501&amp;gSite=Q&amp;gId=">자격증미발급조회</a></li>
					</ul>
				</li>
				<li class="low"><a href="#"><span>확인서/자격증 진위확인</span></a>
					<ul style="display: none;">
						<li id="ISS004_01"><a href="http://www.q-net.or.kr/iss004.do?id=iss00401&amp;gSite=Q&amp;gId=">확인서진위확인</a></li>
						<li id="QLF006_01"><a href="https://www.q-net.or.kr/qlf006.do?id=qlf00601&amp;gSite=Q&amp;gId=">자격증진위확인</a></li>
						<li id="QLF006_02"><a href="https://www.q-net.or.kr/qlf006.do?id=qlf00602&amp;gSite=Q&amp;gId=">단체진위확인</a></li>
					</ul>
				</li>
				<li></li>
			</ul>
			<div class="lnb_btm_bn">
				<a href="https://qfc.hrdkorea.or.kr" target="_blank" title="자격취득자 교육훈련 바로가기. 새 창"><img src="/qnet/images/common/lnb_qfc.gif" alt="자격취득자 교육훈련 : 자격취득과 체계적인 사후관리"></a>
			</div>

			
			<div style="margin-bottom:5px; font-size:12px; color:#ffffff; display:none">
				<p id="dispMenuId">ISR001_01</p>
			</div>
			<iframe name="loginFrame" title="빈프레임" src="" scrolling="no" frameborder="0" style="display:none"></iframe><!-- //2015.01.11 KJH : 로그인용 빈 프레임 -->
		</div>
		<!-- //#lnb -->



		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>

					<li>자격증/확인서</li>
					<li>자격증 발급</li>

					<li><strong>자격증 발급 신청</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 주소검색팝업 -->
			<div id="addrPopup_view" class="popup"></div>
			<div id="isr002_03_03_view" class="popup" title="기본인증"></div> <!-- // popup -->
			<div id="PopQualDtlSel_view" class="popup" title="자격취득 명세선택"></div> <!-- // popup -->
			<div class="content">
				<h3 class="tit_content">자격증 발급 신청</h3>
				<div class="step">
					<ul class="list06">
						<li><img src="/qnet/images/step/step_license_off_01.gif" alt=""><span>자격증선택</span></li>
						<li><img src="/qnet/images/step/step_license_off_02.gif" alt=""><span>선택확인</span></li>
						<li><img src="/qnet/images/step/step_license_on_03.gif" alt=""><span>신청서작성</span><span class="blind">선택</span></li>
						<li><img src="/qnet/images/step/step_license_off_04.gif" alt=""><span>본인인증</span></li>
						<li><img src="/qnet/images/step/step_license_off_06.gif" alt=""><span>수수료결제</span></li>
						<li><img src="/qnet/images/step/step_license_off_05.gif" alt=""><span>접수증출력</span></li>
					</ul>
				</div>

<form name="frm" method="post" onsubmit="return false">
	<input type="hidden" name="certTrnsNo" value=""> <!-- 인증거래번호 -->
	<input type="hidden" name="certResdNo" value=""> <!-- 주민번호-->
	<input type="hidden" name="certHgulNm" value=""> <!-- 성명-->
	<input type="hidden" name="certGoodsNm" value=""> <!-- 상품명-->
	<input type="hidden" name="certgoodsAmt" value=""> <!-- 상품금액-->
	<input type="hidden" name="certSplyTrnsNo" value=""> <!-- 공급자거래번호-->
	<input type="hidden" name="certMphoneCertRsltCcd" value=""> <!-- 휴대폰인증결과[c코드]-->
	<input type="hidden" name="certCertDttm" value=""> <!-- 인증일시-->
	<input type="hidden" name="certMphoneId" value=""> <!-- 휴대폰식별자-->
	<input type="hidden" name="certmPhoneCompCcd" value=""> <!-- 이동통신사[c코드]-->
	<input type="hidden" name="certCertSvcId" value=""> <!-- 인증서비스아이디-->
	
	<input type="hidden" id="PIC_USE_POSBT_YN" name="PIC_USE_POSBT_YN">
	<input type="hidden" id="PIC_USE_POSBT_MSG" name="PIC_USE_POSBT_MSG">
	<input type="hidden" id="ACCU_RATE" name="ACCU_RATE">
	<input type="hidden" name="dhcmYn" value="">

				<div class="tbl_normal isr_app">
				<p class="txt_right mb10"><strong>( <span class="fc_r" title="필수">*</span> ) 필수 입력사항입니다.</strong></p>
					<table summary="자격증 발급 신청서 작성으로 ,성명(한글), 성명(영문), 주민번호, 인증방법, 전화번호(자택/직장/휴대전화), 주민등록 주소, 배송지 주소, 학력사항, 현 근무지, 현근무 소재지 정보 입력">
						<caption>자격증 발급 신청서 작성</caption>
						<colgroup>
							<col width="160px"> <!-- th-->
							<col width="168px"> <!-- td -->
							<col width="150px"> <!-- th -->
							<col width="128px"> <!-- td -->
							<col width="131px"> <!-- photo -->
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">성명(한글)</th>
								<td colspan="2">황창연</td>
								<td colspan="2" rowspan="6" class="photo">
									<div class="license">
										<em>자격증발급용 사진</em>
										<p><img id="viewImg" alt="황창연 자격증발급용 사진" src="/common/loadimg.do?suno=13014049&amp;div=I&amp;lcsno=17201130689T"></p>
										<iframe title="사진등록" style="width: 100px; height: 30px;" frameborder="0" framespacing="0" marginwidth="0" marginheight="0" scrolling="no" src="/common/SevenEyeFrame.do?up_div=N&amp;file_name=20170719154111_02555&amp;picModify=0" name="hiddenFrame"> </iframe>
									</div>
									<div class="lately">
										<em>최근 사진</em>
										<p>
										
											<img id="viewImg" src="/common/licenseImage.do?rctPhtNm=17201130689T" alt="황창연 최근 사진" width="55" height="73">
										
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="engNm">성명(영문)</label></th>
								<td colspan="2">
								<input type="text" title="성명(영문) 입력" id="engNm" name="engNm" style="width:100px" value="Hwang Chang yeon" maxlength="30">
								<span class="txt_add">(여권과 동일하게 입력하세요.)</span>
								</td>
							</tr>
							<tr>
								<th scope="row">주민번호</th>
								<td colspan="2">910204-*******</td>
							</tr>
							<tr>
								<th scope="row">인증방법</th>
								<td colspan="2"></td>
							</tr>
							<tr>
								<th scope="row"><label for="abdTel">전화번호</label><strong class="fc_r" title="필수">*</strong></th>
								<td colspan="2"><input type="text" id="abdTel" class="numInput2" title="전화번호 입력" name="abdTel" style="width:100px" value="" maxlength="13">
								<span class="txt_add">(예 : 02-111-1111)</span></td>
							</tr>
							<tr>
								<th scope="row"><label for="mphoneNo">휴대전화</label> <strong class="fc_r" title="필수">*</strong></th>
								<td colspan="2"><input type="text" id="mphoneNo" class="numInput2" name="mphoneNo" title="휴대전화번호 입력" style="width:100px" value="010-3440-2727" maxlength="13">
								<span class="txt_add">(예 : 010-1111-1111)</span></td>
							</tr>
							<tr id="viewZip">
								<th scope="row">주민등록주소<strong class="fc_r" title="필수">*</strong></th>

								<td colspan="4" class="intbl_div">
									<div>
										<span class="txt_addr"><label for="zip01">우편번호 입력</label></span>
										<input type="text" class="form_short numInput" title="우편번호" id="zip01" name="zip01" readonly="readonly" maxlength="5" value="35291">
										
										<span id="selfSpanNo1">
											<button type="button" class="btn3_type1" name="addrPop" title="주소검색 새창" id="01"><span>주소검색</span></button>
											
										</span>
										<span id="selfSpanOk1" style="display:none">
											<button type="button" class="btn3_type2" title="주소입력취소" onclick="selfAddrFn1('NO');"><span>주소 직접입력 취소</span></button>
										</span>
										<strong class="info_tool" title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다. " tabindex="0">주소입력방법 안내</strong>
									</div>
									<div>
										<span class="txt_addr"><label for="addr01">주소</label></span>
										<input type="text" style="width: 300px" id="addr01" name="addr01" class="member_addr1" readonly="readonly" title="주소입력" value="대전광역시 서구 괴정로54번길 22">
										<input type="text" style="width: 113px" id="resdTownBldNm" name="resdTownBldNm" value="(괴정동)" class="member_addr2" title="주소 입력" readonly="readonly">
									</div>
									<div>
										<span class="txt_addr"><label for="addr02">나머지 주소 입력</label></span>
										<input type="text" id="addr02" name="addr02" class="member_addr3" title="나머지 주소입력" style="width:429px" value="아트빌 307호" maxlength="100">

										

										<input type="hidden" name="gibunResdAddr" id="gibunResdAddr">
									</div>
								</td>

							</tr>


<!-- 방문수령시작-->
							<tr style="display:none">
								<th scope="row">자격증 수령방법</th>
								<td colspan="4">

									<span class="text_guide"><label for="recptMethY">배송</label></span><input id="recptMethY" name="recptMeth" type="radio" value="P" onclick="setRecptMethod('P');">
									<span class="text_guide"><label for="recptMethN">방문</label></span><input id="recptMethN" name="recptMeth" type="radio" value="V" onclick="setRecptMethod('V');" disabled="">

									<span class="text_red2">[결제 후에는 수령방법을 변경할 수 없습니다.]</span>
								</td>
							</tr>
							<tr id="visitRecpt" style="display: none;">
								<th scope="row">방문 수령자<strong class="fc_r" title="필수">*</strong></th>
								<td colspan="3">
									<span>
										<input type="radio" id="self" name="visitRcpt" value="S" onclick="setVisitMethod('S');">
										<label for="self" class="mr10">본인</label>
										<input type="radio" id="agent" name="visitRcpt" value="D" onclick="setVisitMethod('D');">
										<label for="agent">대리인</label>
									</span>
								</td>
							</tr>
							<tr id="visitRecpt2" style="display: none;">
								<th scope="row"><label for="branch">방문지사</label> <strong class="fc_r" title="필수">*</strong></th>
								<td colspan="4">

									<select name="brchCd" class="input" id="brchCd" title="방문지사">
									<option value="">- 방문할 지사를 선택해주십시오 -</option>

									<option value="01">서울지역본부 [서울특별시 동대문구  ]</option>

									<option value="02">서울동부지사 [서울특별시 광진구  ]</option>

									<option value="07">서울남부지사 [서울특별시 영등포구  ]</option>

									<option value="11">강원지사 [강원도 춘천시  ]</option>

									<option value="19">강원동부지사 [강원도 강릉시  ]</option>

									<option value="03">부산지역본부 [부산광역시 북구  ]</option>

									<option value="21">부산남부지사 [부산광역시 남구  ]</option>

									<option value="17">경남지사 [경상남도 창원시  ]</option>

									<option value="09">울산지사 [울산광역시 중구  ]</option>

									<option value="04">대구지역본부 [대구광역시 달서구  ]</option>

									<option value="16">경북지사 [경상북도 안동시  ]</option>

									<option value="22">경북동부지사 [경상북도 포항시  ]</option>

									<option value="05">중부지역본부 [인천광역시 남동구  ]</option>

									<option value="10">경기지사 [경기도 수원시  ]</option>

									<option value="23">경기북부지사 [경기도 의정부시  ]</option>

									<option value="24">경기동부지사 [경기도 성남시  ]</option>

									<option value="06">광주지역본부 [광주광역시 북구  ]</option>

									<option value="14">전북지사 [전라북도 전주시  ]</option>

									<option value="15">전남지사 [전라남도 순천시  ]</option>

									<option value="20">전남서부지사 [전라남도 목포시  ]</option>

									<option value="18">제주지사 [제주특별자치도 제주시  ]</option>

									<option value="13">대전지역본부 [대전광역시 중구  ]</option>

									<option value="12">충북지사 [충청북도 청주시  ]</option>

									<option value="08">충남지사 [충청남도 천안시  ]</option>

									</select>



									<!--
									2015.03.17 jws : 이종용 대리 요청  URL변경
									<a class="btn btncolor5 openPopup" href="http://www.hrdkorea.or.kr/5/4/2" target="_blank" title="새 창"><span>약도보기</span></a>
									-->
									<!-- 2015.12.321 jws : 김종호대리 요청 URL변경http://www.hrdkorea.or.kr/5/4/2/2 === > http://www.hrdkorea.or.kr/5/4/2/1 -->
									<a class="btn btncolor5 openPopup" href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank" title="새 창"><span>약도보기</span></a>


								</td>
							</tr>
							<tr id="deputy" style="display: none;">
								<th scope="row"><label for="agentHgulNm">대리인 성명</label> <strong class="fc_r" title="필수">*</strong></th>
								<td class="td"><input type="text" id="agentHgulNm" style="width:93%" name="agentHgulNm" maxlength="30" value=""></td>
								<th scope="row"><label for="agentJumin">대리인 주민번호</label> <strong class="fc_r" title="필수">*</strong></th>
								<td colspan="2" class="td"><input type="text" id="agentJumin" style="width:148px" name="agentResdRegNo" maxlength="13" value="" class="numInput"> '-'는 제외</td>
							</tr>
							<tr>
								<td colspan="5" id="checkInfo" style="display: none;">※ 방문수령자가 본인일 경우 본인 신분증, 대리인일 경우 본인 및 대리인의 신분증을 반드시 지참하십시오.

								</td>
							</tr>
<!-- 방문수령끝-->
							<tr id="postRecpt">
								<th scope="row">배송지 주소 <strong class="fc_r" title="필수">*</strong></th>
								<td colspan="4" class="intbl_div">
									<div>
										<span class="txt_addr"><label for="zip01_1">우편번호 입력</label></span>
										<input type="text" class="form_short numInput" title="우편번호" id="zip01_1" name="zip01_1" readonly="readonly" maxlength="5" value="" onkeyup="nextFocus('frm', 'zip01_1', 'dlvrPlcAddr');">
										
										<span id="selfSpanNo2">
											<button type="button" class="btn3_type1" name="addrPop" id="02" title="주소 검색"><span>주소검색</span></button>
											
											<input type="checkbox" id="dlvrSet1" title="(배송지 주소)상동" value="" onclick="setDlvr1();"> <label for="dlvrSet1">상동</label>
										</span>
										<span id="selfSpanOk2" style="display:none">
											<button type="button" class="btn3_type2" onclick="selfAddrFn2('NO');" title="주소 직접입력 취소"><span>주소 직접입력 취소</span></button>
										</span>
										<input type="hidden" id="dlvrDirectInptCcd" name="dlvrDirectInptCcd" value="N">
									</div>

									<div>
										<span class="txt_addr"><label for="dlvrPlcAddr">주소</label></span>
										<input type="text" id="dlvrPlcAddr" name="dlvrPlcAddr" value="" class="member_addr1" title="주소입력" readonly="readonly">
										<input type="text" id="dlvrPlcAddrTownBldNm" style="width:205px" value="" name="dlvrPlcAddrTownBldNm" class="member_addr2" title="주소 입력" readonly="readonly">
									</div>
									<div>
										<span class="txt_addr"><label for="dlvrPlcAddrDtl">나머지 주소 입력</label></span>
										<input type="text" id="dlvrPlcAddrDtl" style="width:429px" value="" name="dlvrPlcAddrDtl" class="member_addr3" title="나머지 주소입력" maxlength="90">
										<input type="hidden" name="gibunResdAddr" id="gibunResdAddr">
									</div>
									<div>
										<span class="txt_addr"><label for="dlvrHhCautionMatt">배송 시 유의사항</label></span>
										<input type="text" name="dlvrHhCautionMatt" title="배송시 유의사항" style="width:428px" value="예) 부재시 옆집에 맡겨 주십시오." onclick="setDhcm();" maxlength="100">
										<p>※ 신청인과 수령인이 다를 경우 수령인 성명 반드시 기재</p>
									</div>
									<div>
										<span class="txt_addr"><label for="dlvrPlcTel">휴대전화</label></span>
										<input type="text" id="dlvrPlcTel" name="dlvrPlcTel" class="member_addr3 numInput2" style="width:98px" value="" title="휴대전화" maxlength="13">
										<span class="txt_add">(예 : 010-1111-1111) [※ 배송시 문자 메시지 전송/핸드폰 번호 기재]</span>
									</div>
								</td>
							</tr>
<!-- 배송수령끝-->

							<tr>
								<th scope="row"><label for="lastEuhistCcd">학력사항 <strong class="fc_r" title="필수">*</strong></label></th>
								<td colspan="4">
									<span class="mr10">

									<select name="lastEuhistCcd" id="lastEuhistCcd" title="학력사항 입력" style="width:220px">
										<option value="">-- 선택 --</option>
										<option value="1">대학원이상</option>
										<option value="2">4년제대학</option>
										<option value="3">2년제대학</option>
										<option value="4">기능대학</option>
										<option value="5">고등학교</option>
										<option value="6">직업전문학교</option>
										<option value="7">중졸</option>
										<option value="8">기타</option>
									</select>

									</span>
									<span>
										<label for="major">전공학과</label>
										<input type="text" id="major" name="major" title="전공학과 입력" style="width:235px" value="" maxlength="40">
									</span>
								</td>
							</tr>
							<tr>
								<th scope="row">현 근무처 <strong class="fc_r" title="필수">*</strong></th>
								<td colspan="4">
									<span>
										<input type="radio" id="jobY" name="workAreaInputYn" onclick="setWorkArea('1');" checked=""> <label for="jobY" class="mr10">있음</label>
										<input type="radio" id="jobN" name="workAreaInputYn" onclick="setWorkArea('0');"> <label for="jobN">없음</label>
									</span>
								</td>
							</tr>
							<tr id="workarea">
								<th scope="row">현근무 소재지<strong class="fc_r" title="필수">*</strong></th>
								<td colspan="4" class="intbl_div">
									<div>
										<span class="mr20">
											<span class="txt_addr"><label for="wrkAr">근무처명</label></span>
											<input type="text" id="wrkAr" title="근무처명 입력" name="wrkAr" value="" maxlength="100" style="width:97px">
										</span>
										<span><label for="MOD_DATE_1">입사일</label></span>
										<span class="calendar">
											<input type="text" title="입사일 입력(예:20140204 )" style="width:83px" id="MOD_DATE_1" class="redaTxt dateMask hasDatepicker" value="" maxlength="8" name="MOD_DATE_1"><button type="button" class="ui-datepicker-trigger"><img src="/qnet/images/common/btn_calendar_bg.png" alt="날짜 선택" title="날짜 선택"></button>
											<span class="txt_add">(예 : 20140204)</span>
										</span>
									</div>
									<div>
										<span class="txt_addr"><label for="compTel">전화번호</label></span>
										<input type="text" id="compTel" name="compTel" title="전화번호 입력" style="width:97px" value="" maxlength="13" class="numInput2">
										<span class="txt_add">(예 : 010-1111-1111)</span>
									</div>
									<div>
										<span class="txt_addr"><label for="wrkArZip_1">우편번호 입력</label></span>
										<input type="text" id="wrkArZip_1" name="wrkArZip_1" maxlength="5" class="form_short numInput" readonly="readonly" title="우편번호 앞자리" value="">
										
										<span id="selfSpanNo3">
											<button type="button" class="btn3_type1" name="addrPop" id="03" title="주소검색"><span>주소검색</span></button>
											
										</span>
										<span id="selfSpanOk3" style="display:none">
											<button type="button" class="btn3_type2" onclick="selfAddrFn3('NO');" title="주소 직접입력 취소"><span>주소 직접입력 취소</span></button>
										</span>
									</div>
									<div>
									<span class="txt_addr"><label for="wrkArAddr">주소</label></span>
									<input type="text" id="wrkArAddr" name="wrkArAddr" class="member_addr1" readonly="readonly" title="주소입력" value="">
									<input type="text" id="workAreaAddrTownBldNm" name="workAreaAddrTownBldNm" style="width:205px" class="member_addr2" title="주소 입력" readonly="readonly" value="" maxlength="200">
									</div>
									<div>
										<span class="txt_addr"><label for="wrkArAddrDtl">나머지 주소 입력</label></span>
										<input type="text" id="wrkArAddrDtl" value="" name="wrkArAddrDtl" style="width:429px" title="나머지 주소입력" class="member_addr3" maxlength="100">
										<input type="hidden" name="gibunResdAddr" id="gibunResdAddr">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			<div id="bd01_02">
				<div class="tbl_type1 mb5">
					<table summary="자격내역으로, 자격증 번호, 종목명(취득시 종목명), 필기 합격일자, 최종 합격일자, 자격과 경력 관련여부, 발급 수수료, 자격취득 명세 선택 정보 제공" style="table-layout:fixed">
						<caption>자격 내역</caption>
						<colgroup>
							<col width="1%">
							<col width="14%">
							<col width="16%">
							<col width="9%">
							<col width="9%">
							<col width="10%">
							<col width="13%">
							<col width="10%">
							<col width="18%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">자격증<br>번호</th>
								<th scope="col">종목명<br>(취득시 종목명)</th>
								<th scope="col">필기<br>합격일자</th>
								<th scope="col">최종<br>합격일자</th>
								<th scope="col">비고</th>
								<th scope="col">자격과 경력<br>관련여부</th>
								<th scope="col">발급<br>수수료</th>
								<th scope="col">기타 자격취득<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사항 기재<strong class="info_tool" title="국가기술자격증 제3면 '자격증 취득 내용'란에 기재될 내용을 선택합니다." tabindex="0"></strong></th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td>&nbsp;</td>
								<td>17201130689T</td>
								<td class="left">정보처리기사</td>
								<td>2017.03.16</td>
								<td>2017.05.26</td>
								<td>재발급</td>
								<td>
									<select title="자격증 관련 구분 선택" name="crerRelYnCcd" class="input" id="crerRelYnCcd">
										<option value="0">- 선 택 -</option>
										<option value="1">관련있음</option>
										<option value="2">비슷함</option>
										<option value="3">관련없음</option>
									</select></td>
								<td>3,100원</td>
								<td><div id="viewSel0"></div><button type="button" class="btn3_type2" onclick="popQualDtlSel(0,&quot;17201130689T&quot;,&quot;정보처리기사&quot;)"><span id="btnPopQualDtlSel_0">해당없음</span></button>
									<input type="hidden" name="qualSel_YN_0" value="N">
									<input type="hidden" name="qualSelList_0" value="">
									<input type="hidden" name="isChkNone_0" value="N">
									<input type="hidden" name="lcsNo" value="17201130689T">
									<input type="hidden" name="jmNm" value="정보처리기사">
									<input type="hidden" name="fstJmNm" value="정보처리기사">
									<input type="hidden" name="jmCd" value="1320">
									<input type="hidden" name="examPassDt" value="20170316">
									<input type="hidden" name="lastPassDt" value="20170526">
									<input type="hidden" name="issuGb" value="재발급">
									<input type="hidden" name="selAddInfrmPtr" value="0">
									<input type="hidden" name="qualGiveGbCcd" value="3">
									<input type="hidden" name="orgnJmCd" value="1320">
									<input type="hidden" name="orgnJmNm" value="">
									<input type="hidden" name="issuFee" value="3100">
								</td>
							</tr>


						</tbody>
					</table>
					<input type="hidden" name="totFee" value="3100">
				</div>
			</div>
			<p class="impt ml20 mb10">
				※ 선택한 자격내역(1건)은 위와 같습니다. 자격별로 경력과 관한 여부를 선택해 주십시오.<br> 자격별 관련 여부는 현근무지외에 이전 경력도 해당됩니다.
			</p>

	<input type="hidden" name="applNo" value="">
	<input type="hidden" name="appGb" value="P">
	<input type="hidden" name="rcptMthdCd">
	<input type="hidden" name="vstRcpt">
	<input type="hidden" name="certMeth" value="">
	<input type="hidden" name="brchTrthNm" value="">
	<input type="hidden" name="brchNm" value="">
	<input type="hidden" name="issuPrargDt" value="">
	<input type="hidden" name="issuApplDttm" value="">
	<input type="hidden" name="issuApplDt" value="">

	<input type="hidden" name="resdNo" value="9102041409018">
	<input type="hidden" name="hgulNm" value="황창연">
	<input type="hidden" name="recptMethCcd" value="">
	<input type="hidden" name="wrkArInptYn">
	<input type="hidden" name="inetCertMethccd" id="inetCertMethccd" value="">
	<input type="hidden" name="visitRecptSefGbCcd">

	<input name="UploadFileCheck" id="UploadFileCheck" type="hidden" value="Y"> 
	<input name="strUploadFileName" type="hidden" value="20170719154111_02555">
	<input name="issuPicNm" type="hidden" value="">
	<input name="cmparPicNm" type="hidden" value="17201130689T">

	<input name="crerModifyYn" type="hidden">
	<input name="euhistModifyYn" type="hidden">
	<input name="hmCrEuModifyYn" type="hidden">

	<input name="lastEuhistCcdOld" type="hidden" value="">
	<input name="lastSchlNmOld" type="hidden" value="">

	<input name="setlStat" type="hidden" value="">

	<input name="setlYn" type="hidden" value="">
	<input name="lcsApplNo" type="hidden" value="">
	<input name="rsSize" type="hidden" value="0">
	<input name="modiYn" type="hidden" value="">
	<input name="chk" type="hidden">
	<input name="infrmCnt" type="hidden" value="1">
	<input type="hidden" name="phtPath" value="//">
	<input type="hidden" name="phtPath2" value="photo/license/17/2/17201130689T">
	<input type="hidden" name="preQualGiveGbCcd" value="1">
	<input type="hidden" name="planId" value="PL2017454007">
	<input type="hidden" name="seqNo" value="2">
	<input type="hidden" name="suNo" value="13014049">
	<input type="hidden" name="issuPrgsStatCcd" value="">
</form>

<form name="CancelProcessForm" method="post" onsubmit="return false" action="isr003.do?id=isr00302s01&amp;gSite=Q&amp;gId=">
	<input type="hidden" name="repreApplNo" value="">
	<input type="hidden" name="refundType" value="">
	<input type="hidden" name="refundRate" value="">
	<input type="hidden" name="payType" value="">
	<input type="hidden" name="stat_type" value="2">
</form>
			<div class="tbl_type1 charge_tbl">
				<table summary="자격증 발급 신청 결제 금액 안내로, 발급수수료, 배송비, 결제 금액 정보 제공" style="table-layout:fixed">
					<caption>자격증 발급 신청-결제 금액안내</caption>
					<colgroup>
						<col width="80px">
						<col width="140px">
						<col width="50px">
						<col width="140px">
						<col width="170px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="charge_01">발급수수료</label></th>
							<td>
								<input type="text" id="charge_01" class="txt_right fc_6" title="발급 수수료 금액" style="width:90px" value="3,100" readonly="readonly">원
							</td>
							<th scope="row"><label for="charge_02">배송비</label></th>
							<td>
								<input type="text" id="charge_02" class="txt_right fc_6" title="배송비 금액" style="width:90px" value="2,340" readonly="readonly">원
							</td>
							<th scope="row"><p class="txt_right"><label for="charge_03"><strong>결제 금액</strong></label></p></th>
							<td>
								<input type="text" id="charge_03" class="txt_right fc_6" title="결제 금액" style="width:90px" value="5,440" readonly="readonly">원
							</td>
						</tr>
					</tbody>
				</table>
				<span><p>※ <span class="fc_b">주민등록주소는</span> 자격증에 출력되는 주소입니다. 입력한 주소를 다시 한번 확인하십시오.</p></span>
			</div>
			<div class="btn_center">

					<button type="button" class="btn2 btncolor1" onclick="movePrePage();"><span>이전</span></button>
					<button type="button" class="btn2 btncolor2" onclick="popup1();"><span>기본인증</span></button>

			</div>

		</div>
		<iframe title="빈프레임" name="isr00302s01" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="0" height="0"></iframe>
		
		<div id="payWin" class="mt40" style="text-align: center; display: block; z-index: 1;">
			<iframe id="payFrame" name="payFrame" width="663px" style="margin: 0px auto;" title="결제 상세" src="" frameborder="0" scrolling="no"></iframe>
		</div>
	</div><!-- //#content -->

<script type="text/JavaScript">

$(document).ready(function(){

	if('' == 'P' || 'P' == 'P'){
		document.all.postRecpt.style.display = "";
		document.all.visitRecpt.style.display = "none";
		document.all.visitRecpt2.style.display = "none";
		document.all.recptMeth[0].checked = "true";
		$("#checkInfo").hide();
	}

	if('' == 'V' || 'P' == 'V'){
		document.all.postRecpt.style.display = "none";
		document.all.visitRecpt.style.display = "";
		document.all.visitRecpt2.style.display = "";
		document.all.recptMeth[1].checked = "true";
		document.all.visitRcpt[0].checked = "true";
		

		$("#checkInfo").show();

		if('' == 'I'){//방문수령 본인
			document.all.visitRcpt[0].checked = "true";
		}
		if('' == 'O'){//방문수령 대리인
			document.all.visitRcpt[1].checked = "true";
			document.all.deputy.style.display = "";
		}
	}

	if('' == 'P' || 'P' == 'P'){ //배송
		setVisitMethod("S"); // 방문수령자 visitRecpt 영역이 안보임.
	}else{ // 방문
		if(document.all.visitRcpt[0].checked == true){  // 본인
			setVisitMethod("S");
			//document.all.deputy.style.display = "none";
		}else if(document.all.visitRcpt[1].checked == true){  // 대리인
			setVisitMethod("D");
			//document.all.deputy.style.display = "";
		}
	}

	if('P' == 'P'){  //배송
		document.all.recptMeth[1].disabled = "true";
	}

	if('P' == 'V'){  //방문
		document.all.recptMeth[0].disabled = "true";
	}

	if('' == 'Y'){
		if('' == 'P'){
			document.all.recptMeth[1].disabled = "true";
		}
		if('' == 'V'){
			document.all.recptMeth[0].disabled = "true";
		}
	}

	if('Y' == 'Y'){
		document.all.workAreaInputYn[0].checked = "true";
		document.all.workarea.style.display = "";
	}else{
		document.all.workAreaInputYn[1].checked = "true";
		document.all.workarea.style.display = "none";
	}

	//주소검색팝업
	$("button[name=addrPop]").click(function(){

		var frmNm,zipNm1,zipNm2,addrNm1,gibunAddrNm1,townBldNm,addrNm2,popView = "";
		frmNm = "frm";
		popView = "addrPopup_view";
		if($(this).attr("id")=="01"){
			zipNm1  = "zip01";
			zipNm2  = "zip02";
			addrNm1 = "addr01";
			gibunAddrNm1 = "gibunResdAddr";
			townBldNm = "resdTownBldNm";
			addrNm2 = "addr02";
		} else if($(this).attr("id")=="02"){
			zipNm1  = "zip01_1";
			zipNm2  = "zip01_2";
			addrNm1 = "dlvrPlcAddr";
			gibunAddrNm1 = "gibunResdAddr";
			townBldNm = "dlvrPlcAddrTownBldNm";
			addrNm2 = "dlvrPlcAddrDtl";
		} else if($(this).attr("id")=="03"){
			zipNm1  = "wrkArZip_1";
			zipNm2  = "wrkArZip_2";
			addrNm1 = "wrkArAddr";
			gibunAddrNm1 = "gibunResdAddr";
			townBldNm = "workAreaAddrTownBldNm";
			addrNm2 = "wrkArAddrDtl";
		}else {
			return false;
		}
		fnRoadAddrPopWin2(frmNm,zipNm1,zipNm2,addrNm1,gibunAddrNm1,townBldNm,addrNm2,popView);
	});

});

function openImgCrop(){// 사진조정 프로세스.
	if(!$('#imgCrop').hasClass('popup')){ 
		$('#ACCU_RATE').append("<div id='imgCrop' class='popup'></div>");
	}
	
	var param = ($('#viewImg').attr('src')).replace(/^.*\?/, "");
	var actURL	= "myp001.do?id=mypImgCropPage&"+param+"&imgPath="+encodeURIComponent($('#viewImg').attr('src'))+"&up_div=I&file_name=20170719154111_02555&picModify=0";
	var view	= "imgCrop";
	openPopup(view,"사진크기 조정하기",actURL,"","600","710","");
}


function selfAddrFn1(fnValue){
	//주민등록주소 직접입력
	if(fnValue == "OK"){
		document.all.zip01.readOnly     = false;
		
		document.all.addr01.readOnly = false;
		document.getElementById("zip01").className = "form_short";
		
		document.getElementById("addr01").className = "member_addr1";
		document.all.zip01.value        = "";
		
		document.all.addr01.value    = "";
		document.all.addr02.value = "";
		document.getElementById("selfSpanNo1").style.display = "none";
		document.getElementById("selfSpanOk1").style.display = "";
		document.getElementById("resdTownBldNm").value = "";
		document.all.zip01.focus();
	}else{
		document.all.zip01.readOnly     = true;
		
		document.all.addr01.readOnly = true;
		document.all.zip01.value        = "";
		
		document.all.addr01.value    = "";
		document.all.addr02.value = "";
		document.getElementById("selfSpanNo1").style.display = "";
		document.getElementById("selfSpanOk1").style.display = "none";
		document.getElementById("resdTownBldNm").value = "";
	}
}

function selfAddrFn2(fnValue){
	//배송지 주소 직접입력
	if(fnValue == "OK"){
		document.all.dlvrSet1.checked      = false;
		document.all.zip01_1.readOnly     = false;
		
		document.all.dlvrPlcAddr.readOnly = false;
		document.getElementById("zip01_1").className = "form_short";
		
		document.getElementById("dlvrPlcAddr").className = "member_addr1";
		document.all.zip01_1.value        = "";
		
		document.all.dlvrPlcAddr.value    = "";
		document.all.dlvrPlcAddrDtl.value = "";
		document.getElementById("selfSpanNo2").style.display = "none";
		document.getElementById("selfSpanOk2").style.display = "";
		document.getElementById("dlvrPlcAddrTownBldNm").value = "";
		document.all.zip01_1.focus();
		//배송지직접입력코드
		document.getElementById("dlvrDirectInptCcd").value = "Y";
	}else{
 		document.all.dlvrSet1.checked      = false;
		document.all.zip01_1.readOnly     = true;
		
		document.all.dlvrPlcAddr.readOnly = true;
		document.all.zip01_1.value        = "";
		
		document.all.dlvrPlcAddr.value    = "";
		document.all.dlvrPlcAddrDtl.value = "";
		document.getElementById("selfSpanNo2").style.display = "";
		document.getElementById("selfSpanOk2").style.display = "none";
		document.getElementById("dlvrDirectInptCcd").value = "N";
		document.getElementById("dlvrPlcAddrTownBldNm").value = "";
	}
}

function selfAddrFn3(fnValue){
	//현 근무 소재지 직접입력
	if(fnValue == "OK"){
		document.all.wrkArZip_1.readOnly     = false;
		
		document.all.wrkArAddr.readOnly = false;
		document.getElementById("wrkArZip_1").className = "form_short";
		
		document.getElementById("wrkArAddr").className = "member_addr1";
		document.all.wrkArZip_1.value        = "";
		
		document.all.wrkArAddr.value    = "";
		document.all.wrkArAddrDtl.value = "";
		document.getElementById("selfSpanNo3").style.display = "none";
		document.getElementById("selfSpanOk3").style.display = "";
		document.getElementById("workAreaAddrTownBldNm").value = "";
		document.all.wrkArZip_1.focus();
	}else{
		document.all.wrkArZip_1.readOnly     = true;
		
		document.all.wrkArAddr.readOnly = true;
		document.all.wrkArZip_1.value        = "";
		
		document.all.wrkArAddr.value    = "";
		document.all.wrkArAddrDtl.value = "";
		document.getElementById("selfSpanNo3").style.display = "";
		document.getElementById("selfSpanOk3").style.display = "none";
		document.getElementById("workAreaAddrTownBldNm").value = "";
	}
}

function setRecptMethod(rcptMthcd){

	if(rcptMthcd == 'P'){  // 배송
		document.getElementById("postRecpt").style.display = "";
		document.getElementById("visitRecpt").style.display = "none";
		document.getElementById("visitRecpt2").style.display = "none";
		document.getElementById("deputy").style.display = "none";
		document.all.zip01_1.value = "";
		
		document.all.dlvrPlcAddr.value = "";
		document.all.dlvrPlcAddrTownBldNm.value = "";
		document.all.dlvrHhCautionMatt.value = "";
		document.all.dlvrPlcAddrDtl.value = "";
		document.all.dlvrPlcTel.value = "";
		$("#checkInfo").hide();
	}

	if(rcptMthcd == 'V'){ 	// 방문
		document.getElementById("postRecpt").style.display = "none";
		document.getElementById("visitRecpt").style.display = "";
		document.getElementById("visitRecpt2").style.display = "";
		document.getElementById("deputy").style.display = "";
		document.getElementById("brchCd").value = "";
		$("#checkInfo").show();
		/* 2014.05.12 add jws 방문신청일때 지사코드 초기화*/
		if(document.all.visitRcpt[1].checked == false ){  // 대리인
			document.all.visitRcpt[0].checked = true;
			setVisitMethod("S");
		}
	}

}

function setVisitMethod(visitMthcd){

	if(visitMthcd == 'S'){ // 본인
		document.all.deputy.style.display = "none";
		document.all.agentHgulNm.value = "";
		document.all.agentResdRegNo.value = "";
	}

	if(visitMthcd == 'D'){ // 대리인
		document.all.deputy.style.display = "";
	}
}

function setWorkArea(chk2){
	//근무처 있음
	if(chk2 == '1'){
		document.all.workarea.style.display = "";
	}
	//근무처 없음
	if(chk2 == '0'){
		document.all.workarea.style.display = "none";
		document.all.wrkAr.value = "";
		document.all.MOD_DATE_1.value = "";
		document.all.compTel.value = "";
		document.all.wrkArZip_1.value = "";
		
		document.all.wrkArAddr.value = "";
		document.all.workAreaAddrTownBldNm.value = "";
		document.all.wrkArAddrDtl.value = "";
	}
}

function popQualDtlSel(p_idx, p_lcsNo, p_jmNm) {

	if(1 == 1){
		return;
	}

	strUrl = "/isr002.do?id=isr00203s04&gSite=Q&gId=";
	strUrl += "&LCS_NO="+p_lcsNo;
	strUrl += "&JM_NM="+p_jmNm;
	strUrl += "&parentIdx="+p_idx;
	strUrl += "&qualSelList="+document.all["qualSelList_"+p_idx].value;
	strUrl += "&isChkNone="+document.all["isChkNone_"+p_idx].value;

	var buttons =	[
						{
							text: "선택완료",
							click: function() {
								//script call or set;
								setParentQualSelList();
								//$(PopQualDtlSel_view).dialog( "close" ); //취소시 닫기
							}
						}
					];

	openPopup("PopQualDtlSel_view","기타 자격취득사항 선택",strUrl,"","650","600",buttons,true);

}

function setAddInfrm(){

	if( 1 == 1){
		str = '<select title="프린트 구분" name="selAddInfrm" class="input" id="selAddInfrm" style="width:130px" disabled>';
		str = str + '<option value=0>선택불가</option>';
		str = str + '</select>';
	}else if(1 <= 8){
		str = '<select title="출력 선택" name="selAddInfrm" class="input" id="selAddInfrm" style="width:130px">';
		str = str + '<option value=0>출력안함</option>';
		str = str + '<option value=1>전부출력</option>';
		str = str + '</select>';
	}else if( 1 >= 9){
		str = '<select title="출력 구분 선택" name="selAddInfrm" class="input" id="selAddInfrm" style="width:130px">';
		str = str + '<option value=0>출력안함</option>';
		str = str + '<option value=1>전부출력</option>';
		str = str + '<option value=2>상위 7개 출력</option>';
		str = str + '<option value=3>상위 8개 이후 출력</option>';
		str = str + '</select>';
	}

		for (var i=0; i < 1; i++) {

			if( document.getElementById("viewSel"+i) != null )
				document.getElementById("viewSel"+i).innerHTML = str;
		}


				for (var i=0; i < 1; i++) {

					if('1' == '1'){
					 	document.all.selAddInfrm.options[document.all.selAddInfrmPtr.value].selected = "true";
						document.all.selAddInfrm.disabled = "true";
					}else{
					 	document.all.selAddInfrm[i].options[document.all.selAddInfrmPtr[i].value].selected = "true";
						document.all.selAddInfrm[i].disabled = "true";
					}
				}


	}
function frmSubmit(){

	for(var i=0; i < document.all.frm.recptMeth.length ; i++){
		if(document.all.frm.recptMeth[i].checked){
			document.all.frm.rcptMthdCd.value = document.all.frm.recptMeth[i].value;
		}
	}

	for(var i=0; i < document.all.frm.visitRcpt.length ; i++){
		if(document.all.frm.visitRcpt[i].checked){
			document.all.frm.vstRcpt.value = document.all.frm.visitRcpt[i].value;
		}
	}

	var selectObject=document.getElementById("brchCd");

	if(selectObject.selectedIndex !== 0){
		document.all.frm.brchNm.value = selectObject.options[selectObject.selectedIndex].text;
	}

	if(document.all.workAreaInputYn[0].checked){
		document.all.frm.wrkArInptYn.value = "Y";
	}else{
		document.all.frm.wrkArInptYn.value = "N";
	}

	if(document.all.recptMeth[1].checked){
		if(document.all.visitRcpt[0].checked){
			document.all.visitRecptSefGbCcd.value = "I";
		}
		if(document.all.visitRcpt[1].checked){
			document.all.visitRecptSefGbCcd.value = "O";
		}
	}

	if(document.all.dhcmYn.value != "Y"){
		document.all.dlvrHhCautionMatt.value = "";
	}

	alert('결제화면으로 이동합니다. \n\n자격증 발급 신청을 완료하기 위해서는 반드시 결제를 하셔야 합니다.');

	document.all.frm.method = "POST";
	document.all.frm.action = "/isr002.do?id=isr00204&gSite=Q&gId=";
	document.all.frm.submit();

}

function popup1(){

	for (var i=0; i<1; i++) {
		if ($("#btnPopQualDtlSel_"+i).text() == "선택하세요") {
			alert("기타 자격취득사항 기재를 선택하셔야 합니다.");
			$("#btnPopQualDtlSel_"+i).focus();
			return;
		}
	}
	if(!checkItem()) return;
	if (! confirm("작성완료하셨습니까?") ) return;

	var actURL	= "/isr002.do?id=isr0020303&gSite=Q&gId=&pId=PI2100126553";

	var view	= "isr002_03_03_view";

	openPopup("isr002_03_03_view","기본인증",actURL,"","520","460","none");

	$("#inetCertMethccd").val("J");

	if(document.getElementById("openBasicOk")){
		document.getElementById("openBasicOk").disabled=true;
	}

	return;
}

function openBasic(chk){
	var chk;
	for(i=0; i<1; i++) {
		if($("#btnPopQualDtlSel_"+i).text() == "선택하세요"){
			alert("자격취득 명세를 선택하셔야 합니다.");
			$("btnPopQualDtlSel_"+i).focus();
			return;
		}
	}

	if(chk != 'cncl' && chk != 'modi'){
		if(!checkItem()) return;

		if (! confirm("작성완료하셨습니까?") ) return;
	}

	$("#inetCertMethccd").val("J");

	var actURL	= "/isr002.do?id=isr0020303&chk="+chk+"&gSite=Q&gId=&pId=PI2100126553";
	var view	= "isr002_03_03_view";

	openPopup("isr002_03_03_view","기본인증",actURL,"","520","460","none");

	return;
}

	var bads = new Array("?","?");

function badCheck(word) {
	orgword=word.toLowerCase();
	awdrgy = 0;
	aLeRt = 0;

	while (awdrgy<=bads.length-1 && aLeRt!=1) {
		for( var j=0 ; j< word.length; j++) {

		if (bads[awdrgy]==word.substring(j,(j+bads[awdrgy].length)).toLowerCase()){

			aLeRt = 1;
			return true;
			}
			j++;
		}
		awdrgy++;
	}

	return false;

}


function badCheck_(word) {

	
	var bads = new Array("?","더?","포스코더?");
	orgword=word.toLowerCase();

	awdrgy = 0;
	aLeRt = 0;
	while (awdrgy<=bads.length-1 && aLeRt!=1) {
		for (var j=0; j<(word.length); j++) {
			if(bads[awdrgy]==word.substring(j,(j+bads[awdrgy].length)).toLowerCase()) {
				aLeRt = 1;
				return true;
			}
				awdrgy++;
		}
	}
	return false;
}

function checkItem(){

	var disabledFalg='';
	var phyn = checkActiveSevenEye();
	var emptyMsg = "";
		emptyMsg += "자격증 출력 주민등록주소가 없습니다.\n";
		emptyMsg += "인터넷 발급신청이 불가 하므로\n";
		emptyMsg += "지사에 방문하여 발급신청 하시기 바랍니다.";
	if(phyn == "N" || phyn == null ){
		alert("자격증발급용사진이 없습니다!!");
		return false;
	}
	if (document.getElementById("PIC_USE_POSBT_YN").value != "Y" && document.getElementById("PIC_USE_POSBT_YN").value != "") {
		var msg = '';
		if (document.getElementById("PIC_USE_POSBT_MSG").value != "") {
			msg = document.getElementById("PIC_USE_POSBT_MSG").value;
		} else {
			msg = '사진을 다시 등록해 주세요.';
		}

		return;
	}

	//영문입력수 체크
	if ((document.getElementById("engNm").value.getBytes() > 30)) {
		alert("영문이름은 30자 이내 입력 하시기바랍니다.");
		document.getElementById("engNm").focus();
		return false;
	}
	//주민등록 주소 나머지 주소 입력수 체크
	var juminAdd = document.getElementById("resdTownBldNm").value + document.getElementById("addr02").value;
	if (juminAdd.getBytes() > 200) {
		alert("주민등록 나머지 주소 입력값이 초과되었습니다.");
		document.getElementById("addr02").focus();
		return false;
	}
	//배송지 주소 나머지 주소 입력수 체크
	var pAdd = document.getElementById("dlvrPlcAddrTownBldNm").value + document.getElementById("dlvrPlcAddrDtl").value;
	if (pAdd.getBytes() > 200) {
		alert("배송지나머지 주소 입력값이 초과되었습니다.");
		document.getElementById("dlvrPlcAddrDtl").focus();
		return false;
	}

	//근무지 주소 나머지 주소 입력수 체크
	var workAdd = document.getElementById("workAreaAddrTownBldNm").value + document.getElementById("wrkArAddrDtl").value;
	if (workAdd.getBytes() > 200) {
		alert("근무지 나머지 주소 입력값이 초과되었습니다.");
		document.getElementById("wrkArAddrDtl").focus();
		return false;
	}
	//대리인 성명 입력수 체크
	if (document.getElementById("agentHgulNm").value.getBytes() > 30) {
		alert("대리인 성명 입력값이 초과되었습니다.");
		document.getElementById("agentHgulNm").focus();
		return false;
	}
	//근무처명 입력수 체크
	if (document.getElementById("wrkAr").value.getBytes() > 100) {
		alert("근무처명 입력값이 초과되었습니다.");
		document.getElementById("wrkAr").focus();
		return false;
	}
	//성명(영문) 입력시 한글 막기
	if (!isNumEngOnly(document.getElementById("engNm").value || document.getElementById("engNm").value == "")){
		alert("영문 이름에는 한글 또는 공백을 입력할수 없습니다.");
		document.getElementById("engNm").focus();
		return false;
	}

	if(document.getElementById("abdTel").value == ""){
		alert('전화번호를 입력해주십시오!!');
		//document.getElementById("abdTel").focus();
		$("#abdTel").focus();
		return false;
	}

	if(document.getElementById("mphoneNo").value == ""){
		alert('휴대전화번호를 입력해주십시오!!');
		//document.getElementById("mphoneNo").focus();
		//$("#mphoneNo").select();
		$("#mphoneNo").focus();
		return false;
	}

	if(trim(document.getElementById("zip01").value) == ""){
		alert(emptyMsg);
		return false;
	}

	
	if(trim(document.getElementById("addr01").value) == ""){
		alert(emptyMsg);
		return false;
	}
	//주민등록 나머지 주소 특수문자 막기
	if (!isSpecial(document.getElementById("addr02").value)) {
		alert("나머지 주소에 특수문자를 입력할수 없습니다.");
		document.getElementById("addr02").focus();
		return false;
	}
	if (badCheck(trim(document.getElementById("addr02").value)) == true ) {
		alert('나머지 주소에 ?을 입력할 수 없습니다.\n\n배송지 기재시 유의사항을 확인하십시오!!');
		document.getElementById("addr02").focus();
		return;
	}
	//배송지 나머지 주소 특수문자 막기
	if (!isSpecial(document.getElementById("dlvrPlcAddrDtl").value)) {
		alert("나머지 주소에 특수문자를 입력할수 없습니다.");
		document.getElementById("dlvrPlcAddrDtl").focus();
		return false;
	}
	if (badCheck(trim(document.getElementById("dlvrPlcAddrDtl").value)) == true ) {
		alert('나머지 주소에 ?을 입력할 수 없습니다.\n\n배송지 기재시 유의사항을 확인하십시오!!');
		document.getElementById("dlvrPlcAddrDtl").focus();
		return;
	}
	//현 근무 소재지 나머지 주소 특수문자 막기
	if (!isSpecial(document.getElementById("wrkArAddrDtl").value)) {
		alert("나머지 주소에 특수문자를 입력할수 없습니다.");
		document.getElementById("wrkArAddrDtl").focus();
		return false;
	}
	if (badCheck(trim(document.getElementById("wrkArAddrDtl").value)) == true ) {
		alert('나머지 주소에 ?을 입력할 수 없습니다.\n\n배송지 기재시 유의사항을 확인하십시오!!');
		document.getElementById("wrkArAddrDtl").focus();
		return;
	}
	if(document.all.recptMeth[1].checked && disabledFalg != 'disabled'){
		if( ! document.all.visitRcpt[0].checked && ! document.all.visitRcpt[1].checked){
			alert('방문수령자를 선택하세요!!');
			document.all.visitRcpt[0].focus();
			return false;
		}
		if( document.all.brchCd.value == ""){
			alert('방문할 지사를 선택하세요!!');
			document.all.brchCd.focus();
			return false;
		}
		if(document.all.visitRcpt[1].checked && document.all.agentHgulNm.value == ""){
			alert('대리인명을 입력하세요!!');
			document.all.agentHgulNm.focus();
			return false;
		}
		if(document.all.visitRcpt[1].checked && document.all.agentResdRegNo.value == ""){
			alert('대리인 주민번호를 입력하세요!!');
			document.all.agentResdRegNo.focus();
			return false;
		}
	}

	if(document.all.agent.checked == true){
		if(!isValid_juminChk02(document.all.agentResdRegNo.value)){
			alert("대리인 주민번호 오류입니다. 다시 입력하세요.");
			document.all.agentResdRegNo.focus();
			return;
		}
	}

	if(document.all.recptMeth[0].checked){
		if(trim(document.getElementById("zip01_1").value) == ""){
			alert('배송지 우편번호를 입력해주십시오!!');
			document.getElementById("zip01_1").focus();
			return false;
		}
		if(trim(document.getElementById("zip01_1").value).length != 5){
			alert('배송지 우편번호를 입력해주십시오!!');
			document.getElementById("zip01_1").focus();
			return false;
		}
		
		
		if(document.getElementById("dlvrPlcAddr").value == ""){
			alert('배송지 주소를 입력해주십시오!!');
			document.getElementById("dlvrPlcAddr").focus();
			return false;
		}

		if(document.getElementById("dlvrPlcTel").value == ""){
			if (! confirm('배송지 핸드폰번호가 입력되지 않았습니다. \n\n 핸드폰번호 기재시 배송시 문자 메시지 전송을 보내 드립니다 \n\n 핸드폰번호 없이 진행 하시겠습니까?') ){
				document.getElementById("dlvrPlcTel").focus();
				return false;
			}
		}else{
			var chkdlvrPlcTel = document.getElementById("dlvrPlcTel").value;
			var telHp = new Array("010","011","016","019","017", "018" );
			var chkFlag = false;
			for ( var i=0 ;  i < telHp.length ; i++){
				if( telHp[i] == chkdlvrPlcTel.substring(0,3)){
					chkFlag = true;
					break;
				}
			}

			if(chkFlag == false){
				alert('휴대전화번호가 잘못입력되었습니다.다시 입력해주세요!!');
				document.getElementById("dlvrPlcTel").focus();
				return false;
			}
		}
		if(getByteLength(document.getElementById("dlvrPlcTel").value) > 20){
			alert('배송지 전화번호를 20자내로 기재해 주세요!!');
			document.getElementById("dlvrPlcTel").focus();
			return false;
		}

	}

	if (disabledFalg != 'disabled') {
		if(document.getElementById("lastEuhistCcd").options[document.getElementById("lastEuhistCcd").selectedIndex].value == ""){
			alert('학력을 선택 해주십시오!!');
			document.getElementById("lastEuhistCcd").focus();
			return false;
		}
	}

	if(document.getElementById("major").value != ""){
		if(getByteLength(document.getElementById("major").value) > 40){
			alert('전공학과 입력값이 초과되었습니다.');
			document.getElementById("major").focus();
			return false;
		}
	}

	//날짜 유효성 체크 dateChk(id값)
	if(!dateChk("MOD_DATE_1")){
		$("#MOD_DATE_1").focus();
		return false;
	}

	if(document.all.workAreaInputYn[0].checked){
		if(document.getElementById("MOD_DATE_1").value == ""){
			alert('입사일을 입력하세요!!!');
			document.getElementById("MOD_DATE_1").focus();
			return false;
		}

		if(document.getElementById("wrkAr").value == ""){
			alert('근무처명을 입력하세요!!!');
			document.getElementById("wrkAr").focus();
			return false;
		}

		if(document.getElementById("compTel").value == ""){
			alert('근무처 전화번호를 입력하세요!!!');
			document.getElementById("compTel").focus();
			return false;
	}

	if(document.getElementById("wrkArZip_1").value == ""){
		alert('근무처 우편번호를 입력하세요!!!');
		document.getElementById("wrkArZip_1").focus();
		return false;
	}

	

	if(document.getElementById("wrkArAddr").value == ""){
		alert('근무처 기본주소를 입력하세요!!!');
		document.getElementById("wrkArAddr").focus();
		return false;
	}
}




			for (var i=0; i < 1; i++) {
				if('1' == '1'){
					if(document.all.crerRelYnCcd.options[document.all.crerRelYnCcd.selectedIndex].value == "0"){
						alert('자격과 경력관련 여부를 선택해주십시오!!');
						document.all.crerRelYnCcd.focus();
						return false;
					}
				}else{
					if(document.all.crerRelYnCcd[i].options[document.all.crerRelYnCcd[i].selectedIndex].value == "0"){
						alert('자격과 경력관련 여부를 선택해주십시오!!');
						document.all.crerRelYnCcd[i].focus();
						return false;
					}
				}
			}




	return true;
}


function getByteLength(s){
	var len = 0;
	if ( s == null ) return 0;
		for(var i = 0; i < s.length; i++){
			var c = escape(s.charAt(i));
			if ( c.length == 1 ) len ++;
			else if ( c.indexOf("%u") != -1 ) len += 2;
			else if ( c.indexOf("%") != -1 ) len += c.length/3;
		}
	return len;
}

function setDlvr1(){
	if(document.all.dlvrSet1.checked == true){
		if (document.all.zip01.value.length == 6) {
			alert("새 우편번호 시행('15.8.1')에 따라, 기존 6자리 우편번호를 사용하는 회원은 주소검색을 통하여 새 우편번호로 변경하여 주시기 바랍니다.") ;
		} else {
			//배송지 주소 상동
			document.all.zip01_1.value = document.all.zip01.value;
			
			document.all.dlvrPlcTel.value  = document.all.mphoneNo.value;
			document.all.dlvrPlcAddr.value = document.all.addr01.value;
			document.all.dlvrPlcAddrDtl.value = document.all.addr02.value;
			document.all.dlvrPlcAddrTownBldNm.value = document.all.resdTownBldNm.value;
			
		}
	}
	if(document.all.dlvrSet1.checked == false){
		//배송지 주소 상동
		document.all.zip01_1.value = "";
		
		document.all.dlvrPlcTel.value  = "";
		document.all.dlvrPlcAddr.value = "";
		document.all.dlvrPlcAddrDtl.value = "";
		document.all.dlvrPlcAddrTownBldNm.value = "";
		
	}
}

function movePrePage(){
	var goPage = true;
	if(goPage == true){
		if (! confirm("입력하신 정보가 모두 삭제됩니다. 계속 진행하시겠습니까?")) return;
		document.all.frm.method = "POST";
		document.all.frm.action = "https://www.q-net.or.kr/isr002.do?id=isr00202&&gSite=Q&gId=";
		document.all.frm.submit();
	}
}


function frmModifySubmit(){
	var disabledFlag ='';
	for(var i=0; i < document.all.frm.recptMeth.length ; i++){
		if(document.all.frm.recptMeth[i].checked ){
			document.all.frm.rcptMthdCd.value = document.all.frm.recptMeth[i].value;
			document.all.frm.recptMethCcd.value = document.all.frm.recptMeth[i].value;
		}
	}

	for(var i=0; i < document.all.frm.visitRcpt.length ; i++){
		if(document.all.frm.visitRcpt[i].checked){
			document.all.frm.vstRcpt.value = document.all.frm.visitRcpt[i].value;
		}
	}
	var selectObject=document.getElementById("brchCd");

	if(selectObject.selectedIndex !== 0 && disabledFlag !='disabled'){
		document.all.frm.brchNm.value = selectObject.options[selectObject.selectedIndex].text;
	}

	if(document.all.workAreaInputYn[0].checked){
		document.all.frm.wrkArInptYn.value = "Y";
	}else{
		document.all.frm.wrkArInptYn.value = "N";
	}

	if(document.all.recptMeth[1].checked){
		if(document.all.visitRcpt[0].checked){
			document.all.visitRecptSefGbCcd.value = "I";
		}
		if(document.all.visitRcpt[1].checked){
			document.all.visitRecptSefGbCcd.value = "O";
		}
	}

	if(document.all.frm.lastEuhistCcdOld.value != document.all.frm.lastEuhistCcd.value){
		document.all.frm.euhistModifyYn.value = "Y";
		document.all.frm.hmCrEuModifyYn.value = "Y";
	}

	document.all.frm.method = "POST";
	document.all.frm.action = "/isr002.do?id=isr00205&gSite=Q&gId="+"&brchCd="+document.all.frm.brchCd.value;
	document.all.frm.submit();

}

function frmDeleteSubmit(){
	document.all.frm.method = "POST";
	document.all.frm.action = "/isr002.do?id=isr00206&gSite=Q&gId=";
	document.all.frm.submit();
}

function pubCertSubmt(){
	document.all.certMeth.value = "공인인증";
	$("#inetCertMethccd").val("P");
	/* document.all.inetCertMethccd.value = "P"; */
	frmSubmit();

}

function phoneSubmt(){
	document.all.certMeth.value = "휴대폰인증";
	/* document.all.inetCertMethccd.value = "M"; */
	$("#inetCertMethccd").val("M");
	frmSubmit();
}

function checkCerth(){
	if (! confirm("신청취소 하시겠습니까?") ) return;
	search4();
}

function viewExam(xmlHttp){
	var rtnString = xmlHttp.responseText;
	var itemName = "EXIST_FLAG";
	var idxValue = rtnString.indexOf(itemName);
	var existFlagValue = rtnString.substr( (idxValue+itemName.length+1), 2 );

	if(existFlagValue == "30"){
		var msg1 = '지금 취소하시려는 신청내역은   ';
			msg1+= '\n이미 발급되어 취소가 불가합니다.  ';
		alert(msg1);
		return;
	}else{
		if($("#inetCertMethccd").val() == "J"){
			openBasic('cncl');
			}

		if($("#inetCertMethccd").val() == "P"){
			popup_public('cncl');
		}

		if($("#inetCertMethccd").val() == "M"){
			popup_mobile('cncl');
		}
		return;
	}
}

function search4(){
	var applNo	= document.all.frm.applNo.value;
	var getPost		= "POST";
	var targetID	="isr0030201";
	var actURL		= "isr003.do?id="+targetID+"&"+"applNo="+applNo;
	var trueFalse   = true;
	var sendData	= null;
	var method		= "viewExam(xmlHttp)";
	openSendStatus(getPost, actURL, trueFalse, sendData, method);
	return false;
}

function chkCerth(){

	if(! checkItem()) return;
	if (! confirm("수정하시겠습니까?") ) return;
	if($("#inetCertMethccd").val() == "J"){
		openBasic('modi');
	}
	if($("#inetCertMethccd").val() == "P"){
		popup_public('modi');
	}

	if($("#inetCertMethccd").val() == "M"){
		popup_mobile('modi');
	}
}

function popup_public(chk){
	var chk;

	for(i=0; i<1; i++) {
		if($("#btnPopQualDtlSel_"+i).text() == "선택하세요") {
			alert("자격취득 명세를 선택하셔야 합니다.");
			$("#btnPopQualDtlSel_"+i).focus();
			return;
		}
	}

	if(chk != 'cncl' && chk != 'modi'){
		if(!checkItem()) return;
		if (! confirm("작성완료하셨습니까?") ) return;
	}

	var phyn = checkActiveSevenEye();
	if(phyn == "N" ){
		alert('고객님은 사진이 등록되어 있지 않아 배송신청이 불가하므로, \기본인증으로 방문신청하여 주십시오. ');
	}
}

function popup_mobile(chk){
	var chk;

	for(i=0; i<1; i++) {
		if($("#btnPopQualDtlSel_"+i).text() == "선택하세요") {
			alert("자격취득 명세를 선택하셔야 합니다.");
			$("#btnPopQualDtlSel_"+i).focus();
			return;
		}
	}

	if(chk != 'cncl' && chk != 'modi'){
		if(!checkItem()) return;
		if (! confirm("작성완료하셨습니까?") ) return;
	}

	var phyn = checkActiveSevenEye();

	if(phyn == "N" ){
		alert('고객님은 사진이 등록되어 있지 않아 배송신청이 불가하므로, \기본인증으로 방문신청하여 주십시오. ');
	} else {
		window.open("/mobile/step1_04.jsp",'mobile','width=390px; height=475px');
	}

	document.all.frm.chk.value = chk;
}

function popup_mobile2(pm_arr, flag){
	var args = new Array();
	var arr = null;

	arr = pm_arr ;

	if(arr != null){
		if(arr["timeout"] == "timeout"){
			document.location.reload(true);
		}else{
			if(document.all.frm.chk.value == 'cncl'){
				frmDeleteSubmit();
			}else if(document.all.frm.chk.value == 'modi'){
				frmModifySubmit();
			}else{
				phoneSubmt();
			}
		}
	}
}

function setDhcm(){
	document.all.dlvrHhCautionMatt.value = "";
	document.all.dhcmYn.value = "Y";
}

function checkActiveSevenEye(){

	if(document.all.frm.UploadFileCheck.value == "Y" && "Y" == "N"){
		if ('' != "Y") {
			return "N";
		} else {
			return "Y";
		}
	}else{
		return "Y";
	}
}

function receiptCancel(){
	var frm;

		alert('');

}
</script>







		<div id="quick" style="top: 1313px; display: block;">
			<span>
				<button title="빠른서비스 열기" type="button" class="quick_open"><img src="/qnet/images/common/btn_quick_off.gif" alt="빠른서비스 열기"></button>
				<a title="상단 바로가기" href="#wrap" class="top"><img src="/qnet/images/common/btn_top.gif" alt="상단 바로가기"></a>
			</span>
			<div>
				<button title="빠른서비스 닫기" type="button" class="close" tabindex="0"><img src="/qnet/images/common/btn_quick_close.png" alt="빠른서비스 닫기"></button>
				<ul class="link_go">
					<li class="go01">
						<a href="http://www.q-net.or.kr/crf021.do?id=crf02101&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_01.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_01_on.png" alt=""></em>
							<strong>시험일정안내</strong>
						</a>
					</li>
					<li class="go02">
						<a href="http://www.q-net.or.kr/myp011.do?id=myp01101&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_02.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_02_on.png" alt=""></em>
							<strong>응시자격자가진단</strong>
						</a>
					</li>
					<li class="go03">
						<a href="http://www.q-net.or.kr/rcv003.do?id=rcv00301&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_03.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_03_on.png" alt=""></em>
							<strong>원서접수현황</strong>
						</a>
					</li>
					<li class="go04">
						<a href="http://www.q-net.or.kr/iss002.do?id=iss00201&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_04.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_04_on.png" alt=""></em>
							<strong>확인서신청</strong>
						</a>
					</li>
					<li class="go05">
						<a href="http://www.q-net.or.kr/isr001.do?id=isr00101&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_05.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_05_on.png" alt=""></em>
							<strong>자격증신청</strong>
						</a>
					</li>
					<li class="go06">
						<a href="http://www.q-net.or.kr/rcv013.do?id=rcv01312&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_06.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_06_on.png" alt=""></em>
							<strong>수험자준비물</strong>
						</a>
					</li>
					<li class="go07">
						<a href="http://www.q-net.or.kr/cst006.do?id=cst00601&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_07.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_07_on.png" alt=""></em>
							<strong>자료실</strong>
						</a>
					</li>
					<li class="go08">
						<a href="http://www.q-net.or.kr/crf022.do?id=crf02201&amp;gSite=Q&amp;gId=">
							<span><img src="/qnet/images/main/link_go_08.png" alt=""></span>
							<em><img src="/qnet/images/main/link_go_08_on.gif" alt=""></em>
							<strong>환불정보</strong>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>