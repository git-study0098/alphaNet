<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
	
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
					<li>응시자격</li>
					<li><strong>응시자격서류 온라인제출</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="popup" id="dsdrInfo_view"></div><!-- 장애여부팝업 -->
			<div class="popup" id="ListPrintt_view"></div>
			<div class="popup" id="popup_view"></div><!-- 환불요금안내 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">응시자격서류 온라인 제출</h3>
				<!-- //컨텐츠 타이틀 -->
				
				<!-- 컨텐츠 내용 -->
				<div class="infoBox">
					<div>
						<ul class="list">
							<li><span class="fc_0">응시자격 서류 온라인 제출 서비스는 협약이 체결된 대학만 가능합니다.</span></li>
						</ul>
					</div>
					<span></span>
				</div>

				<div class="tbl_normal tbl_member">
					<table summary="진행중인 응시시험 원서 접수 내역 없음">
						<caption>진행중인 원서 접수내역</caption>
						<colgroup>
							<col width="10%"> <!-- th -->
							<col width="20%"> <!-- th -->
							<col width="15%"> <!-- th -->
							<col width="10%"> <!-- th -->
							<col width="20%"> <!-- th -->
						</colgroup>
						<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">응시종목명</th>
							<th scope="col">필요서류</th>
							<th scope="col">승인여부</th>
							<th scope="col">서류제출</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center !important;">1</td>
							<td style="text-align: center !important;">정보처리기사</td>
							<td style="text-align: center !important;">서류제공</td>
							<td style="text-align: center !important;">N</td>
							<td style="text-align: center !important;"><a href="<%=request.getContextPath()%>/member/documentSubmitForm">서류제출</a></td>
						</tr>
					</tbody>
					</table>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
	</div>
</article>