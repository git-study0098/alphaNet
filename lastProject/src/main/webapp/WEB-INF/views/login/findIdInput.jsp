<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left_script.js" charset="euc-kr"></script> 
    
<script>
	$(function(){
    	$('.btn_login').click(function(){
	    	idd = '<c:out value="${idd}"/>';
			var nm = $('#userNM').val();
			
			var bir1 = $('#birth_yy').val();
			var bir2 = $('#birth_mm').val();
			var bir3 = $('#birth_dd').val();
			
			var ph1 = $('#mPhone01').val();
			var ph2 = $('#mPhone02').val();
			var ph3 = $('#mPhone03').val();
			//msg 널이다
			if(nm==null || nm==""){
				alert("이름을 입력해주세요.");
			}else if(bir1=="" || bir2=="" || bir3==""){
				alert("생년월일을 입력해주세요.");
			}else if(ph1=="" || ph2=="" || ph3==""){
				alert("전화번호를 입력해주세요.")
			}else{
				bir1 = bir1+bir2+bir3;
				ph1 = ph1+'-'+ph2+'-'+ph3;
				
				if(idd==null || idd==""){
					window.open("goFindId?nm="+nm+"&bir="+bir1+"&ph="+ph1 ,"findId","width=600px,height=300px, resizable=no");
				}else{
					opener.getPWD(idd,bir1,ph1,nm);
					window.close();
				}
			}
    	})
	})
</script>
	
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
				<input type="text" name="mPhone02" id="mPhone02" class="form_text numInput" style="width:30px" title="전화번호 앞자리 입력" maxlength="4"> <em>-</em> <input type="password" name="mPhone03" id="mPhone03" class="form_text numInput" style="width:48px" title="전화번호 뒷자리 입력" maxlength="4">
			</p>
			<button type="button" class="btn_login" onclick="getID()"><span>조회</span></button>
		</fieldset>
	</div>
</div>