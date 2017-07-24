<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container">
			<div class="Top">
				<h1 class="logo">
					<a href="<%=request.getContextPath()%>/client/main" class="hrd">
						<img src="<%=request.getContextPath()%>/resources/client/images/logo.jpg" alt="알파넷" width="130px" height="100px">
					</a>
					<a href="<%=request.getContextPath()%>/client/main" class="voc">
						<img src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png" alt="고객의 소리" style="margin-left: 80px;">
					</a>
				</h1>
				<div class="tSearch">
					<p class="STitle">
						<a href="#" title="">[자주하는 질문 FAQ]</a>
					</p>					
					<fieldset>
						<legend>[자주하는 질문 FAQ]</legend>
						<ul>
							<li class="searchback">
								<input 
								type="text" name="searchQuery" id="searchQuery" title="검색어" placeholder="검색 키워드를 입력해주세요." onkeydown="javascript:if(event.keyCode == 13) { goSearchEngine(); }">
							</li>
							<li class="searchbtn">
								<a href="#">
									<img src="<%=request.getContextPath()%>/resources/client/images/btn_search.png" alt="검색">
								</a>
							</li>
						</ul>
					</fieldset>					
				</div>
				<dl class="Bestkeyword">
					<dt>인기검색어</dt>
					<dd>
						<ul>
							<li>사업주</li>
							<li>NCS</li>
							<li>환불</li>
							<li>재검토</li>
							<li>일학습</li>
						</ul>
					</dd>
				</dl>
			</div>
			<div class="sectionArea">
				<div class="section01">
					<h2>편리한 서비스</h2>
					<div class="CallService">
						<h3>전화ㆍ문자상담</h3>
						<p class="Number">1644-8000</p>
						<ul>
							<li>09:00 ~ 18:00</li>
							<li>토요일, 일요일, 공휴일 제외</li>
							<li class="colorR">※ 문자상담은 40자 이내</li>
						</ul>
					</div>
					<div class="notice_box">
						<h3>공지사항</h3>
						<ul class="newsList">

							<li>
								<a href="#">찾아가는 FAQ 뉴스 (자격시험편)</a>
								<span class="date">2017-06-26</span>
							</li>

							<li>
								<a href="#">1644-8000 상담서비스 일시 중단 알림</a>
								<span class="date">2017-05-15</span>
							</li>

							<li>
								<a href="#">『고객의 소리』홈페이지 디자인 개편 안내</a>
								<span class="date">2017-04-19</span>
							</li>

							<li>
								<a href="#">모바일 큐넷 서비스 일시 중단 알림</a>
								<span class="date">2017-03-13</span>
							</li>

						</ul>
						<a href="<%=request.getContextPath()%>/client/notice" id="more" class="more">공지사항 더보기</a>
					</div>
				</div>
				<div class="section02">
					<h2>투명한 서비스</h2>
					<ul class="transparent_S">
						<li class="icon01"><a href="<%=request.getContextPath()%>/client/client">일반문의</a></li>
						<li class="icon02"><a href="<%=request.getContextPath()%>/client/client">불편불만</a></li>
						<li class="icon03"><a href="<%=request.getContextPath()%>/client/client">고객칭찬</a></li>
						<li class="icon04"><a href="<%=request.getContextPath()%>/client/client">고객제안</a></li>
					</ul>
				</div>
				<div class="section03">
					<h2>안전한 서비스</h2>
					<ul class="safe_S">
						<li class="icon01"><a href="<%=request.getContextPath()%>/client/auto">나의 민원<span class="fontS1">(My Page)</span></a></li>
						<li class="icon02"><a href="<%=request.getContextPath()%>/client/auto">부조리신고<span>(부정비리,자격시험 부정행위 등)</span></a></li>
					</ul>
					<div class="slogan">
						<p class="slogan_Txt">
							<img src="<%=request.getContextPath()%>/resources/client/images/HRD_slogan.png" alt="고객 &quot;매우만족&quot; 한국산업인력공단 사람과 일터의 가치를 높여주는 인적자원 개발·평가·활용 지원 중심기관이 되겠습니다.">
						</p>
					</div>
				</div>
			</div>
		</div>