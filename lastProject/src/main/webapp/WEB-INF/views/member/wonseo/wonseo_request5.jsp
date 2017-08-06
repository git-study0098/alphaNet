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
 function showCard() {
	window.open("wonseoPayment?placeNm=${placeNm}&em_pay_pr=${placeData.em_pay_pr}" ,"pop","left=650,top=150,width=850px,height=650px");
 }
 function paymentCheck(){
	 location.href='<%=request.getContextPath()%>/member/wonseoReq6?placeNm=${placeNm}&em_info_code=${em_info_code}';
 }

</script>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/wonseoLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>




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
					원서접수 신청<span class="sel_subject">(응시종목:${exam}(${exam2}))</span>
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

				<form name="myfrm" method="post"
					action="rcv002.do?id=rcv00209s01&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle=">

					<input type="hidden" name="amount" value="67800">
					<!-- 결제 금액 -->
					<input type="hidden" name="juminNo" value="9102041409018">
					<!-- 주민등록번호 -->
					<input type="hidden" name="recptNo" value="R10048091258">
					<!-- 주문번호 -->
					<input type="hidden" name="jmCd" value="0601">
					<!-- 상품명 -->
					<input type="hidden" name="shopvalue"
						value="PL2017456004;910204-*******;0601">
					<!-- 쇼핑몰 추적번호(자체처리필드) -->
					<input type="hidden" name="payType" value="">
					<!-- 결제 수단 (CARD/BANK/VBANK/MOBL) -->

					<!-- 결제하기 -->
					<div class="tbl_type1 step_payment mb0">
						<table
							summary="최종 결제정보 확인 폼으로로, 접수종목, 검정수수료, 시험장소, 시험일시에 대한 결제 정보 제공 ">
							<caption>결제 정보</caption>
							<colgroup>
								<col width="15%">
								<col width="45%">
								<col width="15%">
								<col width="25%">
							</colgroup>
							<tbody>
							<c:set value="${placeData}" var="placeData"/>
								<tr>
									<th scope="row">접수종목</th>
									<td><span class="blue">${placeData.em_nm}</span></td>
									<th scope="row">검정수수료</th>
									<td><span class="blue">${placeData.em_pay_pr}</span></td>
								</tr>



								<tr>
									<th scope="row">시험장소 및<br>일시</th>
									<td>
										<span class="name"> ${placeNm}</span>
									</td>
										<th scope="row">날짜/시간</th>
										<td colspan="3">
										<span class="name">${placeData.numg_stare_date}</span>
										</td>
								</tr>
							</tbody>
						</table>
					</div>

				</form>

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



				<div class="activex_down">
					<p name="LGD_AX_GUIDE" id="LGD_AX_GUIDE" style="display: none;">
					</p>
					<p name="LGD_AX_GUIDE2" id="LGD_AX_GUIDE2" style="display: none;">
					</p>
					<p class="impt">
						※ <b>결제가 완료되어야 선택한 시험장소 확정 및 접수가 완료</b>됨을 알려드리니 유의하시기 바랍니다.
					</p>
				</div>
				<div class="btn_center mb40">
					<button type="button" name="backBtn" id="backBtn"
						class="btn2 btncolor1" onclick="location.href='5장소선택.jsp'">
						<span>이전</span>
					</button>
					<!-- 접수번호:[R10048091258] -->
					<button type="button" name="payBtn" id="payBtn"
						class="btn2 btncolor1" onclick="showCard();">
						<span>결제하기</span>
					</button>
				</div>
				<div class="mb40" id="payWin"
					style="text-align: center; display: none; z-index: 1;">
					<iframe name="payFrame" id="payFrame" width="663px"
						title="결제 상세 내역" src="" frameborder="0" scrolling="no"
						style="margin: 0px auto;"></iframe>
				</div>
				<form name="payForm" method="post">
					<input type="hidden" name="site_code" value="hrd_ap">
					<!-- 상점아이디 -->
					<input type="hidden" name="amount" value="67800">
					<!-- 결제 금액 -->
					<input type="hidden" name="soc_no" value="910204-*******">
					<!-- 주민등록번호 -->
					<input type="hidden" name="order_id" value="R10048091258">
					<!-- 주문번호 -->
					<input type="hidden" name="ordr_good_name" value="0601">
					<!-- 상품명 -->
					<input type="hidden" name="order_name" value="황창연">
					<!-- 주문자명 -->
					<input type="hidden" name="order_tel1" value="">
					<!-- 주문자 전화번호 -->
					<input type="hidden" name="order_tel2" value="010-3440-2727">
					<!-- 주문자 휴대폰번호 -->
					<!-- <input type="hidden" name="order_email"    value="" /> 주문자 이메일 -->
					<input type="hidden" name="order_email" value="">
					<!-- 주문자 이메일 2016.01.01.19 jws : 이종용과장 요청 이메일 안넘김-->
					<input type="hidden" name="good_cnt" value="000">
					<!-- 상품 개수 -->
					<input type="hidden" name="shop_value"
						value="PL2017456004;0601;910204-*******;1">
					<!-- 쇼핑몰 추적번호(자체처리필드) -->
					<input type="hidden" name="pay_type" value="">
					<!-- 결제 수단 (CARD/BANK/VBANK/MOBL) -->
					<input type="hidden" name="cli_type" value="ind">
					<!-- 접수 종류 (ind/gro/issue/cer) -->
					<input type="hidden" name="ret_val1" value="R10048091258">
					<!-- 결과 페이지 호출용 파라미터 -->
					<input type="hidden" name="ret_val2"
						value="|gSite=Q|gId=01|rcvPFlag=Y|gTitle=">
					<!-- 결과 페이지 호출용 파라미터 -->
					<input type="hidden" name="expire_date" value="20170708140500">
					<!-- 가상계좌 입금 기한 -->
					<input type="hidden" name="method" value=""> <input
						type="hidden" name="exam_area" value="대구공업고등학교(필답형)">
					<!-- 시험장소 -->
					<input type="hidden" name="exam_date" value="2017-08-12 08:30(필답형)">
					<!-- 시험일시 -->

					<input type="hidden" name="exam_cnt" value="1"> <input
						type="hidden" name="LGD_CUSTOM_USABLEPAY"
						value="SC0030-SC0010-SC0040">
					<!-- 가능 결제수단 LIST -->
					<!-- LGDACOM PARAM -->
					<input type="hidden" name="v_rvdtst" value="">
					<!-- 가상계좌 가능 여부 1 이상이면 가능 -->
					<input type="hidden" name="v_tmchk" value="">
					<!-- 가상계좌 가능 여부  -->
					<input type="hidden" name="v_week" value="">
					<!-- 가상계좌 가능 여부  -->
					<input type="hidden" name="productinfo" value="정보관리기술사">
					<!-- 상품명 -->
					<input type="hidden" name="productcode" value="0601">
					<!-- 상품코드 -->
					<input type="hidden" name="pg" value="LGDACOM">
					<!-- 결제 PG -->
					<input type="hidden" name="show_btn" value="N">
					<!-- 결제버튼 view 여부 -->
					<input type="hidden" name="hashKey"
						value="73f16b66ada907641c75a59cdf537d57"> <input
						type="hidden" name="gyno" value="">
					<!-- 고유번호 -->
				</form>
				
				<h4>국가자격시험 원서접수 결제수단 안내</h4>
				<div class="cont_parbx">
					<ul class="list">
						<li><span class="fc_r" style="font-weight: bold;">
								가상계좌(무통장입금) : 은행만 선택하여 가상계좌 발급 후 입금(현금영수증 발급 가능)</span>
							<ul class="impt">
								<li><span class="fc_r" style="font-weight: bold;">※
										가상계좌발급 후 -&gt; 익일 14시까지 입금</span> (인터넷 뱅킹, 텔레뱅킹, 폰뱅킹, 은행창구, ATM기)</li>
							</ul></li>
						<li>계좌이체 : 은행 , 출금계좌번호, 비밀번호(4자리) , 주민등록번호(13자리) , 예금주 입력하여
							결제</li>
						<li>신용카드 : 카드번호(16자리) , 유효기간(월,년) , 주민등록번호 (앞6자리) ,
							비밀번호(앞2자리) 입력하여 결제</li>
					</ul>
				</div>

				<h4>접수 수수료 결제마감 시한</h4>
				<div class="cont_parbx">
					<h5>원서작성 완료 후 접수수수료 미결제상태인 다음의 경우는 결제 가능</h5>
					<ul class="list">
						<li>가상계좌이체 신청에 의해 가상계좌번호를 채번받았을 경우 : 접수익일 14시까지 가능</li>
						<li>계좌이체 및 신용카드 결제 신청 시 : 시험장소 수용인원 여유가 있을 경우에만 접수종료익일 12시까지</li>
						<li>단, 상시검정의 경우에는 가상계좌번호 채번이 접수한 주 목요일 18시까지만 가능
							<ul class="impt">
								<li>※ 시험장소 및 일자는 한정되어 있으므로 수수료 결제순에 의해 선착순 배정됨</li>
								<li>※ 결제마감 시한까지 접수수수료를 결제하지 않으면 수험원서접수가 자동취소 됨</li>
							</ul>
						</li>
					</ul>
				</div>

				<div id="divInfoVBank" style="display: none;">
					<h4>가상계좌 수수료 입금 기한</h4>
					<div class="cont_parbx">
						<p class="list">
							정기/상시검정 : 인터넷접수기간중 가상계좌번호 부여받은일 다음날 오후14시까지 인터넷 수험원서 <strong
								class="fc_r">접수 수수료</strong>를 기한내에 <strong class="fc_r">입금을
								하지 않으면 수험원서 제출이 자동 취소</strong>됩니다. 가상계좌 입금시 수험자의 주거래은행 신용도 및 창구이용입금,
							자동화기기 이용입금 시 각각의 은행별로 정해진 입금수수료가 부과될 수 있습니다.
						</p>
					</div>

					<h4>가상계좌번호 채번 가능 기한</h4>
					<div class="cont_parbx">
						<ul class="list">
							<li>정기검정 : 원서접수 마감당일 18:00시까지</li>
							<li>상시검정 : 원서접수한 주의 목요일 18:00시까지</li>
						</ul>
					</div>
				</div>

				<h4>인터넷 접수 취소/환불 기간</h4>
				<div class="cont_parbx">
					<h5>국가기술자격검정</h5>
					<ul class="list">
						<li>100% 전액환불 : 원서접수기간(마감일 23:59:59까지)</li>
						<li>50% 부분환불 : 접수마감 다음날 ~ 검정시행일 5일전 까지(필/실기)</li>
					</ul>
					<h5>자격검정 원서접수 취소시 환불 적용기간 안내</h5>
					<ul class="list mb10">
						<li>필기시험 : 시험당일로부터 5일전까지</li>
						<li>실기시험 : 회별시험시작일로부터 5일전까지</li>
					</ul>

					<div class="tbl_type3 mb10">
						<table class="per_doc" cellpadding="0" cellspacing="0"
							summary="자격검정 원서접수 취소시 환불 적용기간 안내로, 적용기간, 환불적용률 정보 제공">
							<caption>자격검정 원서접수 취소시 환불 적용기간 안내</caption>
							<colgroup>
								<col width="16%">
								<col width="20%">
								<col width="20%">
								<col width="4%">
								<col width="4%">
								<col width="4%">
								<col width="4%">
								<col width="28%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" rowspan="2">적용기간</th>
									<th scope="row">접수기간 중</th>
									<th scope="row">접수기간 후</th>
									<th scope="row" colspan="4">시험시행 4일전</th>
									<th scope="row" class="fc_r">당해시험일</th>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>4일</td>
									<td>3일</td>
									<td>2일</td>
									<td>1일</td>
									<td>필기:시험당일 / 실기:회별시험시작일</td>
								</tr>
								<tr>
									<th scope="row">환불적용률</th>
									<td>접수취소시 환불:100%</td>
									<td>접수취소시 환불:50%</td>
									<td colspan="5" class="fc_r"><strong>환불취소 불가</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					<ul class="list impt">
						<li>※ 100% 환불 ( 2017년 7월 7일 (금) 오전 09:00 ~ 2017년 7월 13일 (목)
							오후 11:59 )</li>
						<li></li>
						<li>※ 50% 환불 ( 2017년 7월 14일 (금) 오전 00:00 ~ 2017년 8월 7일 (월) 오후
							11:59 )</li>
						<li></li>
					</ul>
				</div>
			</div>
			<div id="dialogDiv" style="display: none; overflow-y: scroll;"></div>
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>

