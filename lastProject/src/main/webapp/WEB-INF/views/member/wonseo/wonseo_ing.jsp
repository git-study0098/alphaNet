<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* { box-sizing: content-box;}

.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수현황</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<h3 class="tit_content">원서접수현황</h3>
				<form name="schfrm" method="post"
					action="rcv003.do?id=rcv00302&amp;gSite=Q&amp;gId=&amp;rcvPFlag=Y&amp;gTitle=">
					<input type="hidden" name="planId" value=""> <input
						type="hidden" name="seqNo" value=""> <input type="hidden"
						name="implYY" value=""> <input type="hidden"
						name="implSeq" value=""> <input type="hidden" name="jmCd"
						value=""> <input type="hidden" name="sameYN" value="">
					<input type="hidden" name="sameImplYN" value="">

					<!-- 원서접수현황 -->
					<div class="infoBox">
						<div>
							<p class="list">
								이메뉴는 원서접수기간중 시험장소별 접수인원을 실시간으로 조회하는 메뉴입니다.<br>(수험표출력은【마이페이지】메뉴를
								이용하시기 바랍니다.)
							</p>
						</div>
						<span></span>
					</div>
					<div class="original_apt">
						<div class="tbl_normal">
							<table summary="원서접수현황 목록으로, 응시시험, 접수기간, 보기 정보제공">
								<caption>원서접수현황 목록</caption>
								<colgroup>
									<col width="38%">
									<col width="48%">
									<col width="14%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">응시시험</th>
										<th scope="col">접수기간</th>
										<th scope="col">보기</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td>2017년 제 12회 한국어교육능력검정시험 1,2차 동시</td>
										<td class="txt_center">2017년 07월 17일(월) 09:00 ~ 2017년 07월
											26일(수) 18:00</td>
										<td class="center"><button type="button"
												class="btn3_type2"
												onclick="javascript:goNextDetailVeiw('36','Q','2017','12','PL2017457014','Y','20170717','S','Y');">
												<span>현황보기</span>
											</button></td>
									</tr>

									<tr>
										<td>2017년 제 25회 청소년지도사 필기</td>
										<td class="txt_center">2017년 07월 17일(월) 09:00 ~ 2017년 07월
											26일(수) 18:00</td>
										<td class="center"><button type="button"
												class="btn3_type2"
												onclick="javascript:goNextDetailVeiw('66','Q','2017','25','PL2017457024','1','20170717','S','Y');">
												<span>현황보기</span>
											</button></td>
									</tr>

									<tr>
										<td>2017년 제 5회 행정사 2차</td>
										<td class="txt_center">2017년 07월 17일(월) 09:00 ~ 2017년 07월
											26일(수) 18:00</td>
										<td class="center"><button type="button"
												class="btn3_type2"
												onclick="javascript:goNextDetailVeiw('31','Q','2017','5','PL2017459004','2','20170717','S','Y');">
												<span>현황보기</span>
											</button></td>
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
				</form>
			</div>
		</div>

	</div>
</article>