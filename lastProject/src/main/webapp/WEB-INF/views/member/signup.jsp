<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script type="text/javascript" src="resources/js/member.js"></script>
<style>
   * {   box-sizing: content-box;}
   
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


<script>
function jusoCallBack(mem_post_numb1,mem_add1,mem_add2) {
	document.getElementById("mem_post_numb1").value = mem_post_numb1;
	document.getElementById("mem_add1").value = mem_add1;
	document.getElementById("mem_add2").value = mem_add2;

}

function jusoCallBack2(mem_post_numb2,mem_add3,mem_add4) {
	document.getElementById("mem_post_numb2").value = mem_post_numb2;
	document.getElementById("mem_add3").value = mem_add3;
	document.getElementById("mem_add4").value = mem_add4;
}

 //대전 서울 == > 2년제 4년제 가는거
function showSub1(obj){
	if(obj.value=="대전"){
		document.regMEM.dacoll.style.display="";
		document.regMEM.suocoll.style.display="none";
		document.regMEM.daschool2.style.display="";
		document.regMEM.daschool4.style.display="none";
		document.regMEM.seoschool2.style.display="none";
		document.regMEM.seoschool4.style.display="none";
		
	}else if(obj.value=="서울"){
		document.regMEM.dacoll.style.display="none";
		document.regMEM.suocoll.style.display="";
		document.regMEM.daschool2.style.display="";
		document.regMEM.daschool4.style.display="none";
		document.regMEM.seoschoo2.style.display="none";
		document.regMEM.seoschoo4.style.display="none";
	}


}

//대전 2년제 4년제
function showSub24(obj) {
	if(obj.value=="2년제"){
		document.regMEM.dacoll.style.display="";
		document.regMEM.suocoll.style.display="none";
		document.regMEM.daschool2.style.display="";
		document.regMEM.daschool4.style.display="none";
		document.regMEM.seoschool2.style.display="none";
		document.regMEM.seoschool4.style.display="none";
		
	}else if(obj.value=="4년제"){
		document.regMEM.dacoll.style.display="";
		document.regMEM.suocoll.style.display="none";
		document.regMEM.daschool2.style.display="none";
		document.regMEM.daschool4.style.display="";
		document.regMEM.seoschool2.style.display="none";
		document.regMEM.seoschool4.style.display="none";
	}
}

//서울 2년제 4년제
function showSub242(obj) {
	if(obj.value=="2년제"){
		document.regMEM.dacoll.style.display="none";
		document.regMEM.suocoll.style.display="";
		document.regMEM.daschool2.style.display="none";
		document.regMEM.daschool4.style.display="none";
		document.regMEM.seoschool2.style.display="";
		document.regMEM.seoschool4.style.display="none";
		
	}else if(obj.value=="4년제"){
		document.regMEM.dacoll.style.display="none";
		document.regMEM.suocoll.style.display="";
		document.regMEM.daschool2.style.display="none";
		document.regMEM.daschool4.style.display="none";
		document.regMEM.seoschool2.style.display="none";
		document.regMEM.seoschool4.style.display="";
	}
}

//중복확인
$(function(){
	$("#idCheck").click(function(){
		
		var idvalue = $('#id').val();
		
		$.ajax({
			url:"idCheck",
			type:"post",
			data: "id=" + idvalue,
			success:function(res){
				console.log(res);
				 
				if(idvalue ==""){
					alert("아이디를 입력해주세요");
				}else if(res == 'n'){
					$('#idChk').html('<font id="ok" style="font-size:13px;display:inline; color:blue">사용가능한 아이디입니다.</font>');
				}else {
					$('#idChk').html('<font id="no" style="font-size:13px;display:iniline; color:red">이미 사용중인 아이디입니다.</font>');
				}
				 
			},
			error:function(){
				alert('Error');
			},
		});
	});
});

function cropImage(){
	//이미지 눌렀을 때
	$('#viewImg').on('click', function() {
      $("#input:file").change(function (){     
           var file = this.files[0];
           var reader = new FileReader();
           reader.onload = function (e) {
               $("#viewImg").attr('src', e.target.result);
           }        
          reader.readAsDataURL(file);
       });
   });
}


$(function(){
	//파일 업로드 버튼 눌렀을 때
	$("input:file").change(function (){     
	    var file = this.files[0];
	    var reader = new FileReader();
	    reader.onload = function (e) {
	        $("#viewImg").attr('src', e.target.result);
	    }        
	    reader.readAsDataURL(file);
	});		
})

