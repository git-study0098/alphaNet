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
		<jsp:include page="noticeLnb.jsp" />
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
					<li><strong>관련학과 지정신청</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<form name="udeptList" id="udeptList" method="post" action="cst013.do?id=cst01301s01&amp;gSite=Q&amp;gId=">
				<input type="hidden" name="charger" value=""><!-- 담당자 -->
				<input type="hidden" name="cnfmNo" value=""><!-- 확인번호 -->
				<input type="hidden" name="pageGubun" value="1"><!-- 화면구분 -->
			</form>

			<div class="content">
				<h3 class="tit_content">관련학과 지정신청</h3>
				<div class="tbl_normal diagnosis_step3">
					<table summary="관련학과 지정신청 폼으로 담당자명, 확인번호 입력">
						<caption>관련학과 지정신청 사전등록폼</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="charger">담당자 명</label></th>
								<td>
									<input type="text" name="charger" style="width:150px" id="charger" title="담당자명 입력" maxlength="50">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="cnfmNo">확인번호</label></th>
								<td>
									<input type="password" name="cnfmNo" style="width:150px" id="cnfmNo" title="확인번호 입력" maxlength="6">&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="goPage(2)">확인번호를 잊은 경우 <u>Click</u> 하세요.</a>
								</td>
							</tr>
						</tbody>
					</table>
					<p class="fc_0 mt5">- 관련학과 신청을 위한 확인번호를 6자리로 설정하세요.</p>
					<p class="fc_0 mt5">- 관련학과 지정신청은 대학기관(학과 사무실 등)만 가능합니다.(학사과정에 한함)</p>
				</div>
				<div class="btn_center">
					<button type="button" class="btn2 btncolor1" onclick="goPage(1)"><span>신청하기</span></button>
					<button type="button" class="btn2 btncolor1" onclick="goPage(3)"><span>결과보기</span></button>
				</div>
			</div>
		</div>
	</div>
</article>