<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* { box-sizing: content-box;}
	table th{text-align:center; border-bottom:1px solid gray;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>시험안내</li>
					<li><strong>필기/실기 시험 접수안내</strong></li>
				</ul>
			</div>

			<div class="content">
				<h3 class="tit_content">필기/실기 시험 접수안내</h3>
				<div id="viewList">
					<div class="tbl_type1">
						<table summary="번호,제목,담당부서,최종수정일자 항목으로 정보 제공"
							style="table-layout: fixed">
							<colgroup>
								<col width="15%">
								<col width="15%">
								<col width="20%">
								<col width="30%">
								<col width="20%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">종목명</th>
									<th scope="col">직무분야</th>
									<th scope="col">필기수수료</th>
									<th scope="col">필기시험과목</th>
									<th scope="col">실기수수료</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>정보처리기사</td>
									<td>정보통신</td>
									<td>19,400원</td>
									<td>1.데이터베이스<br> 2.전자계산기구조<br> 3.운영체제<br> 4.소프트웨어공학<br> 5.데이터통신</td>
									<td>22,600</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</article>