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

				<h2 id="lnbTitle" class="tit_lnb">마이페이지</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active on"><a>원서접수관리</a>
						<ul style="display: block;">
							<li class="on"><a href="<%=request.getContextPath() %>/member/wonseoHistory">원서접수내역</a></li>
							<li><a href="<%=request.getContextPath() %>/member/myPageWonseoReq">원서접수신청</a></li>
							<li><a href="<%=request.getContextPath() %>/member/resultCheck">시험결과보기</a></li>
							<li><a href="<%=request.getContextPath() %>/member/changeImg">사진변경신청/결과</a></li>
						</ul></li>
					<li class="low"><a>응시자격</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/selfTest">응시자격자가진단</a></li>
							<li><a href="<%=request.getContextPath() %>/member/subCheck">응시가능종목확인</a></li>
							<li><a href="<%=request.getContextPath() %>/member/docCheck">응시자격제출셔류확인</a></li>
							<li><a href="<%=request.getContextPath() %>/member/docSubmit">응시자격서류 온라인 제출</a></li>
						</ul></li>
					<li class="low"><a>발급조회현황</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/confirmHistory">확인서발급내역</a></li>
							<li><a href="<%=request.getContextPath() %>/member/jagukHistory">자격증발급내역</a></li>
							<li><a href="<%=request.getContextPath() %>/member/jagukList">자격증취득조회</a></li>
						</ul></li>
					<li class="low"><a>면제정보보기</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/testPass">시험면제</a></li>
							<li><a href="<%=request.getContextPath() %>/member/subPass">과목면제</a></li>
						</ul></li>
					<li class="low"><a>개인정보관리</a>
						<ul style="display: block;">
							<li><a href="<%=request.getContextPath() %>/member/myInfo">개인정보수정</a></li>
							<li><a href="<%=request.getContextPath() %>/member/schJobInfo">학력/경력수정</a></li>
							<li><a href="<%=request.getContextPath() %>/member/out">회원탈퇴</a></li>
						</ul></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>