<%@page import="org.springframework.security.core.userdetails.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>  

<style>
	*{box-sizing:content-box;}
</style>

<script>
	function goPwdFind(){
		idd = $('#userIDpw').val()
		if(idd==null || idd==""){
			alert('아이디를 입력해주세요');
		}
		else{
			window.open('<%=request.getContextPath()%>/login/findPwdInput?idd='+idd,'findPwd','width=600px,height=190px,left=300px,top=250px')
		}
	}
	function getPWD(idd,bir1,ph1,nm){
		location.href="<%=request.getContextPath()%>/login/goFindPwd?nm="+nm+"&bir="+bir1+"&ph="+ph1+"&idd="+idd;
	}
</script>
<
<article>
	<div id="container" class="bgNone">
<div id="content" class="main_login" style="margin-left: 100px"> <!-- w:476 -->
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li><strong>아이디/비밀번호 재발급</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div id="pwfindPop_view" class="popup"></div>
			<form id="find" name="findPswd">
			<div class="content">
				<h3 class="tit_content">아이디 / 비밀번호 재설정</h3>
				<div class="new_center_area">
					<div class="tabLayout" id="findTab">
						<ul>
							<li id="findIdOn" class=""><a href="<%=request.getContextPath()%>/login/findIdForm" id="findId" name="findTab" title=""><span>아이디 찾기</span></a></li>
							<li id="findPwOn" class="on"><a href="<%=request.getContextPath()%>/login/findPwdForm" id="findPw" name="findTab" title="비밀번호 재설정"><span>비밀번호 재설정</span></a></li>
						</ul>
					</div>
					<div class="findTab" style="display: none;">
						<div class="new_find">
							<div class="float_box new_find">
								<div class="left">
									<h4>개인인증으로 찾기</h4>
									<div class="topArea">
										<p><span class="fc_b2">개인 인증수단을 통해 아이디를 찾으시려는 경우</span><br>아래 인증방법 중 선택하여 아이디를 검색하여 주시기 바랍니다.</p>
									</div>
									<div class="bgArea">
										<div class="full_btn">
											<button type="button" onclick="certifiSubmit('mobile')" title="새 창"><span>본인명의 휴대폰<br>인증으로 찾기</span></button>
										</div>
									</div>
								</div>
								<div class="right">
									<h4>등록된 회원정보로 찾기</h4>
									<div class="topArea">
										<p><span class="fc_b2">가입 시 등록한 회원가입정보를 통해 아이디를 찾으시려는 경우</span><br> 아래 내용을 입력 후 아이디를 조회하시기 바랍니다.</p>
									</div>
									<div class="bgArea">
										<div class="form_box">
											<fieldset>
												<legend>개인정보 입력</legend>
												<p class="first"><label for="userNM">이름</label> <input type="text" class="form_text" style="width:184px;ime-mode:active;" id="userNM" name="userNM" value=""></p>
												<p>
													<label for="birth_yy">생년월일</label>
													<select id="birth_yy" name="birth_yy" title="년" style="width:71px"><option value="" selected="selected">년도</option><option value="17">2017</option><option value="16">2016</option><option value="15">2015</option><option value="14">2014</option><option value="13">2013</option><option value="12">2012</option><option value="11">2011</option><option value="10">2010</option><option value="09">2009</option><option value="08">2008</option><option value="07">2007</option><option value="06">2006</option><option value="05">2005</option><option value="04">2004</option><option value="03">2003</option><option value="02">2002</option><option value="01">2001</option><option value="00">2000</option><option value="99">1999</option><option value="98">1998</option><option value="97">1997</option><option value="96">1996</option><option value="95">1995</option><option value="94">1994</option><option value="93">1993</option><option value="92">1992</option><option value="91">1991</option><option value="90">1990</option><option value="89">1989</option><option value="88">1988</option><option value="87">1987</option><option value="86">1986</option><option value="85">1985</option><option value="84">1984</option><option value="83">1983</option><option value="82">1982</option><option value="81">1981</option><option value="80">1980</option><option value="79">1979</option><option value="78">1978</option><option value="77">1977</option><option value="76">1976</option><option value="75">1975</option><option value="74">1974</option><option value="73">1973</option><option value="72">1972</option><option value="71">1971</option><option value="70">1970</option><option value="69">1969</option><option value="68">1968</option><option value="67">1967</option><option value="66">1966</option><option value="65">1965</option><option value="64">1964</option><option value="63">1963</option><option value="62">1962</option><option value="61">1961</option><option value="60">1960</option><option value="59">1959</option><option value="58">1958</option><option value="57">1957</option><option value="56">1956</option><option value="55">1955</option><option value="54">1954</option><option value="53">1953</option><option value="52">1952</option><option value="51">1951</option><option value="50">1950</option><option value="49">1949</option><option value="48">1948</option><option value="47">1947</option><option value="46">1946</option><option value="45">1945</option><option value="44">1944</option><option value="43">1943</option><option value="42">1942</option><option value="41">1941</option><option value="40">1940</option><option value="39">1939</option><option value="38">1938</option><option value="37">1937</option><option value="36">1936</option><option value="35">1935</option><option value="34">1934</option><option value="33">1933</option><option value="32">1932</option><option value="31">1931</option><option value="30">1930</option><option value="29">1929</option><option value="28">1928</option><option value="27">1927</option><option value="26">1926</option><option value="25">1925</option><option value="24">1924</option><option value="23">1923</option><option value="22">1922</option><option value="21">1921</option><option value="20">1920</option><option value="19">1919</option><option value="18">1918</option></select>
													<select id="birth_mm" name="birth_mm" title="월" style="width:59px"><option value="" selected="">월</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
													<select id="birth_dd" name="birth_dd" title="일" style="width:59px"><option value="" selected="">일</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
												</p>
												<p>
													<label for="mPhone01">전화번호</label>
													<select id="mPhone01" name="mPhone01" title="통신사번호 또는 지역번호 선택" style="width:71px">
														<option value="">선택</option>
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
														<option value="02">02</option>
														<option value="031">031</option>
														<option value="032">032</option>
														<option value="033">033</option>
														<option value="041">041</option>
														<option value="042">042</option>
														<option value="043">043</option>
														<option value="044">044</option>
														<option value="051">051</option>
														<option value="052">052</option>
														<option value="053">053</option>
														<option value="054">054</option>
														<option value="055">055</option>
														<option value="061">061</option>
														<option value="062">062</option>
														<option value="063">063</option>
														<option value="064">064</option>
														<option value="070">070</option>
														<option value="0502">0502</option>
													</select> <em>-</em>
													<input type="text" name="mPhone02" class="form_text numInput" style="width:30px" title="전화번호 앞자리 입력" maxlength="4"> <em>-</em> <input type="password" name="mPhone03" class="form_text numInput" style="width:48px" title="전화번호 뒷자리 입력" maxlength="4">
													<strong class="info_tool" title="회원가입시 등록한 유선 또는 휴대폰번호를 입력하시기 바랍니다." tabindex="0"><span class="blind">도움말</span></strong>
												</p>
												<button type="button" class="btn_login" onclick="getID(document.findID, 'viewID', 'man00201s01')"><span>조회</span></button>
											</fieldset>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="viewID"></div>
					</div>
					<div class="findTab" style="">
						<div class="new_find" id="findPwView"><div class="infoBox"><div><p class="list">비밀번호를 재설정할 경우 해당 아이디 입력 후 아래 2가지 방법 중 하나를 선택하여 비밀번호를 재설정 하시기 바라며, <br> 아래와 같은 방법으로 비밀번호를 찾을 수 없을 때 공단 지부 / 지사로 방문하셔야 함을 양지하여 주시기 바랍니다.</p><p class="mt5 ml10"><button type="button" class="btn4" onclick="centerInfo(false);" title="새 창"><span>해당 지부 / 지사 약도 안내</span></button></p></div><span></span></div><div class="topArea"><p class="fc_b">아이디 입력 후 아래의 방법중 하나를 선택하여 비밀번호를 재발급 받으시기 바랍니다.</p><p class="fc_b">아이디는 대소문자 구분.</p><div class="form_box"><fieldset><legend>개인정보 입력</legend><p class="first"><label for="userIDpw"><strong class="mr5">아이디</strong>:</label> <input type="text" class="form_text" style="width:184px;ime-mode:inactive;" id="userIDpw" name="userID" value="" maxlength="30"></p></fieldset></div></div><div class="bgArea"><div class="full_btn password"><button type="button" class="mr" onclick="goPwdFind()"><span>비밀번호<br>질문으로 찾기</span></button><button type="button" class="mr" onclick="certifiSubmit('ipin_pw')" title="새 창"><span>아이핀(i-PIN)<br>인증으로 찾기</span></button><button type="button" class="mr" onclick="certifiSubmit('mobile_pw')" title="새 창"><span>본인명의 휴대폰<br>인증으로 찾기</span></button><button type="button" onclick="certifiSubmit('public_pw')"><span>공인인증서로<br> 찾기</span></button></div></div></div>
						<div id="viewPswd"></div>
					</div>
					<div class="ipin_find" id="eMailChDiv" style="display:none">
						<p><strong><label for="emailCh">이메일주소</label></strong>
						<input id="emailCh" name="emailCh" type="text" style="width:205px" maxlength="100">
						<button type="button" class="btn btncolor2" id="eMailChBt01" onclick="eMailChSubFn();"><span>변경</span></button>
						<button type="button" class="btn btncolor4" id="eMailChBt02" onclick="eMailChFn('chNo');"><span>취소</span></button>
						<input type="hidden" id="emailChPlag" name="emailChPlag" value=""></p>
					</div>
				</div>
			</div>
			</form>
		</div>

	</div>
</article>
