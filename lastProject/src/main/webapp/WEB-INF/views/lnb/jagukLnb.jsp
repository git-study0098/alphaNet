<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
						<div>
							<label for="mem_id" class="blind">아이디</label> <input type="text"
								name="mem_id" id="mem_id" style="ime-mode: disabled;"> <label
								for="mem_pswd" class="blind">비밀번호</label> <input type="password"
								name="mem_pswd" id="mem_pswd" maxlength="16"> <a
								href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
						</div>
						<div>
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

			<h2 id="lnbTitle" class="tit_lnb">자격증/확인서</h2>
			<!-- menu리스트 -->
			<ul id="lnbNavi" class="lnb on">
				<li class="low"><a>자격증 발급 안내</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/infoReq">자격증발급/발급처</a></li>
						<li><a href="<%=request.getContextPath() %>/infoNew">신규/인정/재발급</a></li>
						<li><a href="<%=request.getContextPath() %>/infoFunc">기능사보기능사자격부여</a></li>
						<li><a href="<%=request.getContextPath() %>/infoTarget">면허발급대상종목</a></li>
						<li><a href="<%=request.getContextPath() %>/infoWarn">국가자격취득자주의사항</a></li>
						<li><a href="<%=request.getContextPath() %>/infoEdu">보수교육갱신등록폐지</a></li>
						<li><a href="<%=request.getContextPath() %>/infoNon">폐지종목자격증발급</a></li>
					</ul></li>
				<li class="low active on"><a>자격증 발급</a>
					<ul style="display: block;">
						<li class="on"><a href="<%=request.getContextPath() %>/request1">자격증발급신청</a></li>
						<li><a>자격증발급신청내역조회</a></li>
						<li class="on"><a href="<%=request.getContextPath() %>/request1">자격증발급신청</a></li>
						<li><a href="<%=request.getContextPath() %>/member/request2">자격증발급신청내역조회</a></li>
					</ul></li>
				<li class="low"><a>확인서 발급</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/confirmInfo">확인서발급안내</a></li>
						<li><a href="<%=request.getContextPath() %>/member/confirmRequest">확인서발급신청</a></li>
						<li><a href="<%=request.getContextPath() %>/member/confirmSelect">확인서발급신청내역조회</a></li>
					</ul></li>
				<li class="low"><a>자격취득/미발급 조회</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/member/jagukGet">자격증취득조회</a></li>
						<li><a href="<%=request.getContextPath() %>/nonGet">자격증 미발급조회</a></li>
					</ul></li>
				<li class="low"><a>확인서/자격증 진위확인</a>
					<ul style="display: block;">
						<li><a href="<%=request.getContextPath() %>/confirmTrue">확인서진위확인</a></li>
						<li><a href="<%=request.getContextPath() %>/jagukTrue">자격증진위확인</a></li>
						<li><a>단체진위확인</a></li>
					</ul></li>
			</ul>
			<!-- menu리스트 끝 -->
		</div>