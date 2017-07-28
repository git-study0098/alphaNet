<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
		<jsp:include page="../../../lnb/noticeLnb.jsp"/>
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
					<li>정부 3.0 고객맞춤 정보방</li>
					<li><strong>대학생(중고생)장학금</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<h3 class="tit_content">정부 3.0 고객맞춤 정보방</h3>
				<h4>대학생(중고생)장학금</h4>
				<table class="des_table02 cw500"
					summary="취업 · 훈련 · 연수 관련 기관 안내 및 사이트 바로가기 정보제공">
					<caption>취업 · 훈련 · 연수 관련기관</caption>
					<colgroup>
						<col width="290px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row" class="logo"><a
								href="http://jaedan.nonghyup.com/" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-1.gif"
									alt="농협재단">
							</a></th>
							<td><strong class="name">농협재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.dhrdf.or.kr/task/found/kind.jsp"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-2.gif"
									alt="대전인재육성장학재단"></a></th>
							<td><strong class="name">대전인재육성장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.dongam.biz/index.html" target="_blank"
								title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-3.gif" alt="동암장학재단"></a></th>
							<td><strong class="name">동암장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://foundation.miraeasset.com/scholarship/internal.do"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-4.gif"
									alt="미래에셋박현주재단"></a></th>
							<td><strong class="name">미래에셋박현주재단</strong>
								<p></p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.sffl.or.kr/" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-5.gif"
									alt="미래인재육성재단">
							</a></th>
							<td><strong class="name">미래인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.sdream.or.kr/index.jsp" target="_blank"
								title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-6.gif" alt="삼성꿈장학재단"></a></th>
							<td><strong class="name">삼성꿈장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.ssscholarship.com/" target="_blank"
								title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-7.gif" alt="삼성장학회"></a></th>
							<td><strong class="name">삼성장학회</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://shscholar.com/?" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-8.gif"
									alt="성혜장학회" style="width: 120px">
							</a></th>
							<td><strong class="name">성혜장학회</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.janghakin.or.kr/scholarship/index.jsp"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-9.gif" alt="인천인재육성재단"
									style="height: 35px"></a></th>
							<td><strong class="name">인천인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.gjcsf.or.kr/" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-10.gif"
									alt="광주시민장학회" style="height: 35px">
							</a></th>
							<td><strong class="name">광주시민장학회</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.cninjae.or.kr/" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-11.gif"
									alt="충청남도인재육성재단">
							</a></th>
							<td><strong class="name">충청남도인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.chrdf.or.kr/home/main.do" target="_blank"
								title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-12.gif"
									alt="충북인재육성재단"></a></th>
							<td><strong class="name">충북인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.kfas.or.kr/ScholarShip/ScholarShip0501.aspx"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-13.gif"
									alt="한국고등교육재단" style="height: 35px"></a></th>
							<td><strong class="name">한국고등교육재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.kosaf.go.kr/" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-14.gif"
									alt="한국장학재단" style="height: 25px">
							</a></th>
							<td><strong class="name">한국장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.kosffl.or.kr/" target="_blank" title="새창열림">
									<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-15.gif"
									alt="한국지도자육성장학재단" style="height: 65px">
							</a></th>
							<td><strong class="name">한국지도자육성장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.hyundai-cmkfoundation.org/com/esScholarship.do"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-16.gif"
									alt="현대차정몽구재단" style="height: 45px"></a></th>
							<td><strong class="name">현대차정몽구재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.ibkfoundation.or.kr/IBKF/IndexNew"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-17.gif"
									alt="IBK행복나눔재단"></a></th>
							<td><strong class="name">IBK행복나눔재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://scholarship.ktngtogether.com/front/contents/business/postgrad.asp"
								target="_blank" title="새창열림"> <img
									src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-18.gif"
									alt="KT&amp;G장학재단"></a></th>
							<td><strong class="name">KT&amp;G장학재단</strong></td>
						</tr>
					</tbody>

				</table>
				<dl class="jungbo30_list">


					<dt class="logo">
						<a href="http://jaedan.nonghyup.com/" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-1.gif" alt="농협재단">
						</a>
					</dt>
					<dd>
						<strong class="name">농협재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.dhrdf.or.kr/task/found/kind.jsp"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-2.gif" alt="대전인재육성장학재단"></a>
					</dt>
					<dd>
						<strong class="name">대전인재육성장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.dongam.biz/index.html" target="_blank"
							title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-3.gif" alt="동암장학재단"></a>
					</dt>
					<dd>
						<strong class="name">동암장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://foundation.miraeasset.com/scholarship/internal.do"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-4.gif" alt="미래에셋박현주재단"></a>
					</dt>
					<dd>
						<strong class="name">미래에셋박현주재단</strong>
						<p></p>
					</dd>


					<dt class="logo">
						<a href="http://www.sffl.or.kr/" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-5.gif"
							alt="미래인재육성재단">
						</a>
					</dt>
					<dd>
						<strong class="name">미래인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.sdream.or.kr/index.jsp" target="_blank"
							title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-6.gif" alt="삼성꿈장학재단"></a>
					</dt>
					<dd>
						<strong class="name">삼성꿈장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.ssscholarship.com/" target="_blank"
							title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-7.gif" alt="삼성장학회"></a>
					</dt>
					<dd>
						<strong class="name">삼성장학회</strong>
					</dd>


					<dt class="logo">
						<a href="http://shscholar.com/?" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-8.gif" alt="성혜장학회"
							style="width: 120px">
						</a>
					</dt>
					<dd>
						<strong class="name">성혜장학회</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.janghakin.or.kr/scholarship/index.jsp"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-9.gif" alt="인천인재육성재단"
							style="height: 35px"></a>
					</dt>
					<dd>
						<strong class="name">인천인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.gjcsf.or.kr/" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-10.gif"
							alt="광주시민장학회" style="height: 35px">
						</a>
					</dt>
					<dd>
						<strong class="name">광주시민장학회</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.cninjae.or.kr/" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-11.gif"
							alt="충청남도인재육성재단">
						</a>
					</dt>
					<dd>
						<strong class="name">충청남도인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.chrdf.or.kr/home/main.do" target="_blank"
							title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-12.gif" alt="충북인재육성재단"></a>
					</dt>
					<dd>
						<strong class="name">충북인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.kfas.or.kr/ScholarShip/ScholarShip0501.aspx"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-13.gif" alt="한국고등교육재단"
							style="height: 35px"></a>
					</dt>
					<dd>
						<strong class="name">한국고등교육재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.kosaf.go.kr/" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-14.gif"
							alt="한국장학재단" style="height: 25px">
						</a>
					</dt>
					<dd>
						<strong class="name">한국장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.kosffl.or.kr/" target="_blank" title="새창열림">
							<img src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-15.gif"
							alt="한국지도자육성장학재단" style="height: 65px">
						</a>
					</dt>
					<dd>
						<strong class="name">한국지도자육성장학재단</strong>
					</dd>


					<dt class="logo">
						<a
							href="http://www.hyundai-cmkfoundation.org/com/esScholarship.do"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-16.gif" alt="현대차정몽구재단"
							style="height: 45px"></a>
					</dt>
					<dd>
						<strong class="name">현대차정몽구재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.ibkfoundation.or.kr/IBKF/IndexNew"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-17.gif" alt="IBK행복나눔재단"></a>
					</dt>
					<dd>
						<strong class="name">IBK행복나눔재단</strong>
					</dd>


					<dt class="logo">
						<a
							href="http://scholarship.ktngtogether.com/front/contents/business/postgrad.asp"
							target="_blank" title="새창열림"> <img
							src="<%=request.getContextPath()%>/resources/images/content/cst012_02-cte03-18.gif"
							alt="KT&amp;G장학재단"></a>
					</dt>
					<dd>
						<strong class="name">KT&amp;G장학재단</strong>
					</dd>


				</dl>
			</div>
		</div>
	</div>
</article>