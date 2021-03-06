<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="com.last.common.vo.Notice1VO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="com.last.util.SystemUtils" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%	
   Integer pageNumber = (Integer)request.getAttribute("pageNumber");
   PagingVO viewData =  (PagingVO)request.getAttribute("viewData");
%>

<style>
	.qnet.main #container{background:url(<%=request.getContextPath()%>/resources/images/main/bg_container.gif) repeat-x left top;}	
	.main #container{ width:100%;}	
	#container{position:relative; margin:0 auto;}	
	.main #container #content{float:none;margin: 0 auto;padding: 0 0 50px;width:980px;}	
	.center_area{position: relative;}
</style>
<script>
// 메인 빨리가기 메뉴 마우스 롤오버 
$(function(){
	$("ul.link_go").find("> li > a").on({
		"mouseover" : function(){
			$(this).find("span").stop().animate( { "opacity" : "0" }, 300, "easeInOutQuart" );
			$(this).find("em").stop().animate( { "opacity" : "1" }, 300, "easeInOutQuart" );
			$(this).find("strong").stop().animate( { "color" : "#fff", "background-color" : "#819b29" }, 200);
		},
		"mouseout" : function(){
			$(this).find("span").stop().animate( { "opacity" : "1" }, 300, "easeInOutQuart" );
			$(this).find("em").stop().animate( { "opacity" : "0" }, 300, "easeInOutQuart" );
			$(this).find("strong").stop().animate( { "color" : "#c3dcf4", "background-color" : "#00557e" }, 200);
		}
	});	
});
</script>
	
