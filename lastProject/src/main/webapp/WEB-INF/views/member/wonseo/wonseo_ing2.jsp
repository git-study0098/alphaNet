<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<style>
	*{box-sizing:content-box;}
</style>

<script>
function go_map(){	
	var pop = window.open("<%=request.getContextPath()%>/member/map?place_nm=동아마이스터고등학교","pop3","width=570,height=420"); 
	document.getElementById('mapForm').submit();
}
</script>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
		<jsp:include page="../../lnb/wonseoLnb.jsp"/>
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
					<li><strong>원서접수 현황</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				
				<h3 class="tit_content">
					원서접수 현황
				</h3>
				<div class="msg_info noData" id="msgInfo">
					<p>“시험장소는 행정구역기준으로 안내됩니다.”</p>
				</div>
				<div class="place_result" id="viewList">
					<div class="tbl_type4">
						<table style="table-layout: fixed;"
							summary="지역, 시험일자, 부, 입실시간, 시험장소, 접수마감, 정원, 현재접수 가능인원에 대한 정보 제공">
							<caption>현황 조회 목록</caption>
							<colgroup>
								<col width="12%">
								<col width="12%">
								<col width="16%">
								<col width="12%">
								<col width="7%">
								<col width="26%">
								<col width="5%">
								<col width="10%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">응시자유형</th>
									<th scope="col">지역</th>
									<th scope="col">기관명</th>
									<th scope="col">시험일자</th>
									<th scope="col">입실시간</th>
									<th scope="col">시험장소</th>
									<th scope="col">정원</th>
									<th scope="col">현재접수<br>가능인원
									</th>
								</tr>
							</thead>
							<tbody>
				
								<tr>
									<td>일반응시자</td>
									<td>대전광역시</td>
									<td>대전지역본부</td>
									<td>2017-09-23</td>
									<td>09:00</td>
									<td>
										<p class="sch_adr" style="display:;">
											<span class="name" title="${examPlace.place_add}">대전동아마이스터고등학교</span>
											<input type="hidden" name="place_nm" id="place_nm" value="${examPlace.place_nm}">
											<button title="새 창" type="button" class="btn3_type3" onclick="go_map()">
												<span>약도보기</span>
											</button>
											</p>
									</td>
									<td>300</td>
									<td>264</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				<div id="tblGoNext" class="btn_center">
					<button name="btnBack" id="btnBack" type="button"
						class="btn2 btncolor1" onclick="location.href=history.go(-1)">
						<span>이전</span>
					</button>
				</div>
			</div>
		</div>
		<!--  컨텐츠 끝 -->
		</div>
</article>

