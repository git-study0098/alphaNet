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
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>실기 시험안내</li>
					<li><strong>실기시험 종목별 시험방법</strong></li>
				</ul>
			</div>

			<div class="content">
				<h3 class="tit_content">실기시험 종목별 시험방법</h3>
				<div id="viewList">
					<div class="tbl_type1">
						<table summary="번호,제목,담당부서,최종수정일자 항목으로 정보 제공"
							style="table-layout: fixed">
							<colgroup>
								<col width="5%">
								<col width="10%">
								<col width="15%">
								<col width="20%">
								<col width="30%">
								<col width="20%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">순번</th>
									<th scope="col">직무분야</th>
									<th scope="col">종목명</th>
									<th scope="col">실기시험방법</th>
									<th scope="col">시험시간</th>
									<th scope="col">배점</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>정보통신</td>
									<td>정보처리기사</td>
									<td>필답형</td>
									<td>3시간</td>
									<td>100</td>
								</tr>
								<tr>
									<td>2</td>
									<td>정보통신</td>
									<td>전자계산기조직응용기사</td>
									<td>복합형</td>
									<td>3시간</td>
									<td>100</td>
								</tr>
								<tr>
									<td>3</td>
									<td>정보통신</td>
									<td>정보처리산업기사</td>
									<td>필답형</td>
									<td>2시간30분</td>
									<td>100</td>
								</tr>
								<tr>
									<td>3</td>
									<td>정보통신</td>
									<td>정보처리산업기능사</td>
									<td>필답형</td>
									<td>2시간</td>
									<td>100</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</article>