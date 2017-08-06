<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="com.last.common.vo.Notice1VO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <dl class="test_ing">
		<dt>원서접수 중인 시험</dt>
		<dd>

			<div class="appPeriod">

				<div class="rollBox">
					<ul>

						<li>
							<ul>
								<c:choose>
									<c:when test="${not empty viewData2}">
										<c:forEach var="wonseoList" items="${viewData2}">
											<li>
												<a href="<%=request.getContextPath()%>/member/wonseoReq">
													<strong>${wonseoList.em_nm }</strong>
													<em>접수 : ${wonseoList.numg_app_receipt_begin} ~ ${wonseoList.numg_app_receipt_end}</em>
												</a>
											</li>
										</c:forEach>
									
									</c:when>
									<c:otherwise>
										<li>원서접수 진행중인 시험이 존재하지 않습니다.</li>
									</c:otherwise>
								</c:choose>
							</ul>
						</li>

					</ul>
				</div>
			</div>

		</dd>
	</dl>