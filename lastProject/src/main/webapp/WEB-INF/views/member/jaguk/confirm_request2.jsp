<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* {	box-sizing: content-box;}

.pagination1 {	text-align: center;}

.pagination1 .page {	margin: 0 15px}

.pagination1 .on {	height: 26px;	line-height: 23px;	padding: 0 9px;	display: inline-block;	color: #fff;	border: 1px solid #fff;	background: #5c5c5c;	vertical-align: middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
	<jsp:include page="../../lnb/jagukLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>자격증/확인서</li>
					<li>확인서 발급</li>
					<li><strong>확인서 발급 신청 내역 조회</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">확인서 발급 신청 내역 조회</h3>

				<div id="viewPannel">
















					<div id="bd03_01">

						<div class="tbl_type1">

							<form name="applform" method="post">
								<input type="hidden" name="cfmnnm"> <input type="hidden"
									name="hrdno"> <input type="hidden" name="orderno">
								<input type="hidden" name="issudttm"> <input
									type="hidden" name="seriescd"> <input type="hidden"
									name="cfmncd"> <input type="hidden" name="dttm">
								<table
									summary="확인서 발급 신청 내역 조회 목록으로, 확인서 종류, 문서번호, 종목명, 발급신청일자, 출력여부 정보 제공">
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
											<td><input type="hidden" name="cfmncd" value="01">
												<input type="hidden" name="cfmnnm" value="시험접수확인서 (필기)">
												<input type="hidden" name="seriescd" value="03"> <input
												type="hidden" name="hrdno" value="HRD-20170710140818-50714">
												<input type="hidden" name="orderno" value="A0006023337">
												<input type="hidden" name="issudttm" value="2017.07.10">
												<input type="hidden" name="dttm" value="20170710140818">
											</td>
											<td>시험접수확인서 (필기)</td>
											<td>HRD-20170710140818-50714</td>
											<td>정보처리기사</td>
											<td>2017.07.10</td>

											<td><button type="button" title="확인서 팝업"
													class="btn3_type2" onclick="getsearch(1,1)">
													<span>인쇄</span>
												</button></td>

										</tr>

										<tr>
											<td><input type="hidden" name="cfmncd" value="01">
												<input type="hidden" name="cfmnnm" value="시험접수확인서 (실기)">
												<input type="hidden" name="seriescd" value="03"> <input
												type="hidden" name="hrdno" value="HRD-20170710140705-50703">
												<input type="hidden" name="orderno" value="A0006023326">
												<input type="hidden" name="issudttm" value="2017.07.10">
												<input type="hidden" name="dttm" value="20170710140705">
											</td>
											<td>시험접수확인서 (실기)</td>
											<td>HRD-20170710140705-50703</td>
											<td>정보처리기사</td>
											<td>2017.07.10</td>

											<td><button type="button" title="확인서 팝업"
													class="btn3_type2" onclick="getsearch(2,1)">
													<span>인쇄</span>
												</button></td>

										</tr>

										<tr>
											<td><input type="hidden" name="cfmncd" value="01">
												<input type="hidden" name="cfmnnm" value="시험접수확인서 (실기)">
												<input type="hidden" name="seriescd" value="03"> <input
												type="hidden" name="hrdno" value="HRD-20170710140705-50702">
												<input type="hidden" name="orderno" value="A0006023325">
												<input type="hidden" name="issudttm" value="2017.07.10">
												<input type="hidden" name="dttm" value="20170710140705">
											</td>
											<td>시험접수확인서 (실기)</td>
											<td>HRD-20170710140705-50702</td>
											<td>정보처리기사</td>
											<td>2017.07.10</td>

											<td><button type="button" title="확인서 팝업"
													class="btn3_type2" onclick="getsearch(3,1)">
													<span>인쇄</span>
												</button></td>

										</tr>

										<tr>
											<td><input type="hidden" name="cfmncd" value="01">
												<input type="hidden" name="cfmnnm" value="시험접수확인서 (실기)">
												<input type="hidden" name="seriescd" value="03"> <input
												type="hidden" name="hrdno" value="HRD-20170710140538-50693">
												<input type="hidden" name="orderno" value="A0006023316">
												<input type="hidden" name="issudttm" value="2017.07.10">
												<input type="hidden" name="dttm" value="20170710140538">
											</td>
											<td>시험접수확인서 (실기)</td>
											<td>HRD-20170710140538-50693</td>
											<td>정보처리기사</td>
											<td>2017.07.10</td>

											<td><button type="button" title="확인서 팝업"
													class="btn3_type2" onclick="getsearch(4,1)">
													<span>인쇄</span>
												</button></td>

										</tr>


									</tbody>
								</table>
							</form>
						</div>
						<div class="pagination1">
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

				<div id="payMent" type="String[]"></div>

				<form name="certify" method="post">
					<input type="hidden" name="hrdno" value=""> <input
						type="hidden" name="empId" value=""> <input type="hidden"
						name="perId" value=""> <input type="hidden"
						name="seriescd" value=""> <input type="hidden"
						name="issudttm" value="">
					<iframe name="if_1" style="display: none; width: 0; height: 0;"></iframe>
				</form>
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
