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
					<li>원서접수관리</li>
					<li><strong>시험결과 보기</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<input type="hidden" id="implPlanId" name="implPlanId">
			<input type="hidden" id="seqNo" name="seqNo">
			<input type="hidden" id="suno" name="suno">
			<input type="hidden" id="gId" name="gId">
			<div class="content">
				<h3 class="tit_content">시험결과 보기</h3>
				<div class="tbl_type1">
					<table summary="시험결과 보기로, 시험명, 구분, 수험번호, 응시종목, 시험결과 정보 제공">
						<caption>시험결과 보기</caption>
						<colgroup>
								<col width="25%">
								<col width="15%">
								<col width="15%">
								<col width="*">
								<col width="10%">
							</colgroup>
						<thead>
							<tr>
								<th scope="col">시험명</th>
								<th scope="col">구분</th>
								<th scope="col">수험번호</th>
								<th scope="col">응시종목</th>
								<th scope="col">시험결과</th>
							</tr>
						</thead>
						<tbody>

							<!-- S :조회된 데이터가 없을때 -->
							<tr>
								<td colspan="5" class="noData">조회된 데이터가 없습니다.</td>
							</tr>
							<!--// e :조회된 데이터가 없을때 -->

						</tbody>
					</table>
				</div>
									<div class="pagination1 mb20">
						<button type="button" class="btn3_icon3 btn_prev_first" title="이전10페이지"><span class="blind">이전10페이지</span></button>
						<button type="button" class="btn3_icon3 btn_prev_page" title="이전 페이지"><span class="blind">이전 페이지</span></button>
						<span class="page">
							<strong class="on" title="1페이지">1</strong>
						</span>
						<button type="button" class="btn3_icon3 btn_next_page" title="다음 페이지"><span class="blind">다음 페이지</span></button>
						<button type="button" class="btn3_icon3 btn_next_end" title="다음10페이지"><span class="blind">다음10페이지</span></button>
					</div>

				<div class="infoBox">
					<div>
						<p class="impt">

					※ “시험결과 보기” 는 당해년도에 발표중인 시험만 조회되며, <span class="fc_r">합격자 발표기간에는 수험번호를 클릭하면 득점내역을 조회할 수 있습니다.</span>
					 단, 전문자격의 “시험결과보기”는 해당시험의 합격자발표기간(발표일로부터 60일간)만 조회됩니다.

						</p>
					</div>
					<span></span>
				</div>

				<div class="add_dataBox" style="display: none;">
					<p class="txt_grayBox" id="viewSearchPannel1"></p>

					<div class="none_date" id="viewSearchPannel2"></div>
					<div id="viewPannel"></div>
				</div>
			</div>
		</div>
		
	</div>
</article>