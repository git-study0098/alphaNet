<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.last.common.vo.QualifiCertiVO"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="com.last.common.vo.QualifiPagingVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	Integer pageNumber = (Integer)request.getAttribute("pageNumber");
// 	QualifiPagingVO viewData = (QualifiPagingVO)request.getAttribute("viewData");
// 	List<QualifiCertiVO> viewData2 = (ArrayList<QualifiCertiVO>)request.getAttribute("viewData2");
	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
  String id = user.getUsername();
%>


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
					<li>원서접수</li>
					<li><strong>원서접수 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">자격증 발급 신청</h3>
				<div class="step">
					<ul class="list06">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_01.gif" alt=""><span>자격증선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_on_02.gif" alt=""><span>선택확인</span><span class="blind">선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_03.gif" alt=""><span>신청서작성</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_04.gif" alt=""><span>본인인증</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_06.gif" alt=""><span>수수료결제</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_05.gif" alt=""><span>접수증출력</span></li>
					</ul>
				</div>

				<p class="list fc_3 mb10">
					선택한 자격내역(<strong>1건</strong>)은 아래와 같습니다.
				</p>

			<form name="frm" action="/alphanet/member/request4?">
				<div id="bd01_01">
					<input type="hidden" name = "mem_code" value="${mem_code}"/>
					<input type="hidden" name = "qualifi_certi_code" value="${qualifi_certi_code}"/>
<%-- 					<input type="hidden" name = "choice" value="${choice}"/> --%>
					
					<div class="tbl_type1">

						<table summary="자격증번호, 자격증취득 종목명, 필기합격일자, 최종합격일자, 발급구분, 발급수수료 정보 제공">
							<colgroup>
								<col width="20%">
								<col width="24%">
								<col width="14%">
								<col width="15%">
								<col width="15%">
								<col width="12%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">자격증번호</th>
									<th scope="col">자격증취득 종목명</th>
									<th scope="col">필기합격일자</th>
									<th scope="col">최종합격일자</th>
									<th scope="col">비고</th>
									<th scope="col">발급수수료</th>
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
				</div> 

				<ul class="list_lines01 type2">
					<li>
						<c:forEach items="${viewData2}" var="qualifi">
							<p class="tit">발급수수료 : <strong>${qualifi.qualifi_certi_iss_pr}원</strong> <span>배송비 2,340 원(별도)</span> </p>
						</c:forEach>
						<ul class="list_basic list line">
							<li>- <strong>배송신청</strong> : 인터넷으로 신청(결제) 후 우편으로 자격증 수령 (본인 확인된 사진이 공단에 등록된 경우에만 배송가능)</li>
							<li>- <strong>방문신청</strong> : 인터넷으로 신청(결제) 후 지부(지사)로 방문하여 자격증 수령
								<ul class="impt">
									<li>※ 방문시 본인 신분증 지참하여 확인하여야 함. 대리인 방문시 본인 및 대리인 신분증 모두 지참</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
<!-- 				<div class="btn_center btnPos"> -->
<%-- 					<input type="submit" class="btn2 btncolor1" onclick="location.href='<%=request.getContextPath()%>/member/request4'" value="배송신청"> --%>
<!-- 				</div> -->
				
				<div class="btn_center mb40">
					<button type="button" class="btn2 btncolor1" onclick="history.go(-1)"><span>이전</span></button>
						<a class="btn2 btncolor1">
							<span><input type="submit" value="발급신청" class="btn2 btncolor1" style="border: 0 solid; color:white"></span>
						</a>
					</div>
				
				</form> 
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>