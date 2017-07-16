<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* {	box-sizing: content-box;}
.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
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
					<li>확인서/자격증 진위확인</li>
					<li><strong>확인서 진위 확인</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">확인서 진위확인</h3>

				<div class="tbl_type2 mb10">
					<iframe name="if_1" style="display:none"></iframe><table summary="성명, 문서확인번호 HRD 입력 및 정보 제공">
						<caption>확인서 진위확인</caption>
						<colgroup>
							<col width="10%">
							<col width="20%">
							<col width="20%">
							<col width="50%">
						</colgroup>
						<tbody>
			<form name="searchform" method="post"></form>
							<tr>
								<th scope="row"><label for="nm">성명</label></th>
								<td><input type="text" id="nm" style="width:100px" title="성명 입력" name="nm" maxlength="30"></td>
								<th scope="row"><label for="certino1">문서확인번호</label></th>
								<td> <!-- 수정(1022) -->
									<span><strong>HRD</strong> -
										<input type="text" name="certino1" style="ime-mode:disabled; width:88px" title="문서확인번호(HRD) 앞자리 입력" maxlength="14" class="numInput"> -
										<input type="text" style="ime-mode:disabled; width:88px" title="문서확인번호(HRD) 뒷자리 입력" name="certino2" maxlength="5" class="numInput">
										<button type="button" class="btn3_icon search" title="새 창" onclick="getsearch()"><span class="blind">검색</span></button>
									</span>
								</td>
							</tr>
	
	
						</tbody>
					</table>
				</div>
				<div class="infoBox">
					<div>
						<ul class="list impt">
							<li>※ 성명과 증명서 상단의 '<strong>원본확인 문서확인</strong>'을 입력하시면 진위여부 확인이 가능합니다.</li>
							<li>※ 발급문서는 발급일로부터 <strong>90일동안</strong> 조회가 가능합니다.</li>
							<li>※ 발급일로부터 90일이 지난 문서는 조회가 되지 않으므로 조회를 원할 경우 '<strong>위변조검증프로그램</strong>'을 이용하시기 바랍니다.
								<p>
									(20바코드 조회를 위해 스캐너 필요)
									<button type="button" class="btn4" title="새 창" onclick="pop_info('/qnet/certify/main.html',750,600);"><span>이용방법</span></button>
								</p>
							</li>
						</ul>
					</div>
					<span></span>
				</div>
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