$(function(){
	$("#mem_pwd").keyup(function(){
		   $('font[name=check]').text('');
	});
	
	$("#mem_pwd_confirm").keyup(function(){
		if($("#mem_pwd").val() != $("#mem_pwd_confirm").val()){
			$("font[name=check]").text("");
			$("font[name=check]").css('color','red');
			$("font[name=check]").text("비밀번호가 일치하지 않습니다.");
		}else if($("#mem_pwd").val() == $("#mem_pwd_confirm").val()){
			 $('font[name=check]').text('');
			 $('font[name=check]').css('color',"blue");		 
			 $('font[name=check]').html("비밀번호가 일치합니다.");
		}
	})

	
	
})


$(function(){
	
		var post1=document.getElementById("mem_post_numb1");
		var add1=document.getElementById("mem_add1");
		var add2=document.getElementById("mem_add2");
		var post2=document.getElementById("mem_post_numb2");
		var add3=document.getElementById("mem_add3");
		var add4=document.getElementById("mem_add4");
	 
 $("#addr_same").change(function(){
		 if($("#addr_same").is(":checked")){
			 post2.value = post1.value;
			 add3.value = add1.value;
			 add4.value = add2.value;
		 }else{
			 post2.value = "";
			 add3.value = "";
			 add4.value = "";
		 }
	 })

})

function check() {

	var id =document.getElementById("id").value;
	var bir=document.getElementById("birth_yy").value;
	var bir2=document.getElementById("birth_mm").value;
	var bir3=document.getElementById("birth_dd").value;
	var name=document.getElementById("name").value;
	var pwd=document.getElementById("mem_pwd").value;
	var pwdConfirm=document.getElementById("mem_pwd_confirm").value;
	var email=document.getElementById("mem_email").value;
	var post1=document.getElementById("mem_post_numb1").value;
	var add1=document.getElementById("mem_add1").value;
	var add2=document.getElementById("mem_add2").value;
	var post2=document.getElementById("mem_post_numb2").value;
	var add3=document.getElementById("mem_add3").value;
	var add4=document.getElementById("mem_add4").value;

	if(id==""){
		alert("아이디를 입력해주세요")	
	}else if(bir ==""|| bir2==""||bir3==""){
		alert("생년월일을 입력해주세요");
	}else if(name=""){
		alert("이름을 입력해주세요");
	}else if(pwd =""){
		alert("비밀번호를 입력해주세요");
	}else if(pwdConfirm ==""){
		alert("비밀번호 확인을 해주세요");
	}else if(($("#mem_pwd").val() != $("#mem_pwd_confirm").val())){
		alert("비밀번호가 일치하지않습니다.");
	}else if(email ==""){
		alert("이메일을 입력해주세요");
	}else if(post1 =="" || add1==""||add2==""){
		alert("주민번호 등록지를 등록해주세요");
	}else if(post2 =="" || add3==""||add4==""){
		alert("실제 거주지를 등록해주세요");
	}else{
		document.regMEM.action ="insertMember";
		document.regMEM.method ="POST";
		document.regMEM.submit();
		
	}
	
}

$(function(){
	
$('#btn-upload').click(function (e) {
	$('#file').click();
	});
})	


	

</script>