<article>
<div id="container">
	<div class="center_area" id="content">
		<ul class="link_top mOver">
			<li class="n01">
				<a href="<%=request.getContextPath()%>/wonseoInfo">
					<em>
						<img src="<%=request.getContextPath()%>/resources/images/main/link_top_new_01.gif" alt="원서접수">
					</em>
					<strong>원서접수</strong>
					<span>
						<span><em>꿈</em>과<em>비전</em></span>
						<span><em>성취를</em>위한<em>자기개발</em></span>
					</span>
				</a>
			</li>
			<li class="n02">
				<a href="<%=request.getContextPath()%>/wonseoPassSearch">
					<em>
						<img src="<%=request.getContextPath()%>/resources/images/main/link_top_new_02.gif" alt="합격자/답안발표">
					</em>
					<strong>합격자/답안발표</strong>
					<span>
						<span><em>도전</em>은<em>인생을</em></span>
						<span><em>흥미롭게</em>합니다</span>
					</span>
				</a>
			</li>
			<li class="n03">
				<a href="<%=request.getContextPath()%>/request1">
					<em>
						<img src="<%=request.getContextPath()%>/resources/images/main/link_top_new_03.gif" alt="자격정보">
					</em>
					<strong>자격증발급</strong>
					<span>
						<span><em>자격증</em>발급은,<em>여기서</em>하세요,</span>
						<span><em>외국</em>자격,<em>자격검정</em>통계</span>
					</span>
				</a>
			</li>
			<li class="n04">
				<a href="http://t.q-net.or.kr/man001.do?id=&gSite=L&gId=99">
					<em>
						<img src="<%=request.getContextPath()%>/resources/images/main/link_top_new_04.gif" alt="상시시험">
					</em>
					<strong>상시시험</strong>
					<span>
						<span><em>정보처리,정보기기운용,한식</em></span>
						<span><em>양식,중식,일식,지게차</em></span>
						<span><em>굴삭기,미용,제과,제빵</em></span>
					</span>
				</a>
			</li>
		</ul>
		
		<ul class="link_go">
			<li class="go01">
				<a href="<%=request.getContextPath()%>/calender">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_01.png" alt="시험일정안내">
					</span>
					<em style="opacity:0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_01_on.png" alt="시험일정안내">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">시험일정안내</strong>
				</a>
			</li>
			<li class="go02">
				<a href="<%=request.getContextPath()%>/member/selfTest">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_02.png" alt="응시자격자가진단">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_02_on.png" alt="응시자격자가진단">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">응시자격자가진단</strong>
				</a>
			</li>
			<li class="go03">
				<a href="<%=request.getContextPath()%>/wonseo_ing">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_03.png" alt="원서접수현황">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_03_on.png" alt="원서접수현황">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">원서접수현황</strong>
				</a>
			</li>
			<li class="go04">
				<a href="<%=request.getContextPath()%>/cbt">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_04.png" alt="CBT">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_04_on.png" alt="CBT">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">CBT</strong>
				</a>
			</li>
			<li class="go05">
				<a href="<%=request.getContextPath()%>/request1">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_05.png" alt="자격증신청">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_05_on.png" alt="자격증신청">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">자격증신청</strong>
				</a>
			</li>
			<li class="go06">
				<a href="javascript:goMinwon();">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_06.png" alt="고객의소리">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_06_on.png" alt="고객의소리">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">고객의소리</strong>
				</a>
			</li>
			<li class="go07">
				<a href="<%=request.getContextPath()%>/pdsList">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_07.png" alt="자료실">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_07_on.png" alt="자료실">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">자료실</strong>
				</a>
			</li>
			<li class="go08">
				<a href="<%=request.getContextPath()%>/change">
					<span style="opacity:1;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_08.png" alt="환불">
					</span>
					<em style="opacity: 0;">
						<img src="<%=request.getContextPath()%>/resources/images/main/link_go_08_on.png" alt="환불">
					</em>
					<strong style="color: rgb(195, 220, 244); background-color: rgb(0, 85, 126);">환불</strong>
				</a>
			</li>	
			<li class="go09"></li>		
		</ul>

			<div class="main_cont">
				<form name="myfrm" method="post">
					<input type="hidden" name="gId" value=""> <input
						type="hidden" name="implCd" value=""> <input type="hidden"
						name="implYY" value=""> <input type="hidden"
						name="implSeq" value=""> <input type="hidden"
						name="planId" value=""> <input type="hidden" name="seqNo"
						value=""> <input type="hidden" name="startDt" value="">
					<input type="hidden" name="qualGb" value=""> <input
						type="hidden" name="examTyp" value=""> <input
						type="hidden" name="planNm" value=""> <input type="hidden"
						name="suhmTrgt" value="">
				</form>
				<div class="left">
					<div id="loadTest">					
						<jsp:include page="ingWonseo.jsp" />
					</div>
					<!-- 캐러셀 -->
					<div class="auto_banner">
					<!-- // class="play" 자동 플레이 상태  -->
					<span class="move">
						<button title="배너 멈춤" class="auto">
							<img src="<%=request.getContextPath() %>/resources/images/main/banner_stop.gif" alt="배너 멈춤" title="배너 멈춤">
						</button>
						<button title="이전 배너" class="prev">
							<img src="<%=request.getContextPath() %>/resources/images/main/banner_prev.gif" alt="이전 배너" title="이전 배너">
						</button>
						<button title="다음 배너" class="next">
							<img src="<%=request.getContextPath() %>/resources/images/main/banner_next.gif" alt="다음 배너" title="다음 배너">
						</button>
					</span>
					<div class="rollBox">
						<ul style="width: 4334px;">
							<div id="myCarousel" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<div class="item active">
										<img src="<%=request.getContextPath() %>/resources/images/main/banner01.gif" alt="Los Angeles">
									</div>

									<div class="item">
										<img src="<%=request.getContextPath() %>/resources/images/main/banner02.gif" alt="Chicago">
									</div>

									<div class="item">
										<img src="<%=request.getContextPath() %>/resources/images/main/banner03.gif" alt="New York">
									</div>
								</div>
							</div>
						</ul>
					</div>
				</div>
				</div>
				<div class="right">
					<dl class="bbs_list">
						<dt class="on bbs_notice">
							<a href="<%=request.getContextPath() %>/main" name="bbs" id="notice">공지사항</a>
						</dt>
						<dd class="on" id="bbs_notice">
							<ul>
								<c:choose>
									<c:when test="${viewData.notice1CountPerPage > 0 }">
										<c:forEach items="${viewData.notice1List }" var="notice" begin="0" end="6" varStatus="number">
											<li>
												<a href="<%=request.getContextPath() %>/detailNotice?notice_code=${notice.notice_code }" >${notice.title}</a>
												<span><fmt:formatDate value="${notice.enroll_date}"/></span>
											</li>
											<input type="hidden" value="${notice.notice_code}" name="noticeCode"/>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<li>
											<p>내용이 없습니다</p>
										</li>
									</c:otherwise>
								</c:choose>
							</ul>
							<a href="#"	class="more">더보기</a>
						</dd>
						<dt class="bbs_system">
							<a href="<%=request.getContextPath() %>/mainNotice2" name="bbs" id="system">자격제도</a>
						</dt>
						<dd id="bbs_system">
							<p class="none">
								<img src="<%=request.getContextPath()%>/resources/images/ajax-loader_s.gif" alt="데이터 처리 중입니다.">
							</p>
						</dd>
						<dt class="bbs_test">
							<a href="<%=request.getContextPath() %>/mainNotice3" name="bbs" id="test">시행</a>
						</dt>
						<dd id="bbs_test">
							<p class="none">
								<img src="<%=request.getContextPath()%>/resources/images/ajax-loader_s.gif" alt="데이터 처리 중입니다.">
							</p>
						</dd>
						<dt class="bbs_question">
							<a href="<%=request.getContextPath() %>/mainNotice4" name="bbs" id="question">출제</a>
						</dt>
						<dd id="bbs_question">
							<p class="none">
								<img src="<%=request.getContextPath()%>/resources/images/ajax-loader_s.gif" alt="데이터 처리 중입니다.">
							</p>
						</dd>
						<!-- 2015.08.31 jws : 이종용대리 요청 서비스 개선 추가 -->
						<dt class="bbs_improve">
							<a href="<%=request.getContextPath() %>/mainNotice5" name="bbs" id="improve">서비스 개선</a>
						</dt>
						<dd id="bbs_improve">
							<p class="none">
								<img src="<%=request.getContextPath()%>/resources/images/ajax-loader_s.gif" alt="데이터 처리 중입니다.">
							</p>
						</dd>

					</dl>
					<ul class="left_banner">
						<li class="customer">
							<dl>
								<dt>
									<strong>고객지원</strong> <span><em>전화</em> 또는 <em>문자상담</em>(40자 이내)</span>
								</dt>
								<dd class="tel">
									1644 - <strong>8000</strong>
								</dd>
								<dd class="info">
									<ul>
										<li><span>평일 :</span> 09:00 ~ 18:00 (월~금)</li>
										<li><span>휴일 :</span> 토,일요일 및 공휴일은 쉽니다.</li>
									</ul>
								</dd>
							</dl>
						</li>
						<li class="list_tel">
							<a href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank"	title="한국산업인력공단 지역본부 및 지사 바로가기. 새 창"><strong>지부/지사</strong>연락처</a>
						</li>
					</ul>
				</div>
			</div>
		</div>	
</div>
</article>
<%=SystemUtils.displayJspID(request)%>
