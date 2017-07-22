<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="com.last.common.vo.QualifiPagingVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	Integer pageNumber = (Integer)request.getAttribute("pageNumber");
	QualifiPagingVO viewData = (QualifiPagingVO)request.getAttribute("viewData");
	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
 	String id = user.getUsername();
%>

<style>
	*{box-sizing:content-box;}
</style>

<script>
	function check(){
		var result = 0;
		$(":checkbox:checked").each(function(){
			var price =  $(this).attr("price");
			price = Number(price);
			result += price;
		});
		$("#totIssuFee").val(result);
	}
</script>

<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
<div>
		<jsp:include page="../../lnb/jagukLnb.jsp"/>
	   <div id="lnb2"></div>
	</div>
		<!-- 좌측 메뉴바 끝-->

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
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_on_01.gif" alt=""><span>자격증선택</span><span class="blind">선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_02.gif" alt=""><span>선택확인</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_03.gif" alt=""><span>신청서작성</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_04.gif" alt=""><span>본인인증</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_06.gif" alt=""><span>수수료결제</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_license_off_05.gif" alt=""><span>접수증출력</span></li>
					</ul>
				</div>

				<form name="frm" action="/alphanet/member/request3">
					<div id="bd01_01">
						<input type="hidden" name="mem_code" value="${mem_code}" />
<%-- 						<input type="hidden" name = "qualifi_certi_code" value="${qualifi_certi_code}"/> --%>
						<div class="tbl_type1">
							<table
								summary="자격증 발급 신청을 번호, 자격증취득 종목명, 최종합격일자, 발급구분, 발급수수료, 자격증번호 정보 제공 및 선택"
								class="table">
								<colgroup>
									<col width="7%">
									<col width="*">
									<col width="14%">
									<col width="14%">
									<col width="14%">
									<col width="7%">
									<col width="18%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">선택</th>
										<th scope="col">자격증 번호</th>
										<th scope="col">자격증 종목명</th>
										<th scope="col">필기합격일자</th>
										<th scope="col">최종합격일자</th>
										<th scope="col">비고</th>
										<th scope="col">발급수수료</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${viewData.qualifiCountPerPage > 0 }">
											<c:forEach items="${viewData.qualifiList }" var="qualifi" varStatus="numbering">
												<tr>
													<td><input type="checkbox" name="choice" value="${qualifi.qualifi_certi_code}"
														price="${qualifi.qualifi_certi_iss_pr}" onclick="check();"></td>
													<td>${qualifi.qualifi_certi_code }</td>
													<td>${qualifi.exkind_nm }</td>
													<td>${qualifi.written_pass_date }</td>
													<td>${qualifi.actual_pass_date }</td>
													<td>${qualifi.qualifi_certi_count }</td>
													<td>${qualifi.qualifi_certi_iss_pr}</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td style="text-align: center;">내용이 없습니다.</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<input type="hidden" name="infrmCnt" value="1"> <input
								type="hidden" id="totFee" name="totFee"> <input
								type="hidden" name="appGb"> <input type="hidden"
								id="chkCode">
						</div>

					</div>

					<ul class="list">
						<li><strong class="fc_3">인터넷으로 자격증 신청이 불가한 경우</strong>
							<ul class="line">
								<li>- 신분증없이 시험에 응시하여 신분 미확인 상태인 경우</li>
								<li>- 법개정으로 취득종목이 한개 이상의 다른 명칭으로 변경되어 선택이 필요한 경우 (이미 선택한 경우
									발급신청가능)</li>
								<li>- 자격증을 반납하고 재발급 신청할 경우(근거:국가기술자격법 시행령 제 25조 제2항)</li>
							</ul></li>
					</ul>
					<p class="fc_b impt">
						<strong>※ <a
							href="/isr003.do?id=isr00301&amp;gSite=Q&amp;gId=&amp;gTitle=&amp;depth=0401"
							target="_self">발급신청중인 자격증이 있습니다. 자격증 발급신청 내역 조회에서 확인할 수 있습니다.</a></strong>
					</p>

					<div class="border_linebt2">
						<label for="totIssuFee"><strong>발급수수료</strong></label> <input
							type="text" class="txt_right fc_3" style="width: 150px"
							id="totIssuFee" name="totIssuFee" readonly="readonly"> 원
						<span>배송비 2,340 원(별도)</span>
					</div>
					<div class="btn_center mb40">
						<a class="btn2 btncolor1"> <span><input type="submit"
								value="발급신청" class="btn2 btncolor1"
								style="border: 0 solid; color: white"></span>
						</a>
					</div>
				</form>
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>