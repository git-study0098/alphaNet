<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
		<jsp:include page="lnb/jagukLnb.jsp"/>
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
					<li><strong>원서접수 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">자격증 발급 신청</h3>
				<hr>
				<div class="step">
					<ul class="list06">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_01.gif"
							alt=""><span>자격증선택</span></li>
						<li class="arrow"><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_02.gif"
							alt=""><span>선택확인</span></li>
						<li class="arrow"><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_03.gif"
							alt=""><span>신청서작성</span></li>
						<li  class="arrow"><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_04.gif"
							alt=""><span>본인인증</span></li>
						<li  class="arrow"><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_06.gif"
							alt=""><span>수수료결제</span></li>
						<li  class="arrow"><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_05.gif"
							alt=""><span>접수증출력</span></li>
					</ul>
				</div>
				<h4>자격증 배송 신청</h4>
				<div class="cont_parbx mb40">
					<h5>이용 가능자</h5>
					<ul class="list">
						<li>공단에 사진이 등록된 자
							<p class="impt">※ 2005년 9월 이전 취득자, 국방검정 취득자는 인증사진이 없으므로 배송
								불가하며 인터넷 방문신청은 가능.</p>
						</li>

						<li>발급수수료(3,100원) + 배송비(2,340원) : 카드결제 또는 계좌이체</li>

					</ul>
					<h5>수령 소요 기간 안내</h5>
					<ul class="list">
						<li>발급일로부터 5일 후 수령가능(토, 일, 공휴일 제외)
							<ul class="num">
								<li>1. 배송자격증은 공단본부발행(방문하여도 자격증 발급 불가)</li>
								<li>2. 배송기간 중 부득이 자격증이 필요한 경우, 자격취득사항확인서 활용</li>
								<li><b>3. 최종합격자 발표가 있는 기간에는 자격증 발급량이 많아 배송기간 추가 소요
										가능(최대 2주 소요) </b></li>
								<li>4. 등기번호가 생성되었으나, 배달내역이 조회되지 않는 경우 봉투봉입 작업중임(1일 소요)</li>
								<li><b>※ 내방수령 신청시에는 예정일 수령가능</b></li>
							</ul>
						</li>
						<li>자격증 배송절차
							<p class="center_img">
								<img src=<%=request.getContextPath()%>/resources/images/content/isr001_01_img01.gif
									alt="1.신청 2.지부(사)담당자 심사 3.승인(보완 요청시 보완 후 승인) 4.발급(공단본부) 5.배송">
							</p>
						</li>
					</ul>
					<h5>인터넷 신청시 유의사항</h5>
					<ul class="list">
						<li>본인자격증 1회 신청에 최대 4개까지 가능</li>
						<li>배송예정 문자메시지 제공 : 문자메시지를 받을 수 있는 본인 휴대폰번호 기재, 우체국에 3~4일
							보관요청 가능</li>
						<li>자격증은 우체국 등기로 지정인에게 배송됨</li>
						<li>정확한 주소와 수령인 반드시 지정(부재시 지부, 지사로 반송-재발송 없음-), 90일내 방문 수령하지
							않을 경우 파기</li>

						<li>신청사항이 승인되면 취소불가, 수령방법(내방/배송) 변경 불가</li>
						<li>담당자 심사후 증명사진이 아닌경우(배경이 있는 경우등), 주소 불분명한 경우 보완요청, 보완요청이 있을
							경우 7일내 보완하지 않으면 자동취소 될 수 있습니다.
							<ul class="line">
								<li>- 신청내용(사진, 주소)이 부정확한 경우 담당자의 보완요청이 있사오니, 정확한 연락처를 기재하여
									주십시오.</li>
								<li>- 금지사진 등재 및 금지주소 기재로 인한 불이익은 신청자에게 있습니다.</li>
								<li>- 금지사진 : 흑백, 셀카, 측면, 배경표시, 인식불가, 모자착용</li>
								<li>- 금지주소 : 번지가 기재된 주민등록상 주소 이외의 주소</li>
							</ul>
						</li>
					</ul>
				</div>
				<h4>자격증 내방 신청</h4>
				<div class="cont_parbx mb20">
					<h5>이용 가능자</h5>
					<ul class="list">
						<li>방문 할 지사를 선택하여 자격증 발급신청 후 예정일에 방문하여 수령</li>
						<li>자격취득자이면 누구나 이용가능 (공단에 본인 확인된 사진이 없는 경우)</li>

						<li>발급수수료
							<ul class="line">
								<li>- 인터넷 신청 및 결제완료 시 : 3,100원</li>
								<li>- 지사 방문 신청 및 결제 시 : 3,500원</li>
							</ul>
						</li>

						<li>방문시 준비물:본인신분증(대리인 방문 시 본인 및 대리인 신분증 모두 지참)</li>
					</ul>
					<h5>아래 사항에 해당될 경우 인터넷 신청 불가능(공단방문 필요)</h5>
					<ul class="list">
						<li>자격취득사항(성명, 주민번호, 종목)의 변경이 필요한 경우, 입증서류 [주민등록등(초)본 등] 지참</li>
						<li>신분증을 지참하지 않고 실기시험에 응시한 경우</li>
						<li>법령개정으로 자격종목의 선택이 필요한 경우
							<p class="line">법령개정으로 자격종목을 택일할 경우 선택이 완료된 자격에 대한 선택 번복이
								불가능함에 따라 담당직원의 안내를 받은 후 신중한 선택이 필요함.</p>
						</li>
					</ul>
				</div>

				<div id="LGD_ACTIVEX_DIV" align="center"></div>
				<div class="btn_center mb40">
					<a class="btn2 btncolor1"
						href="<%=request.getContextPath() %>/member/request2"><span>발급신청</span></a>
				</div>


				<h4>한국기술자격검정원(상시)</h4>
				<ul class="list_lines01">
					<li>
						<p class="tit">
							<span>국가기술자격 상시시험 12종목 자격증은 ‘한국기술자격 검정원’에서 신청하실 수 있습니다.</span>

							<button type="button" class="btn btncolor6 btn-xs"
								title="상시시험 자격증  신청하기. 새 창"
								onclick="">
								<span>상시시험 자격증 신청하기</span>
							</button>
						</p>
						<ul class="inner_menu">
							<li>한식, 일식, 양식, 중식조리</li>
							<li>지게차 / 굴삭기운전</li>
							<li>정보처리 / 정보기기운용</li>
							<li>미용사(일반) / 미용사(피부)</li>
							<li>제과 / 제빵기능사</li>
						</ul>
					</li>
				</ul>
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>