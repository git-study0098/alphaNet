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
	.noData{
	    padding: 30px 0 !important;
	    font-size: 14px !important;
	    color: #000 !important;
	    font-weight: bold !important;
	    text-align: center !important;
	}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/mypageLnb.jsp"/>
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
					<li>원서접수관리</li>
					<li><strong>원서접수내역</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="popup" id="dsdrInfo_view"></div><!-- 장애여부팝업 -->
			<div class="popup" id="ListPrintt_view"></div>
			<div class="popup" id="popup_view"></div><!-- 환불요금안내 -->
			<div class="popup" id="chgArea_view"></div><!-- 장소변경 팝업 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">원서접수내역</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="infoBox">
					<div>
						<ul class="list">
							<li><span class="fc_0">환불기간에 원서접수 취소가 가능하며, 환불기간이 아닌 경우에는 접수하신 내역을 취소하실 수 없습니다.</span></li>
							
							<li>환불서비스 경우 PC(윈도우 환경) 또는 스마트기기(스마트폰, 테블릿PC)는 모바일 앱 서비스를 사용해 주시기 바랍니다.
							
							<!-- <p class="mt10"><button type="button" class="btn3_type2" onclick="popup2('https://m.q-net.or.kr','mobileAppInfo','600','550','20','20')" ><span>한국기술자격검정원</span></button></p> -->
							</li>
							<li>국가기술자격 상시시험 12종목 접수내역은 한국기술자격검정원에서 확인 가능합니다. <button type="button" class="btn3_type2" onclick="popup3('http://t.q-net.or.kr')"><span>바로가기</span></button></li>
							
							
						</ul>
					</div>
					<span></span>
				</div>

				<!-- TAB -->
				<div class="tabLayout green">
					<ul>
						<li class="on"><a href="https://www.q-net.or.kr/myp002.do?id=myp00201&amp;gSite=Q&amp;gId=" title="진행중인 접수내역"><span>진행중인 접수내역</span></a></li>
						<li><a href="https://www.q-net.or.kr/myp002.do?id=myp00205&amp;gSite=Q&amp;gId="><span>지난 접수내역</span></a></li>
						<li><a href="https://www.q-net.or.kr/myp002.do?id=myp00207&amp;gSite=Q&amp;gId="><span>취소 / 환불내역</span></a></li>
					</ul>
				</div>

				<div class="tbl_normal tbl_member">
					<table summary="진행중인 응시시험 원서 접수 내역 없음">
						<caption>진행중인 원서 접수내역</caption>
						<colgroup>
							<col width="100%"> <!-- th -->
						</colgroup>
						<thead>
							<tr>
								<th scope="col">응시시험</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="noData">진행중인 접수 내역이 없습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>


				<form name="detailViewForm" method="post" onsubmit="return false" action="http://www.q-net.or.kr/myp002.do?id=myp00203&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="repreRecptNo">
					<input type="hidden" name="seriesCd">
					<input type="hidden" name="strImgSrc">
					<input type="hidden" name="suno">
				</fieldset>
				</form>
				<form name="picChgForm" method="post" onsubmit="return false" action="http://www.q-net.or.kr/myp004.do?id=myp00401&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="RecptNo">
					<input type="hidden" name="picChgGbn"> 
					<input type="hidden" name="recptNo"> 
				</fieldset>
				</form>
				<form name="prnAdmissionForm" method="post" onsubmit="return false;" action="http://www.q-net.or.kr/myp002.do?id=myp00202&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="repreRecptNo">
					
					<input type="hidden" name="prepareFiag">
					<input type="hidden" name="implId">
					<input type="hidden" name="jmCd">
					<input type="hidden" name="selfldCd">
					<input type="hidden" name="implsysCd">
					
				</fieldset>
				</form>
				<form name="prnAdmissionForm2" method="post" onsubmit="return false;" action="http://www.q-net.or.kr/myp002.do?id=myp00213&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="repreRecptNo">
				</fieldset>
				</form>
				<form name="receiptPayForm" method="post" onsubmit="return false;" action="http://www.q-net.or.kr/rcv002.do?id=rcv00207&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="repreRecptNo">
					<input type="hidden" name="recptNo">
					<input type="hidden" name="suNo">
					<input type="hidden" name="jmNm">
					<input type="hidden" name="qualGb">
				</fieldset>
				</form>
				<form name="cancelReceiptForm" method="post" onsubmit="return false" action="http://www.q-net.or.kr/myp002.do?id=myp00209&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="repreRecptNo">
					<input type="hidden" name="implPlanNm">
					<input type="hidden" name="jmNm">
					<input type="hidden" name="receiptDay">
					<input type="hidden" name="receiptStatus">
				</fieldset>
				</form>
				<form name="addExtInfo" method="post" onsubmit="return false" action="http://www.q-net.or.kr/myp013.do?id=myp01301&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="recpt_no">
					<input type="hidden" name="end_flag">
				</fieldset>
				</form>
				<form name="printTest" method="post" onsubmit="return false;">
				<fieldset>
				<legend> </legend>
				</fieldset>
				</form>
				
				<form name="virtualAccountForm" method="post" onsubmit="return false;" action="http://www.q-net.or.kr/myp002.do?id=myp00211&amp;gSite=Q&amp;gId=">
					<input type="hidden" name="vAccntViewTyp">
					<input type="hidden" name="repreRecptNo">
				</form>
				
				<form name="examAreaChg" method="post" onsubmit="return false" action="http://www.q-net.or.kr/myp021.do?id=myp02101&amp;gSite=Q&amp;gId=">
				<fieldset>
				<legend> </legend>
					<input type="hidden" name="planId">
					<input type="hidden" name="seqNo">
					<input type="hidden" name="jmCd">
					<input type="hidden" name="selFld">
					<input type="hidden" name="recptTyp">
					<input type="hidden" name="recptDtl">
					<input type="hidden" name="recptNo">
					<input type="hidden" name="suNo">
					<input type="hidden" name="dsdrGb">
					<input type="hidden" name="dsdrReq">
					<input type="hidden" name="qualGb">
					<input type="hidden" name="gId">
				</fieldset>
				</form>
				<input type="hidden" id="surverYN" value="">



				<!-- //컨텐츠 내용 -->
			</div>
		</div>
		
	</div>
</article>