<article>
		<div class="container content " style="width: 980px;">
			<!-- 컨텐츠 타이틀 -->
			<h3 class="tit_content">회원가입</h3>
			<div class="center_area2">
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step">
					<ul class="list03"  style="margin-left: 100px;">
						<li><img src="resources/images/약관동의(전).gif" alt=""><span>약관동의</span></li>
						<li><img src="resources/images/본인인증(전).gif" alt=""><span>본인인증</span></li>
						<li>
						<img src="resources/images/신청서작성(후).gif" alt="">
						<span>신청서작성</span>
						<span class="blind">현재단계 신청서작성</span></li>
						<li><img src="resources/images/약관동의(전).gif" alt="">
						<span>가입완료</span>
						</li>
					</ul>
				</div>
				<form name="regMEM" id="regMEM"enctype="multipart/form-data" >
				
						<div class="infoBox">
						</div>
						<div class="tbl_join tbl_member mb0">
							<p class="txt_right">
								<strong>(<span class="fc_r" title="필수"> * </span>) 필수
									입력사항입니다.
								</strong>
							</p>
							<table summary="회원가입 신청서작성 테이블로 아이디, 주민등록번호, 이름 등 개인정보 입력폼 제공">
								<caption>회원가입 신청 작성 테이블</caption>
								<colgroup>
									<col width="130px">
									<col width="220px">
									<col width="266px">
									<col width="134px">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="thRight">
											<label for="memId">아이디</label>
											<strong class="fc_r" title="필수">*</strong>
										</th>
										<td colspan="2">
											<input type="text" style="ime-mode: inactive;" id="id" name="id" class="member_id">
											<button type="button" id="idCheck" class="btn3_type1 chk_id ml5" >
												<span>아이디중복 확인</span>
											</button> 
											<span id="idChk"></span>
										</td>
										<td rowspan="9" class="photo">
											<div >
												<img id="viewImg" src="resources/images/사진.png" width="300px" height="400px"  onclick="cropImage();">											
											</div>
										
											<input type="file" name="f" id ="file"  onchange="changeValue(this);" style="display:none;"/>
											<button type="button" class="btn3_type1 chk_id ml5" id="btn-upload" style="margin-top: 5px;"><span style="color: #fff">사진등록</span></button>
											
										</td>
									</tr>
									<tr>

										<th scope="row"><label for="birth_yy">생년월일</label><strong
											class="fc_r" title="필수">*</strong></th>
										<td colspan="2"><select id="birth_yy" name = "mem_bir1" title="생년월일 년도"
											style="width: 71px"><option value=""
													selected="selected">년도</option>
												<option value="17">2017</option>
												<option value="16">2016</option>
												<option value="15">2015</option>
												<option value="14">2014</option>
												<option value="13">2013</option>
												<option value="12">2012</option>
												<option value="11">2011</option>
												<option value="10">2010</option>
												<option value="09">2009</option>
												<option value="08">2008</option>
												<option value="07">2007</option>
												<option value="06">2006</option>
												<option value="05">2005</option>
												<option value="04">2004</option>
												<option value="03">2003</option>
												<option value="02">2002</option>
												<option value="01">2001</option>
												<option value="00">2000</option>
												<option value="99">1999</option>
												<option value="98">1998</option>
												<option value="97">1997</option>
												<option value="96">1996</option>
												<option value="95">1995</option>
												<option value="94">1994</option>
												<option value="93">1993</option>
												<option value="92">1992</option>
												<option value="91">1991</option>
												<option value="90">1990</option>
												<option value="89">1989</option>
												<option value="88">1988</option>
												<option value="87">1987</option>
												<option value="86">1986</option>
												<option value="85">1985</option>
												<option value="84">1984</option>
												<option value="83">1983</option>
												<option value="82">1982</option>
												<option value="81">1981</option>
												<option value="80">1980</option>
												<option value="79">1979</option>
												<option value="78">1978</option>
												<option value="77">1977</option>
												<option value="76">1976</option>
												<option value="75">1975</option>
												<option value="74">1974</option>
												<option value="73">1973</option>
												<option value="72">1972</option>
												<option value="71">1971</option>
												<option value="70">1970</option>
												<option value="69">1969</option>
												<option value="68">1968</option>
												<option value="67">1967</option>
												<option value="66">1966</option>
												<option value="65">1965</option>
												<option value="64">1964</option>
												<option value="63">1963</option>
												<option value="62">1962</option>
												<option value="61">1961</option>
												<option value="60">1960</option>
												<option value="59">1959</option>
												<option value="58">1958</option>
												<option value="57">1957</option>
												<option value="56">1956</option>
												<option value="55">1955</option>
												<option value="54">1954</option>
												<option value="53">1953</option>
												<option value="52">1952</option>
												<option value="51">1951</option>
												<option value="50">1950</option>
												<option value="49">1949</option>
												<option value="48">1948</option>
												<option value="47">1947</option>
												<option value="46">1946</option>
												<option value="45">1945</option>
												<option value="44">1944</option>
												<option value="43">1943</option>
												<option value="42">1942</option>
												<option value="41">1941</option>
												<option value="40">1940</option>
												<option value="39">1939</option>
												<option value="38">1938</option>
												<option value="37">1937</option>
												<option value="36">1936</option>
												<option value="35">1935</option>
												<option value="34">1934</option>
												<option value="33">1933</option>
												<option value="32">1932</option>
												<option value="31">1931</option>
												<option value="30">1930</option>
												<option value="29">1929</option>
												<option value="28">1928</option>
												<option value="27">1927</option>
												<option value="26">1926</option>
												<option value="25">1925</option>
												<option value="24">1924</option>
												<option value="23">1923</option>
												<option value="22">1922</option>
												<option value="21">1921</option>
												<option value="20">1920</option>
												<option value="19">1919</option>
												<option value="18">1918</option>
												</select> <select id="birth_mm" name="mem_bir2" title="생년월일 월" style="width: 59px">
											<option value="" selected="">월</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option></select> 
												<select id="birth_dd" name="mem_bir3"
											title="생년월일 일" style="width: 59px"><option value=""
													selected="">일</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option></select> 
												<input type="hidden" name="reg_num1" value=""> 
												<input type="hidden" name="reg_num2" value="9999999">
												<span class="txt_add">(법정생년월일6자리)</span>
												</td>

									</tr>

									<tr>
										<th scope="row" class="thRight">내국인 / 외국인<strong
											class="fc_r" title="필수">*</strong>
										</th>
										<td colspan="2">
											<div class="group_form1">
												<span> <input type="radio" id="foreignerN"
													name="mem_kor_for" value="내국인"  checked="checked"> <label for="foreignerN">내국인</label>
												</span> <span> <input type="radio" id="foreignerY"
													name="mem_kor_for" value="외국인"> <label for="foreignerY">외국인</label>
												</span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">성 별<strong class="fc_r" title="필수">*</strong>
										</th>
										<td colspan="2">
											<div class="group_form1">
												<span> <input type="radio" id="member_sex1"
													name="mem_gender" value="남자"  checked="checked"> <label for="member_sex1">남자</label>
												</span> <span> <input type="radio" id="member_sex2"
													name="mem_gender" value="여자"> <label for="member_sex2">여자</label>
												</span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="member_name">이 름</label><strong
											class="fc_r" title="필수">*</strong></th>
										<td colspan="2"><input type="text" id="name"
											name="name" class="form_mid"></td>
									</tr>
									<tr>
										<th scope="row"><label for="member_name_e">이
												름(영문)</label></th>
										<td colspan="2"><input type="text" id="mem_enname"
											name="mem_enname" class="form_mid"> <span
											class="txt_add">(여권과 동일하게 입력해주세요)</span></td>
									</tr>

									<tr>
										<th scope="row"><label for="member_pw">비밀번호</label><strong
											class="fc_r" title="필수">*</strong></th>
										<td colspan="2"><input type="password" class="join_pw"
											id="mem_pwd" name="mem_pwd" maxlength="16"></td>
									</tr>
									<tr>
										<th scope="row"><label for="member_pw_c">비밀번호 확인</label><strong
											class="fc_r" title="필수">*</strong></th>
										<td colspan="2"><input type="password" class="join_pw"
											id="mem_pwd_confirm" name="mem_pwd_confirm" maxlength="16"> 
									<font name="check" size="2" color="red"></font> 
									</tr>
									
									<tr>
										<th scope="row">장애여부</th>
										<td colspan="3">
											<div class="group_form1">
												<span> <input type="radio" id="member_dis1"
													title="장애여부 예" name="mem_jang" value="Y"> <label
													for="member_dis1">예</label>
												</span> <span> <input type="radio" id="member_dis2"
													title="장애여부 아니요" name="mem_jang" checked="checked" value="Y">
													<label for="member_dis2" >아니요</label>
												</span> <span id="dsdrGb01" class="ml40" style="display: none">
													<label for="select2">장애구분</label> <select title="장애구분"
													name="dsdrGb01" class="input ml5 w350" id="select2">
														<option value="">- 선택하세요 -</option>

														<option value="1">시각장애인</option>

														<option value="10">기타 의료기관장이 인정한 장애(과민성 대장증후군 및
															과민성 방광증후군 등)</option>

														<option value="11">상지지체장애인</option>

														<option value="12">하지지체장애인</option>

														<option value="13">기타 (임신부)</option>

														<option value="2">청각장애인</option>

														<option value="3">지체장애인</option>

														<option value="4">뇌병변장애인</option>

														<option value="5">배설장기장애</option>

														<option value="6">틱장애 및 간질장애인</option>

														<option value="7">신장장애인</option>

														<option value="8">심장장애인</option>

														<option value="9">장루/요루장애인</option>

												</select>
												</span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="member_mail_add">이메일
												<strong class="fc_r" title="필수">*</strong>
										</label></th>
										<td colspan="3"><input type="text" class="join_email"
											id="mem_email" name="mem_email"></td>
									</tr>
									<tr>
										<th scope="row">이메일 수신여부<!-- <strong class="fc_r" title="필수">*</strong> -->
										</th>
										<td colspan="3">
											<div class="group_form1">
												<span> <input type="radio" title="이메일 수신여부 예"
													id="member_mail1"n value="Y" name="mem_email_agree"> <label
													for="member_mail1">예</label>
												</span> <span> <input type="radio" title="이메일 수신여부 아니요"
													id="member_mail2" name="mem_email_agree" value="N"> <label
													for="member_mail2">아니요</label>
												</span>
											</div> <strong class="info_tool"
											title="공단에서는 자격정보, 시험일정 등의 정보를 이메일로 제공하오니 동 서비스를 받고자 하시는 분은  '예'를 선택 하시기 바랍니다."
											tabindex="0">수신여부 상세내용</strong>
										</td>
									</tr>
									<tr>
										<th scope="row">전화번호</th>
										<td colspan="3"><label for="member_phone"
											class="txt_phone">연락가능한 전화번호</label> <select
											id="member_phone" name="phone01" class="form_short"
											title="전화번호 첫번째 자리">
												<option value="0">선택</option>
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
										</select> <span>-</span> <input type="text" name="phone02"
											class="form_short numInput" title="전화번호 가운데 자리" maxlength="4">
											<span>-</span> <input type="text" name="phone03"
											class="form_short numInput" title="전화번호 마지막 자리" maxlength="4">
											<span class="txt_add">(예 : 02-111-1111)</span></td>
									</tr>
									<tr>
										<th scope="row">이동전화</th>
										<td colspan="3"><label for="member_mobile"
											class="txt_phone">이동전화 번호</label> <select id="member_mobile"
											name="mPhone01" class="form_short" title="핸드폰번호 첫번째 자리">
												<option value="0">선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> <span>-</span> <input type="text" name="mPhone02"
											class="form_short numInput" title="핸드폰번호 가운데 자리"
											maxlength="4"> <span>-</span> <input type="text"
											name="mPhone03" class="form_short numInput"
											title="핸드폰번호 마지막 자리" maxlength="4"> <span
											class="txt_add">(예 : 010-111-1111)</span></td>
									</tr>
									<tr>
										<th scope="row">알림서비스</th>
										<td colspan="3">
											<div class="group_form1">
												<span> <input type="radio" id="member_ser1"
													name="smsSvc001"> <label for="member_ser1">예</label>
												</span> <span> <input type="radio" id="member_ser2"
													name="smsSvc001"> <label for="member_ser2">아니요</label>
												</span>
											</div> <strong class="info_tool"
											title="서비스를 제공받기 원하시는 고객님께서는 큐넷 개인정보에서 본인 핸드폰번호 확인 및 알림서비스 항목을 '예'로 체크해 주셔야 메세지를 정상 수신하실수 있습니다.(메세지 수신시 별도 데이터 이용료 발생할 수 있음)"
											tabindex="0">알림서비스 상세내용</strong>
										</td>
									</tr>
									<tr>
										<th scope="row">
										 학교선택<strong class="fc_r" ></strong>
										</th>											
										<td colspan="3">
											<div class="group_form1">
										
												<select name="area" onchange="showSub1(this);">
													<option value="">지역선택</option>
													<option value="대전">대전</option>
													<option value="서울">서울</option>
												</select>
												
												
												<select name = "dacoll" style="display:"   onchange="showSub24(this);">
													<option value="">학년제선택</option>
													<option value="2년제">2년제</option>
													<option value="4년제">4년제</option>
												</select>
												
												<select name = "suocoll" style="display:none;"   onchange="showSub242(this);">
													<option value="">학년제선택</option>
													<option value="2년제">2년제</option>
													<option value="4년제">4년제</option>
												</select>
												<select name="daschool2" style="display:''">
													<option value="">대학교선택</option>
													<option value="대덕대학교">대덕대학교</option>
													<option value="우송정보대학교">우송정보대학교</option>
													<option value="대전보건대학교">대전보건대학교</option>
													<option value="대전과학기술대학교">대전과학기술대학교</option>
												</select>
												<select name="daschool4" style="display:none">
													<option value="">대학교선택</option>
													<option value="대전대학교">대전대학교</option>
													<option value="한남대학교">한남대학교</option>
													<option value="충남대학교">충남대학교</option>
													<option value="건양대학교">건양대학교</option>
													<option value="을지대학교">을지대학교</option>
												</select>
												
												<select name="seoschool2" style="display:none;">
													<option value="">대학교선택</option>
													<option value="서울대">서울대</option>
													<option value="힌양대">힌양대</option>
												</select>
												
												<select name="seoschool4" style="display:none;">
													<option value="">대학교선택</option>
													<option value="명지전문대학교">명지전문대학교</option>
													<option value="배화여자대학교">배화여자대학교</option>
												</select>
		
											</div>
										</td>
									</tr>
									
									
									
									
									
									
									<tr>
										<th scope="row" rowspan="3">주민등록 거주지<strong class="fc_r"
											title="필수">*</strong>
										</th>
										<td colspan="3"><label for="member_addr1-1"
											class="txt_addr">우편번호 입력</label> <input type="text"
											id="mem_post_numb1" name="mem_post_numb1" class="form_short numInput"
											readonly="readonly" title="우편번호" maxlength="5"
											onkeyup="nextFocus('regMEM', 'zip01', 'addr01');">

											<button type="button" class="btn3_type1" name="addrPop"
												id="01" onclick="add();">
												<span>주소검색</span>
											</button> <strong class="info_tool"
											title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다.  "
											tabindex="0">주소입력방법 안내</strong></td>
									</tr>
									<tr>
										<td colspan="3"><label for="member_addr1-2"
											class="txt_addr">주소</label> 
											<input type="text"
											style="width: 415px" id="mem_add1" name="mem_add1"
											class="member_addr1" readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="3"><label for="member_addr1-3"
											class="txt_addr">나머지 주소 입력</label> <input type="text"
											id="mem_add2" name="mem_add2" class="member_addr3">
											<input type="hidden" name="gibunResdAddr" id="gibunResdAddr">
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="3">
											<div class="option">
												<label for="addr_same">(상동)</label> <input type="checkbox"
													id="addr_same" name="addrChk" value="">
											</div> 실제 거주지<strong class="fc_r" title="필수">*</strong>
										</th>
										<td colspan="3"><label for="member_addr2-1"
											class="txt_addr">우편번호 입력</label> <input type="text"
											id="mem_post_numb2" name="mem_post_numb2" class="form_short numInput"
											readonly="readonly" title="우편번호" maxlength="5"
											onkeyup="nextFocus('regMEM', 'dZip01', 'dAddr01');">

											<button type="button" class="btn3_type1" name="addrPop"
												id="02" onclick="add2();">
												<span>주소검색</span>
											</button> <strong class="info_tool"
											title="※ 주소입력방법 [주소검색]을 눌러 검색방법에 따라 주소를 검색하신 후 도로명주소를 선택하신 다음에 나머지 상세 주소를 입력합니다. (@, (, ), *, &amp; 등과 같은 특수문자는 입력하실 수 없습니다.) * 주민등록지와 실제거주지가 같은 경우 &quot;상동&quot;을 체크하면 실제거주지 주소가 자동 입력됩니다. "
											tabindex="0">주소입력방법 안내</strong></td>
									</tr>
									<tr>
										<td colspan="3"><label for="member_addr2-2"
											class="txt_addr">주소</label> <input type="text"
											style="width: 415px" id="mem_add3" name="mem_add3"
											class="member_addr1" readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="3"><label for="member_addr2-3"
											class="txt_addr">나머지 주소 입력</label> <input type="text"
											id="mem_add4" name="mem_add4" class="member_addr3">
											<input type="hidden" name="gibunAbdAddr" id="gibunAbdAddr">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
				<div class="btn_center">
					<button type="button" id="formSubmit" class="btn2 btncolor2" onclick="check()">
						<span>가입하기</span>
					</button>
					<button type="button" id="formCancel" class="btn2 btncolor4" onclick="javascript:location.href='<%=request.getContextPath()%>/main'">
						<span>가입취소</span>
					</button>
				</div>
				</form>
			</div>
		</div>
</article>
