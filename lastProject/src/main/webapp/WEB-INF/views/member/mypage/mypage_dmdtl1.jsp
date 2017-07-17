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
	
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
<jsp:include page="../../lnb/mypageLnb.jsp"/>
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
					<li><strong>응시자격 자가진단</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<!-- 공인어학성적확인 -->
			<div id="langPopup_view" class="popup"></div>
			<div class="content">
				<h3 class="tit_content">응시자격 자가진단</h3>
				<!-- step -->
				<div class="step">
					<ul class="list02">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_qualification_on_01.gif" alt=""><span>자격선택</span><span class="blind">선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_qualification_off_02.gif" alt=""><span>학력정보입력</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_qualification_off_03.gif" alt=""><span>경력정보입력</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_qualification_off_06.gif" alt=""><span>기능대회수상경력</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_qualification_off_05.gif" alt=""><span>진단결과</span></li>
					</ul>
				</div>
				<h4>응시자격 검색</h4>
				<div class="infoBox">
					<div>
						<p class="list">
							자격검색으로 응시자격을 자가진단 가능합니다. <br>
							 본 응시자격 자가진단은 시험 접수 전 본인의 응시자격 여부를 스스로 진단해 보는 것으로서, 실제 제출서류의 사실관계 등에 따라 결과가 달라질 수 있으므로 이 점 유의하시기 바랍니다. <span class="fc_r">(응시가능/불가능 진단결과에 관계없이 시험 접수는 가능)</span>
						</p>
					</div>
					<span></span>
				</div>

				<div class="tabLayout" id="subTab">
					<ul class="n5">
						<li class="on"><a href="#" title="기술자격"><span>기술자격</span></a></li>
						<li><a href="#"><span>전문자격</span></a></li>
					</ul>
				</div>
				<form action="" name="form1" method="post">
				<div class="tabView" style="display: block;">
					<div class="txt_left mb10">
						<span>
							<label for="jmNm"><strong class="fc_3">자격검색 </strong></label>
							<input type="text" style="width:150px" id="jmNm" name="jmNm" value="">
							<input name="p_jmCd" type="hidden">
							<input name="p_section" type="hidden" value="item">
							<button type="button" class="btn3_icon search" onclick="getNoticeList('1')"><span class="blind">검색</span></button>
						</span>
					</div>
					<div id="viewList">

					<div class="take_typelist type2 mb20">
						<ul>

							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('3375')"><span>가스기능장</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('1471')"><span>가스기사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('0752')"><span>가스기술사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('2471')"><span>가스산업기사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('2044')"><span>객화차정비산업기사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('0080')"><span>건설기계기술사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('1040')"><span>건설기계설비기사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('2040')"><span>건설기계설비산업기사</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('3120')"><span>건설기계정비기능장</span></a></li>


							<li><strong class="tech">국가기술자격</strong><a href="#" onclick="goNext('1050')"><span>건설기계정비기사</span></a></li>


						</ul>
					</div>
					<!-- paging -->
										<div class="pagination1 mb20">
						<button type="button" class="btn3_icon3 btn_prev_first" title="이전10페이지"><span class="blind">이전10페이지</span></button>
						<button type="button" class="btn3_icon3 btn_prev_page" title="이전 페이지"><span class="blind">이전 페이지</span></button>
						<span class="page">
							<strong class="on" title="1페이지">1</strong>
							<button type="button" class="btn5" onclick="goPage(2);" title="2페이지"><span>2</span></button>
							<button type="button" class="btn5" onclick="goPage(3);" title="3페이지"><span>3</span></button>
							<button type="button" class="btn5" onclick="goPage(4);" title="4페이지"><span>4</span></button>
							<button type="button" class="btn5" onclick="goPage(5);" title="5페이지"><span>5</span></button>
							<button type="button" class="btn5" onclick="goPage(6);" title="6페이지"><span>6</span></button>
							<button type="button" class="btn5" onclick="goPage(7);" title="7페이지"><span>7</span></button>
							<button type="button" class="btn5" onclick="goPage(8);" title="8페이지"><span>8</span></button>
							<button type="button" class="btn5" onclick="goPage(9);" title="9페이지"><span>9</span></button>
							<button type="button" class="btn5" onclick="goPage(10);" title="10페이지"><span>10</span></button>
						</span>
						<button type="button" class="btn3_icon3 btn_next_page" onclick="goPage(2);" title="다음 페이지"><span class="blind">다음 페이지</span></button>
						<button type="button" class="btn3_icon3 btn_next_end" onclick="goPage(11);" title="다음10페이지"><span class="blind">다음10페이지</span></button>
					</div>
					</div>
				</div>
				<div class="tabView" style="display:none">
					<div class="take_typelist type2 mb20">
						<ul>
							<li><strong class="tech">국가전문자격</strong><a href="#" onclick="goNext2('67')"><span>청소년상담사</span></a></li>
							<li><strong class="tech">국가전문자격</strong><a href="#" onclick="goNext2('66')"><span>청소년지도사</span></a></li>
							<li><strong class="tech">국가전문자격</strong><a href="#" onclick="goNext2('31')"><span>행정사</span></a></li>
						</ul>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</article>