<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="../../lnb/mypageLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<form name="form1" id="form1">
			<input type="hidden" name="direction">
			<input type="hidden" name="p_jmCd" value="1040">
			<input type="hidden" name="examLangCcd" value="">
			<input type="hidden" name="multiFamilyYnCcd" value="">

			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>

					<li>마이페이지</li>
					<li>응시자격</li>
					<li><strong>응시자격 자가진단</strong></li>

				</ul>
			</div>
			<!-- //location -->

			<div class="popup" id="viewPopup"></div>
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">응시자격 자가진단</h3>

				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep">

					<ul class="list02">
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_01.gif" alt=""><span>자격선택</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_02.gif" alt=""><span>학력정보입력</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_off_03.gif" alt=""><span>경력정보입력</span></li>
						<li><img src="<%=request.getContextPath() %>/resources/images/step/step_qualification_on_05.gif" alt=""><span>진단결과</span><span class="blind">선택</span></li>
					</ul>

				</div>
				<!-- 입력	테이블	시작-->

				<div class="tbl_normal nmlType2">
					<table summary="응시자격 자가진단-진단결과로, 진단자격 명, 진단결과 정보 제공">
						<caption>응시자격 자가진단-진단결과</caption>
						<colgroup>
							<col width="16%">
							<col width="*">
						</colgroup>
						<tbody>
<!-- 							<tr> -->
<!-- 								<th scope="row">진단자격 명</th> -->
<!-- 								<td> -->
<!-- 									응시시험종목 -->
<!-- 									건설기계설비기사 -->
<!-- 								</td> -->
<!-- 							</tr> -->
							<c:forEach items="${exkind_nm}" var="stare">
								<tr>
									<th scope="row">진단자격명</th>
									<td>${stare.exkind_nm}</td>
								</tr>
								</c:forEach>
							<tr>
								<th scope="row">진단결과</th>
								<td>
									<c:if test="${flag || flag2}">
										<strong class="fc_b">응시가능(<em class="ff_zh" lang="zh-CN" xml:lang="zh-CN">可</em>)</strong>
									</c:if>
									<c:if test="${!flag && !flag2}">
										<span class="fc_red">불 가 능(<em class="ff_zh" lang="zh-CN" xml:lang="zh-CN">不</em>)</span>
									</c:if>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tbl_type4 alnType4">
					<table summary="진단결과 별 제출서류 안내 목록으로, 진단결과, 항목, 제출서류 정보제공">
						<caption>진단결과 별 제출서류 안내</caption>
						<colgroup>
							<col width="16%">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">진단결과</th>
								<th scope="col">항목</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<c:if test="${flag}">
										<strong class="fc_b">응시가능(<em class="ff_zh" lang="zh-CN" xml:lang="zh-CN">可</em>)</strong>
									</c:if>
									<c:if test="${!flag}">
										<span class="fc_red">불 가 능(<em class="ff_zh" lang="zh-CN" xml:lang="zh-CN">不</em>)</span>
									</c:if>
								</td>
								<td class="left">
									관련학과 대학교 졸업자(4년제)
								</td>
							</tr>
							<tr>
								<td>
									<c:if test="${flag2}">
										<strong class="fc_b">응시가능(<em class="ff_zh" lang="zh-CN" xml:lang="zh-CN">可</em>)</strong>
									</c:if>
									<c:if test="${!flag2}">
										<span class="fc_red">불 가 능(<em class="ff_zh" lang="zh-CN" xml:lang="zh-CN">不</em>)</span>
									</c:if>
								</td>
								<td class="left">
									관련학과 대학 졸업자(2년제,경력 2년이상인 경우)
								</td>
							</tr>

						</tbody>
					</table>
				</div><!-- // tbl_type4 -->
				<div class="btn_center">
					<button type="button" class="btn2 btncolor1" onclick="goSubmit('back')"><span>이전</span></button>

					<button type="button" class="btn2 btncolor1" onclick="goSubmit('first')"><span>다른 종목 진단</span></button>

				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			</form>
			<iframe name="fDownFrame" title="빈프레임" src="" scrolling="no" frameborder="0" style="display:none"></iframe><!-- //2014.12.11 KJH : 파일다운로드용 빈 프레임 -->
		</div>
	</div>
</article>