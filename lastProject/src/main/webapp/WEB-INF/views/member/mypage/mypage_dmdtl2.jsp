<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
	
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
	.searchType span:first-child label {margin-left:0}
	.searchType select {width:107px; margin-right:40px}
	.searchType input[type="text"] {background:#f9f9f9}
	.searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
	.searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
	.content > .searchType {padding-top:0}
	.searchType.txt_left > span {zoom:1}
	.searchType.txt_left > span:after {content:''; display:block; clear:both}
	.searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
	.searchType.txt_left > span > select {float:left}
	.searchType.txt_left > span > select.last {width:130px; margin-right:5px}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
	
	.list_width01 li {float: left; margin-right: 20px;}

	.lilabelrid{ display:inline-block; margin:3px 0px 0px 3px; font-weight:normal;}
	
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
	<jsp:include page="mypageLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>마이페이지</li>
					<li>응시자격</li>
					<li><strong>응시가능 종목확인</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="popup" id="helpPopup"></div>
			<div class="content">
				<form id="form1">
				<input type="hidden" name="p_section" value="able">
				<h3 class="tit_content">응시가능 종목확인</h3>
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>등급 -&gt; 직무분야를 선택하시고 <strong>[다음]</strong>을 클릭하세요</li>
							<li>귀하가 응시 가능한 해당 등급의 모든 종목을 알려드립니다.</li>
						</ul>
					</div>
					<span></span>
				</div>
				<div class="tbl_normal mb0">
					<table summary="원하시는 자격증 종목으로, NO, 종목명, 종목코드 정보제공">
						<caption>원하시는 자격증 종목 선택</caption>
						<tbody>
							<tr class="app_test">
								<th scope="row">
									<strong class="stit">원하시는 자격증 종목 선택</strong>
								</th>
							</tr>
							<tr>
								<td>
									<ul class="list_width01">
										<li><input type="radio" name="grd_cd" id="license01" value="10" title="기술사"><label class="lilabelrid" for="license01">기술사</label></li>
										<li><input type="radio" name="grd_cd" id="license02" value="20" title="기능장"><label class="lilabelrid" for="license02">기능장</label></li>
										<li><input type="radio" name="grd_cd" id="license03" value="30" title="기사"><label class="lilabelrid" for="license03">기사</label></li>
										<li><input type="radio" name="grd_cd" id="license04" value="31" title="산업기사"><label class="lilabelrid" for="license04">산업기사</label></li>
										<li><input type="radio" name="grd_cd" id="license05" value="40" title="기능사"><label class="lilabelrid" for="license05">기능사</label></li>
										<li><input type="radio" name="grd_cd" id="license06" value="32" title="전문사무"><label class="lilabelrid" for="license06">전문사무</label></li>
									</ul>
								</td>
							</tr>
							<tr>
								<td class="app_test2" colspan="2">
									<select title="직무분야" name="jm_mdoblig_cd" id="jm_mdoblig_cd" style="width:220px; margin-right:10px">
										<option value="">직무분야 선택하세요</option>

										<option value="146">건설기계운전</option>

										<option value="145">건설배관</option>

										<option value="141">건축</option>

										<option value="111">경비.청소</option>

										<option value="021-1">경영(사회조사분석)</option>

										<option value="021-2">경영(소비자전문상담)</option>

										<option value="021-3">경영(컨벤션기획)</option>

										<option value="152">광해방지</option>

										<option value="041">교육.자연.과학.사회과학</option>

										<option value="171">금속.재료</option>

										<option value="031">금융.보험</option>

										<option value="167">금형.공작기계</option>

										<option value="162">기계장비설비.설치</option>

										<option value="161">기계제작</option>

										<option value="241">농업</option>

										<option value="173">단조.주조</option>

										<option value="144">도시.교통</option>

										<option value="175">도장.도금</option>

										<option value="082">디자인</option>

										<option value="232">목재.가구.공예</option>

										<option value="081">문화.예술</option>

										<option value="083">방송</option>

										<option value="212">방송.무선</option>

										<option value="051">법률.경찰.소방.교도.국방</option>

										<option value="061">보건.의료</option>

										<option value="061-2">보건.의료(국제의료관광코디네이터)</option>

										<option value="252">비파괴검사</option>

										<option value="023">사무</option>

										<option value="011">사업관리</option>

										<option value="071">사회복지.종교</option>

										<option value="024">생산관리</option>

										<option value="191">섬유</option>

										<option value="122">숙박.여행.오락.스포츠</option>

										<option value="132">식당서비스</option>

										<option value="221">식품</option>

										<option value="251">안전관리</option>

										<option value="244">어업</option>

										<option value="262">에너지.기상</option>

										<option value="262-2">에너지.기상(기상)</option>

										<option value="101">영업.판매</option>

										<option value="174">용접</option>

										<option value="091">운전.운송</option>

										<option value="182">위험물</option>

										<option value="192">의복</option>

										<option value="121">이용.미용</option>

										<option value="231">인쇄.사진</option>

										<option value="243">임업</option>

										<option value="166">자동차</option>

										<option value="201">전기</option>

										<option value="202">전자</option>

										<option value="211">정보기술</option>

										<option value="222">제과.제빵</option>

										<option value="143">조경</option>

										<option value="131">조리</option>

										<option value="164">조선</option>

										<option value="151">채광</option>

										<option value="163">철도(기계)</option>

										<option value="242">축산</option>

										<option value="142">토목</option>

										<option value="213">통신</option>

										<option value="172">판금.제관.새시</option>

										<option value="165">항공</option>

										<option value="181">화공</option>

										<option value="261">환경</option>

										<option value="261-2">환경(자연환경,생물분류,토양환경)</option>

										<option value="022">회계</option>

									</select>
									<button type="button" class="btn3_type2" id="helpBtn"><span>직무분야 도움말</span></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<p>※ 검색을 시작하시면 60초의 재검색 대기시간을 가집니다.</p>
				<div class="btn_center">
					<button type="button" class="btn2 btncolor1" id="NextBtn"><span>다음</span></button>
				</div>
				</form>
			</div>
		</div>
	</div>
</article>