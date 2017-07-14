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
			<div id="lnb">
				<div class="login">
					<!-- 회원 구분 -->
					<div class="login_tab">
						<a href="#" class="btn on" id="pMem"><span>일반회원</span></a>
						<!-- // class="on" 으로 탭 선택 표시 -->
					</div>
					<!-- //회원 구분 -->

					<!-- //로그인 전 -->
					<form id="loginForm" method="post">
						<input type="hidden" name="pageId" value="man004_01_10"> <input
							type="hidden" name="redir"
							value="man004.do?id=man00401&amp;gSite=Q&amp;gId=&amp;notiType=10">
						<input type="hidden" name="lnb" value="Y"> <input
							type="hidden" name="groupChk" value="N"> <input
							type="hidden" name="logoutYn" value="Y">
						<div class="login_area">

							<!-- 로그인 전 -->
							<div class="login_yn">
								<label for="mem_id" class="blind">아이디</label> <input type="text"
									name="mem_id" id="mem_id" style="ime-mode: disabled;">
								<label for="mem_pswd" class="blind">비밀번호</label> <input
									type="password" name="mem_pswd" id="mem_pswd" maxlength="16">
								<a href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
							</div>
							<div class="login_yn">
								<ul>
									<li><a
										href="http://www.q-net.or.kr/man003.do?id=man00301&amp;gSite=Q&amp;gId="
										class="golink01"><span>회원가입</span></a></li>
									<li><a
										href="https://www.q-net.or.kr/man002.do?id=man00201&amp;gSite=Q&amp;gId="
										class="golink01"><span>아이디/비밀번호 찾기</span></a></li>
								</ul>
							</div>
							<!-- //로그인 전 -->
						</div>
					</form>
				</div>

				<h2 id="lnbTitle" class="tit_lnb">고객지원</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active on"><a>공지사항</a>
						<ul style="display: block;">
							<li><a>공지사항</a></li>
							<li class="on"><a>자격제도</a></li>
							<li><a>시행</a></li>
							<li><a>출제</a></li>
							<li><a>서비스 개선</a></li>
						</ul></li>
					<li class="low"><a>이용안내</a>
						<ul style="display: block;">
							<li><a>사이트 이용방법</a></li>
							<li><a>자주찾는 질문</a></li>
						</ul></li>
					<li class="low"><a>자료실</a>
						<ul style="display: block;">
							<li><a>각종서식</a></li>
							<li><a>출제기준</a></li>
							<li><a>기출문제(기술사)</a></li>
							<li><a>공개문제</a></li>
							<li><a>관련법령</a></li>
						</ul></li>
					<li class="low"><a>환불안내</a>
						<ul style="display: block;">
							<li><a>기술자격 환불안내</a></li>
							<li><a>전문자격 환불안내</a></li>
						</ul></li>
					<li class="low"><a>고객 맞춤정보</a>
						<ul style="display: block;">
							<li><a>취업/훈련/연수</a></li>
							<li><a>대학생(중고생)장학금</a></li>
						</ul></li>
					<li class="low"><a>관련학과 지정신청</a></li>
					<li><a>고객의 소리</a></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>
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
					<li>공지사항</li>
					<li><strong>자격제도</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">자격제도</h3>
				<!-- //컨텐츠 타이틀 -->
				<div>
					<div class="searchType">
						<span> <label for="notiType">검색</label> <select
							name="notiType" id="notiType" title="검색 카테고리 선택" class="m0">
								<option value="10">전체</option>
								<option value="00">긴급</option>
								<option value="20" selected="selected">자격제도</option>
								<option value="30">시행</option>
								<option value="40">출제</option>
								<option value="50">서비스개선</option>
						</select> <select name="schType" id="schType" title="검색 구분 선택" class="m0">
								<option value="A" selected="selected">전체</option>
								<option value="T">글제목</option>
								<option value="C">내용</option>
								<option value="D">담당부서</option>
						</select> <input type="text" name="schText" style="width: 150px"
							id="schText" title="검색어 입력"> <a href="#"
							class="btn3_icon search" onclick="getNoticeList(1)"><span
								class="blind">검색</span></a>
						</span>
					</div>
					<div id="viewList">
						<div class="tbl_type1">
							<table summary="번호,제목,담당부서,최종수정일자 항목으로 정보 제공"
								style="table-layout: fixed">
								<caption>자격제도 목록</caption>
								<colgroup>
									<col width="7%">
									<col width="*">
									<col width="16%">
									<col width="12%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">제목</th>
										<th scope="col">담당부서</th>
										<th scope="col">최종수정일자</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td>1</td>
										<td class="tit" title="2013년도 자격취득자 체험수기공모 입상작"><a
											href="#" onclick="goNext('5157011', '1')">2013년도 자격취득자
												체험수기공모 입상작</a></td>
										<td>능력평가국 신자..</td>
										<td>2015.12.01</td>
									</tr>

									<tr>
										<td>2</td>
										<td class="tit" title="2015년도 자격취득자 체험수기공모 입상작"><a
											href="#" onclick="goNext('5156804', '1')">2015년도 자격취득자
												체험수기공모 입상작</a></td>
										<td>능력평가국 신자..</td>
										<td>2015.11.23</td>
									</tr>

									<tr>
										<td>3</td>
										<td class="tit" title="2014년도 자격취득자 체험수기공모 입상작"><a
											href="#" onclick="goNext('5156803', '1')">2014년도 자격취득자
												체험수기공모 입상작</a></td>
										<td>능력평가국 신자..</td>
										<td>2015.11.23</td>
									</tr>

									<tr>
										<td>4</td>
										<td class="tit" title="국가전문자격 성적확인서 온라인 발급 서비스 개시"><a
											href="#" onclick="goNext('5146802', '1')">국가전문자격 성적확인서
												온라인 발급 서비스 개시</a></td>
										<td>능력평가국 전문..</td>
										<td>2015.09.02</td>
									</tr>

									<tr>
										<td>5</td>
										<td class="tit" title="국가기술자격증 불법대여 예방 홍보"><a href="#"
											onclick="goNext('5132859', '1')">국가기술자격증 불법대여 예방 홍보</a></td>
										<td>능력평가국 신자..</td>
										<td>2015.05.15</td>
									</tr>

									<tr>
										<td>6</td>
										<td class="tit" title="기사 제2회 필기시험 과목면제관련 안내"><a href="#"
											onclick="goNext('5086400', '1')">기사 제2회 필기시험 과목면제관련 안내</a></td>
										<td>능력평가국 기술..</td>
										<td>2015.04.30</td>
									</tr>

									<tr>
										<td>7</td>
										<td class="tit"
											title="보일러기능장(산업기사) 종목명칭 변경 및 통합에 따른 응시자격 변경사항 알림"><a
											href="#" onclick="goNext('5084000', '1')"><b>보일러기능장(산업기사)
													종목명칭 변경 및 통합에 따른 ...</b></a></td>
										<td>능력평가국 기술..</td>
										<td>2015.04.24</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div class="pagination1 mb20">
							<button type="button" class="btn3_icon3 btn_prev_first"
								title="이전10페이지">
								<span class="blind">이전10페이지</span>
							</button>
							<button type="button" class="btn3_icon3 btn_prev_page"
								title="이전 페이지">
								<span class="blind">이전 페이지</span>
							</button>
							<span class="page"> <strong class="on" title="1페이지">1</strong>
							</span>
							<button type="button" class="btn3_icon3 btn_next_page"
								title="다음 페이지">
								<span class="blind">다음 페이지</span>
							</button>
							<button type="button" class="btn3_icon3 btn_next_end"
								title="다음10페이지">
								<span class="blind">다음10페이지</span>
							</button>
						</div>
					</div>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>