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
					<li>면제정보보기</li>
					<li><strong>시험면제</strong></li>

				</ul>
			</div>
			<!-- //location -->

			<div class="content">
			<form name="schfrm" method="post" action="">
				<input type="hidden" id="workYn" name="workYn">
				<input type="hidden" id="workSeq" name="workSeq">
				<input type="hidden" id="examGbCcd" name="examGbCcd">
				<input type="hidden" id="extraCol1" name="extraCol1">
				<input type="hidden" id="implPlanId" name="implPlanId">
				<input type="hidden" id="jmCd" name="jmCd">
				<input type="hidden" id="examBaseGb" name="examBaseGb">
				<input type="hidden" id="seqNo" name="seqNo">
				<input type="hidden" id="baseSeq" name="baseSeq">
				<input type="hidden" id="emqualCd" name="emqualCd">
				<input type="hidden" id="aprvStatCcd" name="aprvStatCcd">
				<input type="hidden" id="examKmVal" name="examKmVal" value="EXAM">

				<h3 class="tit_content">시험면제</h3>
				<!-- TAB -->


				<p class="mb10">※ 동일 직무분야 및 등급의 국가기술자격을 취득한 날로부터 2년간만 검정과목 면제 가능(`14.1.1부터 적용)</p>

				<div class="tbl_normal tdCenter">
					<table summary="시험면제 목록으로, 종목, 구분, 선택분야, 면제구분, 유효기간, 승인상태 정보 제공">
						<caption>시험면제 목록</caption>
						<colgroup>
							<col width="18%">
							<col width="10%">
							<col width="20%">
							<col width="20%">
							<col width="22%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">종목</th>
								<th scope="col">구분</th>
								<th scope="col">선택분야</th>
								<th scope="col">면제구분</th>
								<th scope="col">유효기간</th>
								<th scope="col">승인상태</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td>정보처리기사</td>
								<td>필기</td>
								<td>선택분야없음</td>

								<td>필기 시험 합격</td>

								<td>2016.05.19 ~ 2018.05.18</td>
								<td>승인</td>
							</tr>

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


			</form>
			</div>
		</div>
		
	</div>
</article>