<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
* {
	box-sizing: content-box;
}
</style>
<script>

</script>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/wonseoLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>



		<c:set value="${member}" var="member"/>
		<c:set value="${placeData}" var="vo"/>
		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 신청</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">
					원서접수 완료<span class="sel_subject">(응시종목:정보관리기술사)</span>
				</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep">
					<ul class="list01">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_01.gif" alt=""><span>자격선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_09.gif" alt=""><span>종목선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_03.gif" alt=""><span>응시유형</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_04.gif" alt=""><span>추가입력</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_05.gif" alt=""><span>장소선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_06.gif" alt=""><span>결제하기</span><span
							class="blind">현재단계 결제하기</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_07.gif" alt=""><span>접수완료</span></li>
					</ul>
				</div>


				<form name="backfrm" method="post"
					action="rcv002.do?id=rcv00208&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle=">
					<input type="hidden" name="cmd" value="R"> <input
						type="hidden" name="planId" value="PL2017456004"> <input
						type="hidden" name="seqNo" value="1"> <input type="hidden"
						name="selFld" value="00"> <input type="hidden" name="jmCd"
						value="0601"> <input type="hidden" name="sameRecptYN"
						value="N"> <input type="hidden" name="sameImplYN"
						value="N"> <input type="hidden" name="recptNo"
						value="R10048091258"> <input type="hidden" name="suNo"
						value="T4560149"> <input type="hidden" name="recptTyp"
						value="01"> <input type="hidden" name="recptDtl" value="1">
					<input type="hidden" name="jmNm" value="정보관리기술사">

					<!-- 뒤로가기 처리를 위한 추가 파라메터 BGN -->
					<input type="hidden" name="dsdrGb" value=""> <input
						type="hidden" name="dsdrReq" value="00"> <input
						type="hidden" name="dsdrGbNm" value=""> <input
						type="hidden" name="dsdrReqNm" value="없음"> <input
						type="hidden" name="emqualCd" value="T127"> <input
						type="hidden" name="qualGb" value="T"> <input
						type="hidden" name="recptSeqNo" value="1"> <input
						type="hidden" name="examLangCcd" value="">
				</form>


				<div class="tbl_type1 step_payment mb0">
					<p name="LGD_AX_GUIDE" id="LGD_AX_GUIDE" style="display: none;">
					</p>
					<p name="LGD_AX_GUIDE2" id="LGD_AX_GUIDE2" style="display: none;">
					</p>
					<div class="impt" style="margin:0 auto;">
					</div>
					<table>
							<caption>접수 완료</caption>
							<colgroup>
								<col width="20%">
								<col width="40%">
								<col width="15%">
								<col width="25%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">수험번호</th>
									<td colspan="3"><span class="blue" >${stare_code}</span></td>
								</tr>
								<tr>
								<th scope="row">이름</th>
									<td><span class="blue">${member.name}</span></td>
									<th scope="row">시험명</th>
									<td><span class="blue">${vo.em_nm}</span></td>
								
								</tr>
								<tr>
									<th scope="row">응시일</th>
									<td><span class="blue">${vo.numg_stare_date}</span></td>
									<th scope="row">응시장소</th>
									<td><span class="blue">${placeNm}</span></td>
								</tr>
							</tbody>
						</table>
				</div>
				<div class="btn_center mb40">
					<button type="button" name="payBtn" id="payBtn"
						class="btn2 btncolor1" onclick="location.href='main'">
						<span>메인</span>
					</button>
				</div>
				<div class="mb40" id="payWin"
					style="text-align: center; display: none; z-index: 1;">
					<iframe name="payFrame" id="payFrame" width="663px"
						title="결제 상세 내역" src="" frameborder="0" scrolling="no"
						style="margin: 0px auto;"></iframe>
				</div>
				
				</div>
			</div>
			<div id="dialogDiv" style="display: none; overflow-y: scroll;"></div>
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>

