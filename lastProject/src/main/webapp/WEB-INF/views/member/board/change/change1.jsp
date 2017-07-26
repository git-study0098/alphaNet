<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
		<jsp:include page="../../../lnb/noticeLnb.jsp"/>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>고객지원</li>
					<li>환불안내</li>
					<li><strong>기술자격 환불안내</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">기술자격 환불안내</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="tabLayout">
					<ul>
						<li class="on"><a
							href="crf022.do?id=crf02201&amp;gSite=Q&amp;gId="
							title="기술자격 환불안내"><span>기술자격 환불안내</span></a></li>
					</ul>
				</div>
				<h4>접수한 원서의 취소는 어떻게 하나요?</h4>
				<div class="cont_parbx">
					<p class="list mb10">
						<strong class="fc_3">Q-net 로그인 <span class="fc_r">→</span>
							마이페이지 <span class="fc_r">→</span> 원서접수내역 <span class="fc_r">→</span>
							[접수취소] 버튼
						</strong>(수험표 출력 우측에 위치) 을 눌러 취소 하실 수 있습니다.
					</p>
					<p class="impt">※ 시험 취소 불가능, 환불계좌 입력 실패, 결제 오류는 공단 고객센터
						1644-8000 으로 문의바랍니다.</p>
				</div>
				<h4>환불기준은 어떻게 되나요?</h4>
				<div class="cont_parbx">
					<h5>정기검정, 상시검정, 수시검정</h5>
					<ul class="list">
						<li>접수기간내 접수를 취소하는 경우 : 100%환불(마감일 23:59:59까지)</li>
						<li>접수마감일 다음날로부터 회별시험시작일 5일전까지 취소하는 경우 : 50%환불(10원단위 절사)
							<div class="tbl_normal mb0 cw700">
								<table
									summary="정기검정, 상시검정, 수시검정 환불기준으로, 구분, 적용기간, 환불적용률에 대한 정보 제공">
									<caption>환불기준</caption>
									<colgroup>
										<col width="12%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">구분</th>
											<td class="info_cen"><strong>자격검정 원서접수 취소시 환불
													적용기간 안내</strong><br>(필기·실기 시험 : <em class="fc_r">회별시험시작일</em>로부터
												5일전까지)</td>
										</tr>
										<tr>
											<td colspan="2" class="tblInnner">
												<table class="mb0"
													summary="환불적용기간으로, 접수기간 중, 접수기간 후, 회별시험시작 4일전, 당해시험일, 환불적용률에 대한 정보 제공">
													<caption>진위여부 안내</caption>
													<colgroup>
														<col width="12%">
														<col width="19%">
														<col width="18%">
														<col width="6%">
														<col width="6%">
														<col width="6%">
														<col width="6%">
														<col width="*">
													</colgroup>
													<tbody>
														<tr>
															<th scope="row" rowspan="2" class="noBdr">적용기간</th>
															<th scope="col" class="fs_12th">접수기간 중</th>
															<th scope="col" class="fs_12th">접수기간 후</th>
															<th scope="col" colspan="4" class="fs_12th">회별시험시작
																4일전</th>
															<th scope="col" class="fc_r fs_12th">회별시험시작일</th>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>4일</td>
															<td>3일</td>
															<td>2일</td>
															<td>1일</td>
															<td>필기/실기 : 회별시험시작일</td>
														</tr>
														<tr>
															<th scope="row" class="fs_13">환불적용률</th>
															<td>접수취소시 환불:100%</td>
															<td>접수취소시 환불:50%</td>
															<td class="fc_r" colspan="5">환불취소불가</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- //w700 이하 숨김. 아래에 모바일 컨텐츠 삽입 -->
							<dl class="mTable">
								<dt>
									<strong>자격검정 원서접수 취소시 환불 적용기간 안내</strong><br>(필기·실기 시험 : <em
										class="fc_r">회별시험시작일</em>로부터 5일전까지)
								</dt>
								<dd class="tbl_normal mb10 tdCenter">
									<table
										summary="환불적용기간으로, 접수기간 중, 접수기간 후, 시험시행 4일전, 당해시험일, 환불적용률에 대한 정보 제공">
										<caption>진위여부 안내</caption>
										<colgroup>
											<col width="20%">
											<col width="30%">
											<col width="50%">
										</colgroup>
										<thead>
											<tr>
												<th scope="row" colspan="2">적용기간</th>
												<th scope="row">환불적용률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row" colspan="2">접수기간 중</th>
												<td>접수취소시 환불:100%</td>
											</tr>
											<tr>
												<th scope="row" colspan="2">접수기간 후</th>
												<td>접수취소시 환불:50%</td>
											</tr>
											<tr>
												<th scope="row" rowspan="4">시험시행 4일전</th>
												<th scope="row">4일</th>
												<td rowspan="5" class="fc_r"><strong>환불취소불가</strong></td>
											</tr>
											<tr>
												<th scope="row">3일</th>
											</tr>
											<tr>
												<th scope="row">2일</th>
											</tr>
											<tr>
												<th scope="row">1일</th>
											</tr>
											<tr>
												<th scope="row" class="fc_r">당해시험일</th>
												<th scope="row">필기:시험당일 / 실기:회별시험시작일</th>
											</tr>
										</tbody>
									</table>
								</dd>
							</dl>
							<!-- //html 소스 삽입 요청 2014.11.24 -->
							<ul class="impt">
								<li>※ <strong class="fc_3">실기시험의 환불 기준일은 수험자가 접수한
										시험일이 아닌, 회별 시험의 시행 시작일입니다.</strong></li>
								<li>※ 취소 후 <strong class="fc_3">환불되기까지</strong> 약 2~7일 정도
									소요됩니다.
								</li>
								<li>※ 환불 결과는 별도로 통보되지 않습니다. 잔액을 확인하시기 바랍니다. <!-- 2015.12.31 jws : 16년부터는 파일 제공 하지 않음 
									<p><button type="button" class="btn3_icon download" onclick="fileDown('jm_info/2015_tech_refund.xlsx','2015년도_국가기술자격_환불기간_및_환불률_현황.xlsx')"><span>2015년도 자격시험별 환불 기간 안내 다운로드 </span></button></p>  
									-->
								</li>
							</ul>
						</li>
					</ul>
					<h5>직계가족 사망, 본인의 사고 또는 질병으로 입원한 자에 대해 검정수수료의 50%환불</h5>
					<ul class="list">
						<li>대상 : 직계가족(본인 또는 배우자의 부모, 조부모, 형제, 자매, 배우자, 자녀에 한함) 사망자,
							본인의 사고 또는 질병으로 입원한 자</li>
						<li>기간 및 방법 : 수험자시험일 기준 30일 이내 신청서와 입증서류를 첨부하여 원서접수한 지부(사)로
							방문 또는 팩스신청</li>
						<li>입증서류
							<div class="tbl_normal mb0">
								<table summary="직계가족 등 사망,본인의사고 및 질병으로입원 항목으로 정보 제공">
									<caption>입증서류</caption>
									<colgroup>
										<col width="50%">
										<col width="*">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">직계가족 등 사망</th>
											<th scope="col">본인의 사고 및 질병으로 입원</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><p class="num">
													1. 본인과의 가족관계 입증서류 <br>(호적등본, 또는 주민등록등본 등)
												</p></td>
											<td><p class="num">1. 입원을 입증하는 서류 (입원확인서 또는 진단서 등)</p>
												<p class="impt">※ 단, 입원기간내 시험일이 포함되어 있어야 함</p></td>
										</tr>
										<tr>
											<td>2. 사망 입증서류(사망진단서 등)<span class="ml20">3. 신분증</span></td>
											<td>2. 신분증</td>
										</tr>
										<tr>
											<td colspan="2" class="fc_3">※ 대리인 신청시 구비서류 : 대리인 및 수험자
												본인의 신분증 첨부</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
					</ul>
					<h5>
						국가전문자격 <span>(가맹거래사, 경비지도사, 농산물품질관리사, 등)</span>
					</h5>
					<p class="list">해당 공고문 참조</p>
				</div>
				<h4>취소 후 환불 절차는 어떻게 되나요?</h4>
				<div class="cont_parbx">
					<div class="tbl_normal mb0">
						<table summary="결제수단(신용카드,계좌이체,가상계좌), 환불방법(개인,단체) 항목으로 정보 제공">
							<caption>환불절차</caption>
							<colgroup>
								<col width="20%">
								<col width="40%">
								<col width="*">
							</colgroup>
							<thead>
								<tr>
									<th scope="row" rowspan="2">결제수단</th>
									<th scope="col" colspan="2">환불방법</th>
								</tr>
								<tr>
									<th scope="col" class="nonBg">개인</th>
									<th scope="col" class="nonBg">단체</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">신용카드</th>
									<td>결제취소(승인/매입취소)</td>
									<td class="center">-</td>
								</tr>
								<tr>
									<th scope="row">계좌이체</th>
									<td colspan="2">접수시 사용한 계좌로 입금</td>
								</tr>
								<tr>
									<th scope="row">가상계좌</th>
									<td colspan="2">환불받을 계좌로 입금</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<iframe name="fDownFrame" title="빈프레임" src="" scrolling="no"
				frameborder="0" style="display: none"></iframe>
			<!-- //2014.12.11 KJH : 파일다운로드용 빈 프레임 -->
		</div>
	</div>
</article>