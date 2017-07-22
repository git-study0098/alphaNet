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
	
	.noData {
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
					<li><strong>사진변경 신청 및 결과</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<form name="picChgTxnFrm" method="post">
				<input type="hidden" name="recptNo" value="">
				<input type="hidden" name="picChgGbn" value="">
			</form>
			<div class="content">
				<form name="picChgForm" method="post" onsubmit="return false">
				<input type="hidden" name="UploadFileCheck" id="UploadFileCheck" value="Y">
				<input type="hidden" name="svrSysDate" value="20170710135906">
				<input type="hidden" name="chgRequestFlag" value="N">
				<input type="hidden" id="PIC_USE_POSBT_YN" name="PIC_USE_POSBT_YN">
				<input type="hidden" id="PIC_USE_POSBT_MSG" name="PIC_USE_POSBT_MSG">
				<input type="hidden" name="ACCU_RATE" id="ACCU_RATE">
				<h3 class="tit_content">사진변경 신청 및 결과</h3>
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>사진변경신청은 접수하신 시험의 준비 진행절차에 따라 시행지역 담당 승인이 반드시 필요합니다.</li>
							<li>사진변경 여부에 [변경가능(승인필요)]일 경우 등 사진변경에 관련하여 궁금사항이 있을시 해당지부/지사로 문의하시기 바랍니다.</li>
						</ul>
					</div>
					<span></span>
				</div>
				<!-- TAB -->
				<div class="tabLayout">
					<ul>
						<li class="on"><a href="<%=request.getContextPath()%>/member/changeImg" title="사진변경 신청"><span>사진변경 신청</span></a></li>
						<li><a href="<%=request.getContextPath()%>/member/changeImg2"><span>사진변경 신청 진행 현황</span></a></li>
					</ul>
				</div>
				<div class="tbl_type1">
					<table summary="사진 변경 신청 진행 상세 현황으로, 응시시험, 접수종목, 접수일자, 사진변경여부 정보 제공">
						<caption>사진 변경 신청 진행 상세 현황</caption>
						<tbody>
							<tr>
								<td class="noData">※ 유효한 원서접수내역이 없습니다. 시험일자를 확인하세요.</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- //컨텐츠 내용 -->
				</form>
			</div>
		</div>
		
	</div>
</article>