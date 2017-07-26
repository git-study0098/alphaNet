<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/client/customer.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/client/base2017.css" />
	
	<%
	String email = (String) session.getAttribute("email");
	%>
	
	
<script>
	function autoMail(){
		var url  ="<%=request.getContextPath()%>/client/mail";
	var pop=window.open(url ,"pop2","width=50px ,height=50px");
	}

</script>
		
<div id="container">
			<div class="Top">
				<h1 class="logo">
					<a href="main" class="hrd">
						<img src="<%=request.getContextPath()%>/resources/client/images/logo.jpg" alt="알파넷" width="130px" height="100px"/>
					</a>
					<a href="main" class="voc">
						<img src="<%=request.getContextPath()%>/resources/client/images/voc_logo.png" alt="알파넷 고객의 소리" style="margin-left: 80px;" />
					</a>
				</h1>
				<div class="Quick_M">
					<ul class="Quick_Menu">
						
						<li class="icon02">
							<a href="<%=request.getContextPath()%>/client/clientSound">고객의소리</a>
						</li>
						<li class="icon04">
							<a href="<%=request.getContextPath() %>/client/myPage?email=<%=email%>">마이페이지</a>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="sectionArea">

<div id="snb">
	<h2 class="oneline">알려드립니다</h2>	
	<ul>
		<li>
			<a href="notice2">민원처리절차</a>
		</li>
		<li>
			<a href="notice">공지사항</a>
		</li>
		<li>
			<a href="notice3">사이트맵</a>
		</li>
	</ul>
	<div class="subtelBox">
		<p class="tel"><span>전화</span><strong>1644 - 8000</strong></p>
		<p class="tel_txt">09:00 ~ 18:00<br>토요일, 일요일, 공휴일 제외</p>
		<p class="tel_txt">문자상담은 40자 이내</p>
	</div>
</div>


<!-- content 시작 -->
	<div class="content">					
					<h3 class="nonBg">본인인증</h3>
					<div>
						<p><b>
							「고객의 소리」는 평생능력개발, 자격시험, 외국인고용지원 및 해외취업, 숙련기술장려와 기능경기 등 공단에서 수행하는 사		
							<br>
							업에 대한 문의와 제안 등을 접수, 확인하는 홈페이지입니다.
							<br>
							<br>
							알파넷, NCS 등 공단사업 개별 홈페이지에서 로그인 이후 해당 홈페이지에서 「고객의 소리」홈페이지로 접속하신 경우, 다시
							<br>
							한번 본인 확인 절차(실명제 운영)를 진행하고 있으며 이는 개인정보의 오남용을 막기 위한 절차이오니 양해 부탁드립니다.
							<br>
							(사용자 인증정보는 60분 동안 유지됩니다.)
							<br>
							<br>
							만 14세 미만 아동의 경우 개인정보보호법에 의해 민원접수 및 답변확인과 관련하여 개인정보 수집·이용 등을 위해 법정대리인
							<br>
							의 동의가 필요합니다. (최초 1회 민원 접수 시)
							<br>
							※ 만 14세 미만 아동의 본인 인증 후 법정대리인의 동의 및 본인 인증 절차가 이어집니다.
							<br>
							<br>
							이메일인증, 휴대전화 인증, 법정대리인의 동의가 불가한 경우 HRD고객센터(1644-8000)를 이용해 주시기 바랍니다.		
							<br>
						</b></p>
						<div class="">			
							<div class="log1">
								<table>
									<tbody><tr>
										<td height="5"></td>
									</tr>
									<tr>
										<td align="center">
					    					<div id="GPIN_CHECK" class="log1" style="height: 200px;">
												<table>
													<tbody><tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>
															<div class="log">
																<table align="center">
																	<tbody><tr>
																		<td colspan="3" height="5"></td>
																	</tr>
																	<tr>
																		<td><img src="<%=request.getContextPath()%>/resources/client/images/txt_ipin.gif" alt=""></td>
																		<td width="50"></td>
																		<td>
																			<a href ="#" onclick="autoMail();" >
																				<img src="<%=request.getContextPath()%>/resources/client/images/btn_ipin.gif" alt="공공 아이핀(I-PIN) 인증">
																			</a>
																		</td>
																	</tr>
																</tbody></table>
															</div>
															<br>
															<div class="log">
																<table align="center">
																	<tbody><tr>
																		<td colspan="3" height="5"></td>
																	</tr>
																	<tr>
																		<td><img src="<%=request.getContextPath()%>/resources/client/images/txt_cpc.gif" alt=""></td>
																		<td width="50"></td>
																		<td>
																			<a href="client">
																				<img src="<%=request.getContextPath()%>/resources/client/images/btn_cpc.gif" alt="휴대전화 인증">
																			</a>
																		</td>
																	</tr>
																</tbody></table>
															</div>
														</td>
													</tr>
												</tbody></table>
											</div>
										</td>
									</tr>
								</tbody></table>
							</div>
						</div>
					</div>
				</div>
	
</div>
</div>