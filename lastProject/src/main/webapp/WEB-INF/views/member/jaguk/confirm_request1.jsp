<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
		<jsp:include page="../../lnb/jagukLnb.jsp" />
		<!-- 좌측 메뉴바 끝-->
		<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>자격증/확인서</li>
					<li>확인서 발급</li>
					<li><strong>확인서 발급 신청</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">확인서 발급 신청</h3>
				<!-- //컨텐츠 타이틀 -->

				<form name="schfrm" method="post" action="iss002.do?id=iss00202&amp;gSite=Q&amp;gId=">

				<!-- 컨텐츠 내용 -->
				<div class="infoBox">
					<div>
						<p class="impt">※ 인터넷으로 본 증명서를 발급받는 과정에서 <strong>위.변조하는 행위</strong>는 형법 제225조(공문서 등의 위조.변조) 또는 <br>제227조의 2(공전자기록 위작.변작)의 규정에 따라 <strong>10년 이하의 징역</strong>을 받을수 있습니다.</p>

					</div>
					<span></span>
				</div>

				<div class="tbl_type2 isr_apply">
					<table summary="확인서 발급 신청으로, 자격구분, 시험구분, 확인서 종류, 발급기준, 수수료, 발급용도 정보 입력">
						<caption>확인서 발급 신청</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>

							<tr>
								<th scope="row"><label for="sel_01">자격구분</label></th>
								<td>
									<span>
										<div id="opt00Div"><select title="자격구분 선택" name="qualgbcd" id="sel_01" onchange="getEdoctyp(this.value)"><option>선택</option><option value="S">국가전문자격</option><option value="T">국가기술자격</option></select></div>
									</span>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="sel_02">시험구분</label></th>
								<td>
									<span>
										<div id="opt001Div">
										<select title="시험구분" name="cbodocty" id="sel_02"></select>
										</div>
									</span>
								</td>
							</tr>

							<tr>
								<th scope="row"><label for="sel_03">확인서 종류</label></th>
								<td>
									<span>
										<div id="opt01Div">
										<select title="확인서 종류" id="sel_03" name="cbokycd"></select>
										</div>
									</span>
								</td>
							</tr>
							<tr>
								<th scope="row">발급기준</th>
								<td><div id="opt01Div1"></div></td>
							</tr>
							<tr>
								<th scope="row">수수료</th>
								<td><div id="opt01Div2"></div>
								<input type="hidden" name="feeYn">
								<input type="hidden" name="feeAmt">
								<input type="hidden" name="payYn" value="N"></td>
							</tr>
							<tr>
								<th scope="row"><label for="txtpurpose">발급용도</label></th>
								<td id="leftmargin5_1"><textarea id="txtpurpose" name="txtpurpose" cols="30" rows="10" title="근무내용">교육기관제출용</textarea></td>
							</tr>
							<tr>
								<td colspan="2" class="info" id="certip"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="infoBox mt10">
					<div>
						<p class="impt">※ 청소년지도사, 청소년상담사, 공인중개사 등 공단에서 위탁받아 시행하는 <span class="fc_r">전문자격의 자격취득확인서는 서비스 되지 않으며</span> 시험접수확인서 및 합격확인서 등 기타 확인서는 <span class="fc_r">공단에서 시행한 이후부터 서비스 가능합니다</span></p>
					</div>
					<span></span>
				</div>

				<div class="btn_center mb40">
					<button type="button" class="btn2 btncolor1" onclick="goNext();"><span>신청</span></button>
				</div>


				<h4>한국기술자격검정원(상시)</h4>
				<ul class="list_lines01">
					<li>
						<p class="tit"><span>국가기술자격 상시시험 12종목 확인서는 ‘한국기술자격 검정원’에서 신청하실 수 있습니다.</span>
							
							<button type="button" class="btn btncolor6 btn-xs" title="상시시험 확인서 신청하기. 새 창" onclick="popup3('http://t.q-net.or.kr/iss002.do?id=iss00201&amp;gSite=L&amp;gId=99')">
								<span>상시시험 확인서 신청하기</span>
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
				<!-- //컨텐츠 내용 -->
				<input type="hidden" name="gSessionPerId" value="PI2100118354">
				<input type="hidden" name="gubun">
				<input type="hidden" name="isEmployee">
				<input type="hidden" name="gSite" value="Q">
				<input type="hidden" name="cbokycdNm" id="cbokycdNm" value=""> 
				</form>
			</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>
