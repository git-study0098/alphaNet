<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	*{box-sizing:content-box;}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/jagukLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>자격증/확인서</li>
					<li>자격증 발급</li>
					<li><strong>자격증 발급 신청 내역 조회</strong></li>
				</ul>
			</div>

			<div class="content">
				<h3 class="tit_content">자격증 발급 신청 내역 조회</h3>
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>해당 자격명(종목명)을 클릭하면 결제 또는 취소를 진행하실 수 있습니다.</li>
							<li>신청서 작성후 7일 이내에 결제를 하지 않을 경우 자동으로 취소됩니다.</li>
							<!-- 2015.06.09 jws :  이종용대리 요청 발급기간 안내 문구 추가 -->
							<li>최종합격자 발표가 있는 기간에는 자격증 발급량이 많아 배송기간 추가 소요 가능<b>(최대 2주
									소요)</b></li>
						</ul>
					</div>
					<span></span>
				</div>

				<div class="tbl_type1">
					<table
						summary="자격증 발급 신청 내역 조회 목록으로, 번호, 신청내역, 수령방법, 신청일자, 발급예정일, 발급진행상태 정보 제공">
						<caption>자격증 발급 신청 내역 조회 목록</caption>
						<colgroup>
							<col width="5%">
							<col width="26%">
							<col width="10%">
							<col width="10%">
							<col width="26%">
							<col width="23%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">자격명(종목명)</th>
								<th scope="col">수령방법</th>
								<th scope="col">신청일자</th>
								<th scope="col">발급예정일</th>
								<th scope="col">발급진행상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${viewData}" var="qualifi" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td><a href=""><strong>${qualifi.qualifi_certi_nm}</strong></a></td>
									<td>${qualifi.receive_way }</td>
									<td>${qualifi.receive_day }</td>
									<td>발급일로부터 5일 후 수령가능<br>(토,일,공휴일 제외)</td>
									<td>${qualifi.dr_state }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!--  페이징 처리 표시 -->
				<div class="pagination1">
					<div class="pagination mb20">
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

	</div>
</article>
