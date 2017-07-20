<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
								<td>황병준</td>
								<th scope="row">주민번호</th>
								<td>920412-*******</td>
								<td class="photo" rowspan="5">
									<p><img src="<%=request.getContextPath()%>/resources/images/step/sora.jpg" alt="신청 사진"><!-- //2014.11.21 이미지에 맞는 alt값 필요 : 성명+사진 --></p>
								</td>
							</tr>
							<tr>
								<th scope="row">전화번호</th>
								<td>042-625-2834</td>
								<th scope="row">휴대전화</th>
								<td>010-5140-2834</td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td colspan="3"><p style="width:444px">(34383) 대전광역시 대덕구 계족로663번길 30, 1동306호(법동, 삼정하이츠타운)</p></td>
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
								<td>2017.07.07</td>
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
							<tr>
								<td>16201130169Z</td>
								<td>정보처리기사</td>
								<td>2016.03.17</td>
								<td>2016.05.06</td>
								<td>신규발급</td>

								<td>3,100원</td>
							</tr>

							
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
								<td>(발급수수료 : 3,100 원  배송비 : 2,340원)</td>
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
								<td> ${viewData.add1}${viewData.add2 }${viewData.add3 }</td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td>${viewData.mem_phone}</td>
								<th scope="row">배송시유의사항</th>
								<td></td>
							</tr>

							<tr>
								<th scope="row">택배사</th>
								<td></td>
								<th scope="row">등기번호</th>
								<td><button onclick="showDeliveryStatus_pop('')"><span style="color:blue;"><b></b></span></button> <span style="color:blue;">등기번호를 클릭하시면 배송조회를 할 수 있습니다.</span>
								</td>
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
					<button type="button" id="payBtn" class="btn2 btncolor2 btn-sm btn-primary" onclick="location.href='jaguk_true'"><span>결제</span></button>
 					<button type="button" id="modifyBtn" class="btn2 btncolor3 btn-sm btn-warning" onclick="frmSubmit();"><span>수정</span></button>
					<button type="button" id="cancelBtn" class="btn2 btncolor4 btn-sm btn-danger" onclick="location.href='1main.jsp'"><span>메인으로</span></button>

				</div>
				<br>
				
					<!-- 접수증 쿠키삭제 안내문구 -->



				<form name="frm" id="frm">

					<input type="hidden" name="certTrnsNo" value=""> <!-- 인증거래번호 -->
					<input type="hidden" name="certResdNo" value=""> <!-- 주민번호-->
					<input type="hidden" name="certHgulNm" value=""> <!-- 성명-->
					<input type="hidden" name="certGoodsNm" value=""> <!-- 상품명-->
					<input type="hidden" name="certgoodsAmt" value=""> <!-- 상품금액-->
					<input type="hidden" name="certSplyTrnsNo" value=""> <!-- 공급자거래번호-->
					<input type="hidden" name="certMphoneCertRsltCcd" value=""> <!-- 휴대폰인증결과[c코드]-->
					<input type="hidden" name="certCertDttm" value=""> <!-- 인증일시-->
					<input type="hidden" name="certMphoneId" value=""> <!-- 휴대폰식별자-->
					<input type="hidden" name="certmPhoneCompCcd" value=""> <!-- 이동통신사[c코드]-->
					<input type="hidden" name="certCertSvcId" value=""> <!-- 인증서비스아이디-->

					<input name="strUploadFileName" type="hidden" value="20170707100224_02157">
					<input type="hidden" name="applNo" value="D8003849117">
					<input type="hidden" name="resdNo" value="9204121284511">
					<input type="hidden" name="modiYn" value="Y">
					<input type="hidden" name="setlStat" value="미결제">
					<input type="hidden" name="certMethCcd" value="J">
					<input type="hidden" name="recptMethCcd" value="P">
					<input type="hidden" name="setlStatCcd" value="">

					<input type="hidden" name="phtPath" value="PL2016392005/2/13008898">
					<input type="hidden" name="preQualGiveGbCcd" value="">
					<input type="hidden" name="planId" value="PL2016392005">
					<input type="hidden" name="seqNo" value="2">
					<input type="hidden" name="suNo" value="13008898">
					<input type="hidden" name="issuPrgsStatCcd" value="10">

				</form>

				<!-- [LG데이콤] 결제창에 넘길 폼 -->
				<form name="payForm" method="post">
					<input type="hidden" name="site_code" value="hrd_de"> <!-- 상점아이디 -->
					<input type="hidden" name="amount" value="5440"> <!-- 결제 금액 -->
					<input type="hidden" name="soc_no" value="920412-*******"> <!-- 주민등록번호 -->
					<input type="hidden" name="order_id" value="D8003849117"> <!-- 주문번호 -->
					<input type="hidden" name="ordr_good_name" value="자격증"> <!-- 상품명 -->
					<input type="hidden" name="order_name" value="황병준"> <!-- 주문자명 -->
					<input type="hidden" name="order_tel1" value=""> <!-- 주문자 전화번호 -->
					<input type="hidden" name="order_tel2" value=""> <!-- 주문자 휴대폰번호 -->
					<input type="hidden" name="order_email" value=""> <!-- 주문자 이메일 -->
					<input type="hidden" name="good_cnt" value="000"> <!-- 상품 개수 -->
					<input type="hidden" name="shop_value" value="D8003849117"> <!-- 쇼핑몰 추적번호(자체처리필드) -->
					<input type="hidden" name="pay_type" value=""> <!-- 결제 수단 (CARD/BANK/VBANK/MOBL) -->
					<input type="hidden" name="cli_type" value="issue"> <!-- 접수 종류 (ind/gro/issue/cer) -->
					<input type="hidden" name="ret_val1" value="D8003849117"> <!-- 결과 페이지 호출용 파라미터 -->
					<input type="hidden" name="ret_val2" value="|gSite=Q|gId="> <!-- 결과 페이지 호출용 파라미터 -->
					<input type="hidden" name="post_dlvr_fee" value="2340"> <!-- 배송비  -->
					<input type="hidden" name="dlvr_meth_ccd" value="P"> <!-- 배송방법  -->
					<input type="hidden" name="give_fee_sum" value="3100"> <!-- 발급수수료 -->
				</form>

				<form name="CancelProcessForm" method="post" onsubmit="return false" action="isr003.do?id=isr00302s01&amp;gSite=Q&amp;gId=">
					<input type="hidden" name="repreApplNo" value="D8003849117">
					<input type="hidden" name="refundType" value="C">
					<input type="hidden" name="refundRate" value="">
					<input type="hidden" name="payType" value="">
					<input type="hidden" name="stat_type" value="2">
					<input type="hidden" name="repCertMethCcd" value="J">
					<input type="hidden" name="repCertTrnsNo" value=""> <!-- 인증거래번호 -->
					<input type="hidden" name="repCertResdNo" value=""> <!-- 주민번호-->
					<input type="hidden" name="repCertHgulNm" value=""> <!-- 성명-->
					<input type="hidden" name="repCertGoodsNm" value=""> <!-- 상품명-->
					<input type="hidden" name="repCertgoodsAmt" value=""> <!-- 상품금액-->
					<input type="hidden" name="repCertSplyTrnsNo" value=""> <!-- 공급자거래번호-->
					<input type="hidden" name="repCertMphoneCertRsltCcd" value=""> <!-- 휴대폰인증결과[c코드]-->
					<input type="hidden" name="repCertCertDttm" value=""> <!-- 인증일시-->
					<input type="hidden" name="repCertMphoneId" value=""> <!-- 휴대폰식별자-->
					<input type="hidden" name="repCertmPhoneCompCcd" value=""> <!-- 이동통신사[c코드]-->
					<input type="hidden" name="repCertCertSvcId" value=""> <!-- 인증서비스아이디-->
				</form>

				<iframe name="isr00302s01" title="빈프레임" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="0" height="0"></iframe>

				
				<div id="payWin" class="mt20" style="text-align: center; display: block; z-index: 1;">
					<iframe id="payFrame" name="payFrame" width="663px" style="margin: 0px auto;" title="신청 취소 상세" src="" frameborder="0" scrolling="no"></iframe>
				</div>
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>