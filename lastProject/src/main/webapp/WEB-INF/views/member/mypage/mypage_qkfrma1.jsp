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
	<jsp:include page="../../lnb/mypageLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<div id="iss003_01_p01_pop" class="popup" title="확인서 출력"></div> <!-- // popup -->
				<ul>
					<li>홈</li>

					<li>마이페이지</li>
					<li>발급조회현황</li>
					<li><strong>확인서 발급 신청 내역 조회</strong></li>

				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<h3 class="tit_content">확인서 발급 신청 내역 조회</h3>

				<div id="viewPannel">

			<div id="bd03_01">
			
				<div class="tbl_type1">
			
				<form name="applform" method="post">
					<input type="hidden" name="cfmnnm">
					<input type="hidden" name="hrdno">
					<input type="hidden" name="orderno">
					<input type="hidden" name="issudttm">
					<input type="hidden" name="seriescd">
					<input type="hidden" name="cfmncd">
					<input type="hidden" name="dttm">
					<table summary="확인서 발급 신청 내역 조회 목록으로, 확인서 종류, 문서번호, 종목명, 발급신청일자, 출력여부 정보 제공">
						<caption>확인서 발급 신청 내역 조회 목록</caption>
						<colgroup>
							<col width="0%">
							<col width="25%">
							<col width="29%">
							<col width="26%">
							<col width="10%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">확인서 종류</th>
								<th scope="col">문서번호</th>
								<th scope="col">종목명</th>
								<th scope="col">발급신청일자</th>
								<th scope="col">출력여부</th>
							</tr>
						</thead>
						<tbody>
			
							<tr>
								<td colspan="6" class="noData">조회된 데이터가 없습니다.</td>
							</tr>
			
						</tbody>
					</table>
				</form>
				</div>
				<div class="pagination1">
										<div class="pagination1 mb20">
									<button type="button" class="btn3_icon3 btn_prev_first" title="이전10페이지"><span class="blind">이전10페이지</span></button>
									<button type="button" class="btn3_icon3 btn_prev_page" title="이전 페이지"><span class="blind">이전 페이지</span></button>
									<span class="page">
										<strong class="on" title="1페이지">1</strong>
									</span>
									<button type="button" class="btn3_icon3 btn_next_page" title="다음 페이지"><span class="blind">다음 페이지</span></button>
									<button type="button" class="btn3_icon3 btn_next_end" title="다음10페이지"><span class="blind">다음10페이지</span></button>
								</div>
			
				</div>
			</div>
			</div> 
			
							<div id="payMent" type="String[]"></div> 
			
			<form name="certify" method="post">
			<input type="hidden" name="hrdno" value="">
			<input type="hidden" name="empId" value="">
			<input type="hidden" name="perId" value="">
			<input type="hidden" name="seriescd" value="">
			<input type="hidden" name="issudttm" value="">
			<iframe name="if_1" style="display:none;width:0;height:0;"></iframe>
			</form>
			</div>
		</div>
		
	</div>
</article>