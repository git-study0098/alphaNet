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
			<jsp:include page="../../lnb/mypageLnb.jsp" />
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
				<input type="hidden" name="recptNo" value=""> <input
					type="hidden" name="picChgGbn" value="">
			</form>
			<div class="content">
				<h3 class="tit_content">사진변경 신청 및 결과</h3>
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>사진변경신청은 접수하신 시험의 준비 진행절차에 따라 시행지역 담당 승인이 반드시 필요합니다.</li>
							<li>처리결과에 관하여 궁금사항이 있을 시 해당 지부/지사로 문의하시기 바랍니다.</li>
						</ul>
					</div>
					<span></span>
				</div>
				<!-- TAB -->
				<div class="tabLayout green">
					<ul>
						<li><a href="<%=request.getContextPath()%>/member/changeImg"><span>사진변경
									신청</span></a></li>
						<li class="on"><a href="<%=request.getContextPath()%>/member/changeImg2" title="사진변경 신청 진행 현황"><span>사진변경
									신청 진행 현황</span></a></li>
					</ul>
				</div>
				<div class="tbl_type1">
					<table
						summary="사진변경 신청 진행 현황목록으로, 신청일자, 응시 시험, 담당지사, 처리일자, 처리결과, 비고 정보 제공">
						<caption>사진변경 신청 진행 현황 목록</caption>
						<colgroup>
							<col width="8%">
							<col width="*">
							<col width="25%">
							<col width="8%">
							<col width="13%">
							<col width="11%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">신청일자</th>
								<th scope="col">응시 시험</th>
								<th scope="col">담당지사</th>
								<th scope="col">처리일자</th>
								<th scope="col">처리결과</th>
								<th scope="col">비고</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td colspan="6" class="noData">사진 변경 신청 내역이 없습니다.</td>
							</tr>


						</tbody>
					</table>
				</div>
				<div class="pagination1 mb20">
					<button type="button" class="btn3_icon3 btn_prev_first"
						title="이전10페이지">
						<span class="blind">이전10페이지</span>
					</button>
					<button type="button" class="btn3_icon3 btn_prev_page"
						title="이전 페이지">
						<span class="blind">이전 페이지</span>
					</button>
					<span class="page"> <strong class="on" title="1페이지">1</strong>
					</span>
					<button type="button" class="btn3_icon3 btn_next_page"
						title="다음 페이지">
						<span class="blind">다음 페이지</span>
					</button>
					<button type="button" class="btn3_icon3 btn_next_end"
						title="다음10페이지">
						<span class="blind">다음10페이지</span>
					</button>
				</div>

			</div>
		</div>
	</div>
</article>