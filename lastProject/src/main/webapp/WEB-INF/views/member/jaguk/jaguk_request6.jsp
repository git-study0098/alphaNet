<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>
function showCard() {
	window.open("jagukPayment?mem_code=${viewData.mem_code}&qualifi_certi_iss_pr=${price}" ,"pop","left=650,top=150,width=850px,height=650px");
 }
function paymentCheck(){
	 location.href="<%=request.getContextPath()%>/member/jagukRequestSearch";
}
</script>

<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
<div>
		<jsp:include page="../../lnb/jagukLnb.jsp"/>
	   <div id="lnb2"></div>
	</div>
		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>자격증/확인서</li>
					<li>자격증 발급</li>
					<li><strong>자격증 발급 신청 내역</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">자격증 발급 신청 내역</h3>
				<hr>
				<div id="isr003_02_pop" class="popup" title="기본인증"></div> <!--  // popup -->
				<div id="showDeliveryStatus_pop" class="popup" title="배송조회"></div> <!-- // popup -->
				<h4>자격증 발급 신청 내역 [신청일련번호:D8003849117]</h4>
				<p class="fc_3 mb20">※ 신청서 작성후 7일 이내에 결제를 하지 않을 경우 자동으로 삭제됩니다.</p>
				<div class="tbl_normal isr_app mb40">
					<table summary="자격증 발급 신청 내역으로, 성명(한글), 주민번호, 전화번호(자택/직장/휴대전화), 주소, 관할지사, 수령방법, 인증방법, 신청일자, 발급예정일 정보 제공" class="table table-bordered">
						<colgroup>
							<col width="120px"> <!-- th -->
							<col width="177px"> <!-- td -->
							<col width="120px"> <!-- th -->
							<col width="177px"> <!-- td -->
							<col width="130px"> <!-- photo -->
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">성명</th>
								<td>${viewData.mem_nm }</td>
								<th scope="row">주민번호</th>
								<td>${viewData.reg_num1}-*******</td>
								<td class="photo" rowspan="5">
									<p><img src="<%=request.getContextPath() %>/resources/upload/image/${viewData.mem_photo}" alt="신청 사진"><!-- //2014.11.21 이미지에 맞는 alt값 필요 : 성명+사진 --></p>
								</td>
							</tr>
							<tr>
								<th scope="row">전화번호</th>
								<td>${viewData.mem_phone}</td>
								<th scope="row">휴대전화</th>
								<td>${viewData.mem_phone}</td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td colspan="3"><p style="width:444px">(${viewData.mem_post_numb1}) ${viewData.mem_add1} ${viewData.mem_add2} ${viewData.mem_add3}</p></td>
							</tr>
							<tr>
								<th scope="row">

									관할지사

								</th>
								<td colspan="3">대전지역본부 042-580-9136</td>
							</tr>

							<tr>
								<th scope="row">수령방법</th>
								<td>우편수령</td>
								<th scope="row">인증방법</th>
								<td>기본인증</td>
							</tr>

							<tr>
								<th scope="row">신청일자</th>
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<td><fmt:formatDate value="${now}" pattern="yyyy/MM/dd"/></td>
								<th scope="row">발급예정일</th>
								<td colspan="2">발급일로부터 5일 후 수령가능(토,일,공휴일 제외)</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h4>자격증 내역(1건)</h4>
				<div class="tbl_type1 mb40">
					<table summary="자격증 내역으로, 자격증 번호, 종목명(취득시 종목명), 필기 합격일자, 최종 합격일자, 비고, 발급 수수료 정보 제공" style="table-layout:fixed" class="table-bordered">
						<colgroup>
							<col width="15%">
							<col width="18%">
							<col width="10%">
							<col width="10%">
							<col width="16%">
							<col width="21%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">자격증<br>번호</th>
								<th scope="col">종목명<br>(취득시 종목명)</th>
								<th scope="col">필기<br>합격일자</th>
								<th scope="col">최종<br>합격일자</th>
								<th scope="col">비고</th>

								<th scope="col" class="td">발급<br>수수료</th>
							</tr>

						</thead>
						<tbody>
							<c:forEach items="${viewData2}" var="qualifi" varStatus="numbering">
										<tr> 
										<input type="hidden" name="choice" value="${qualifi.qualifi_certi_code}">
											<td>${qualifi.qualifi_certi_code }</td>
											<td>${qualifi.exkind_nm }</td>
											<td>${qualifi.written_pass_date }</td>
											<td>${qualifi.actual_pass_date }</td>
											<td>${qualifi.qualifi_certi_count }</td>
											<td>${qualifi.qualifi_certi_iss_pr}</td>
										</tr>
									</c:forEach>
							
						</tbody>
					</table>
				</div>



				<h4>결제정보</h4>
				<div class="tbl_normal thRight mb40">
					<table summary="결제정보로, 결제방법, 결제금액, 승인일자, 승인정보 정보 제공" class="table table-bordered">
						<colgroup>
							<col width="120px"> <!-- th -->
							<col width="168px"> <!-- td -->
							<col width="120px"> <!-- th -->
							<col width="*"> <!-- td -->
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">결제방법</th>
								<td>미결제</td>
								<th scope="row">결제금액</th>
								<td>(발급수수료 : ${price} 원  배송비 : 2,340원)</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h4>배송방법</h4>
				<div class="tbl_normal thRight mb20">
					<table summary="배송방법으로, 배송방법, 배송지 주소, 연락처, 등기번호, 택배사, 배송시유의사항 정보 제공" class="table table-bordered">
						<colgroup>
							<col width="120px"> <!-- th -->
							<col width="168px"> <!-- td -->
							<col width="120px"> <!-- th -->
							<col width="*"> <!-- td -->
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">배송방법</th>
								<td>배송</td>
								<th scope="row">배송지주소</th>
								<td> ${viewData.mem_add1}${viewData.mem_add2 }${viewData.mem_add3 }</td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td>${viewData.mem_phone}</td>
								<th scope="row">배송시유의사항</th>
								<td>${dlvrHhCautionMatt}</td>
							</tr>

						</tbody>
					</table>
					<ul class="cont_clist9 mt40">
						<li>※ 휴대폰번호는 배송시 문자 안내용이므로 반드시 휴대전화번호를 기재 바랍니다. </li>
						<li>※ 인터넷으로 자격증을 발급 신청한 후 방문수령하고자 할 때 <span class="fc_r">본인이 직접 방문시는 본인 신분증, 대리인이 방문시는 본인신분증, 대리인신분증 을 필히 지참</span>하시기 바랍니다. </li>
						<li>※ 미성년자의 신분증으로 학생증을 지참하실 경우 <span class="fc_r">사진과 주민등록번호가 모두 명시된 학생증</span>에 한하여, 주민등록번호가 명시되어 있지 않은 경우는 주민등록등본을 함께 지참하시기 바랍니다.</li>
					</ul>
				</div>

				<div class="btn_center m0">
					<button type="button" id="payBtn" class="btn2 btncolor2 btn-sm btn-primary" onclick="showCard()"><span>결제</span></button>
 					<button type="button" id="modifyBtn" class="btn2 btncolor3 btn-sm btn-warning" onclick="frmSubmit();"><span>수정</span></button>
					<button type="button" id="cancelBtn" class="btn2 btncolor4 btn-sm btn-danger" onclick="location.href='1main.jsp'"><span>메인으로</span></button>

				</div>
				<br>
				<div id="payWin" class="mt20" style="text-align: center; display: block; z-index: 1;">
				</div>
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>
