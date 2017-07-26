<%@page import="com.last.common.vo.QualifiCertiVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(function(){
	
$('#jagukHwa').on('click',function(){
	var mem_nm = $('#hgulNm').val();
	var reg_num1 = $('#resdNo1').val();
	var qualifi_certi_code =$('#lcsNo').val();
	var qualifi_certi_date = $('#qualExpDt').val();
			console.log("들어오냐");
	$.ajax({
		url : 'jagukHwa',
		type : 'post',
		data : {'mem_nm':mem_nm,'reg_num1':reg_num1,'qualifi_certi_code':qualifi_certi_code,'qualifi_certi_date':qualifi_certi_date},
		success:function(res){
			console.log("여기는");
			console.log(res.qualifi_certi_code);
			var code = "<table>";
			code +="<colgroup><col width='16%'><col width='*'><col width='50%'></colgroup>";
			code +="<tbody>";
			code += "<tr><th scope='row'><lable for='hgulNm'>진위확인</label></th>";
			code += "<td colspan='2'><input type='text' id='hgulNm' name='hgulNm' maxlength='15' value='인증되지않은 자격증입니다.'></td></tr>";
			code += "<tr><th scope='row'><lable for='hgulNm'>자격종목</label></th>";
			code += "<td colspan='2'><input type='text' id='hwa' name='qualifi_certi_code' maxlength='15' value=''></td></tr>";
			code += "<tr><th scope='row'><lable for='hgulNm'>합격일자</label></th>";
			code += "<td colspan='2'><input type='text' id='hwa1' name='written_pass_date' maxlength='15' value=''></td></tr>";
			code += "</tbody>";
			code +="</table>";
			$('.jagukTrue').html(code);
			$('input[name=qualifi_certi_code]').attr('value',res.qualifi_certi_code);
			if(res.qualifi_certi_code=="정보처리기사"){
				$('input[name=hgulNm]').attr('value','인증된 자격증입니다');					
			}
			$('#hwa1').attr('value',res.written_pass_date);
		}
	})
	
	})
	
})
</script>
<style>
* {
	box-sizing: content-box;
}
.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	
			<input type="hidden" value="${vo.written_pass_date}">	
			<input type="hidden" value="${a}">
	<div id="container">
		<!-- 좌측 메뉴바 -->
<div>
		<jsp:include page="../../lnb/jagukLnb.jsp"/>
	   <div id="lnb2"></div>
	</div>
		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>자격증/확인서</li>
					<li>확인서/자격증 진위확인</li>
					<li><strong>자격증 진위 확인</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">자격증 진위확인</h3>

				<div id="qlf006_01_p01_pop" class="popup" title="자격정보 입력 및 진위여부 안내"></div>
				<div class="tbl_normal nmlType3">
					<table summary="자격증 진위확인을 위한 아이디, 생년월일, 자격증번호, 발급(등록)연월일, 자격증내지번호 입력 폼">
						<caption>자격증 진위확인을 위한 입력폼</caption>
						<colgroup>
							<col width="16%">
							<col width="*">
							<col width="50%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="hgulNm">이름</label></th>
								<td colspan="2"><input type="text" id="hgulNm" name="mem_nm" maxlength="15"></td> 
							</tr>
							<tr>
								<th scope="row"><label for="resdNo1">생년월일</label></th>
								<td colspan="2"><input type="text" name="reg_num1" id="resdNo1" maxlength="6" class="numInput"> (법정생년월일 6자리)</td> 
							</tr>
							<tr>
								<th scope="row"><label for="lcsNo">자격증번호</label></th>
								<td><input type="text" id="lcsNo" maxlength="15"> (예:171Acomp1111111)     </td> 
								<td class="" style="border-left: 1px; color:#0066ff ;">※ 숫자10자리와 알파벳5자리로 구성    </td>
							</tr>
							<tr>
								<th scope="row"><label for="qualExpDt">발급(등록)연월일</label></th>
								<td colspan="2"><input type="text" id="qualExpDt" maxlength="8" class="numInput" name="qualifi_certi_date"> (예:20050101) <em class="fc_r mL35">  ※ 최근 발급연월일 (또는 등록년월일) 기재 </em></td> <!-- 수정(0901) -->
							</tr>
							<tr><!-- 수정(0820) 아래 a태그를 button태그로 수정-->
								<td colspan="3" class="fc_red">
									<b>※ 한국기술자격검정원 시행12종목은 티큐넷(t.q-net.or.kr)에서 진위확인이 가능하며, 검정사업본부(02-6710-3136)로 문의 하시기 바랍니다. <br> 정보기기운용기능사 , 정보처리기능사 , 굴삭기운전기능사  , 지게차운전기능사 , 제과기능사, 제빵기능사 , 한식조리기능사, 양식조리기능사, 일식조리기능사,중식조리기능사, 미용사(일반),미용사(피부) </b> <br>
									<b>※ 과정평가형 자격증에 대한 진위확인은  능력평가총괄팀 (052-714-8692)으로 문의하시기 바랍니다.</b>
								</td>
							</tr>
						</tbody>
					</table>
					
					<div id="PInfo"></div>
					<div class="btn_center">
						<input type="button" id="jagukHwa" class="btn btn-primary btn-sm" value="확인">
						<button type="button" class="btn2 btncolor2" ><span>입력초기화</span></button>
					</div>
				</div>
				<div class="jagukTrue tbl_normal nmlType3">
					
				</div>
				<ul class="slide_menu mt40">
				<!-- 1 -->
					<li>
						<h4 class="slide_title"><a href="#">인터넷 발급 이전 자격증 진위 식별요령<span class="slide_close" style="display: inline;">내용닫기</span><span class="slide_open" style="display: none;">내용열기</span></a></h4><!-- /2014.08.22 수정 -->
						<!-- 내용열기 버튼 이미지명:btn_bl_slide_dn.gif -->
						<div class="slide_wrap">
						<!-- slide inner content  -->
							<span class="img"><img src="<%=request.getContextPath()%>/resources/images/temp/photo_ex1.gif" alt="인터넷 발급 이전 자격증 진위 식별을 위한 예시 자격증"></span> <!-- 수정(0910) -->
							<ul class="list guide">
								<li>사진부분 압인/천공 : 사진좌측하단부에 압인 또는 천공이 있습니다.</li> <!-- 수정(0901) -->
								<li>실인날인 : 2001년 이전에 발행된 자격증에는 "합격년월일/등록년월일/발행년월일"란에 실인(지름 1.5cm 크기의 원형 인장)이 날인되어 있습니다.</li>
								<li>2001년 이후 발행된 자격증에는 좌측 예시와 같이 "합격연월일/발급연월일" 란에 실인이 날인되어 있지 않습니다.</li>
								<li>비닐 스티커 부착 : 1994년 이후에 발행된 자격증 2면에 위/변조방지용 비닐스티커가 부착되어 있습니다.</li>
							</ul>
						<!-- // slide inner content  -->
						</div>
					</li>
					<!-- 2 -->
					<li>
						<h4 class="slide_title"><a href="#">인터넷 발급 이후 자격증 진위 식별요령<span class="slide_close" style="display: inline;">내용닫기</span><span class="slide_open" style="display: none;">내용열기</span></a></h4><!-- /2014.08.22 수정 -->
						<div class="slide_wrap rePos">
						<!-- slide inner content  -->
							<span class="img"><img src="<%=request.getContextPath()%>/resources/images/temp/photo_ex2.gif" alt="인터넷 발급 이후 자격증 진위 식별을 위한 예시 자격증"></span> <!-- 수정(0910) -->
							<ul class="list guide">
								<li>사진부분 : 인터넷 자격증 발급 이후 발행된 자격증은 사진부착 방식과 인쇄방식을 병행 시행하였습니다.</li>
								<li>사진부분 압인/천공 : 인쇄방식 자격증은 사진좌측하단부에 압인 또는 천공이 없으며, 사진부착 방식은 압인/천공이 있습니다.</li>
								<li>실인날인 : 2001년 이전에 발행된 자격증에는 "합격년월일/등록년 월일/발행년월일"란에 실인(지름 1.5cm 크기의 원형 인장)이 날인되어 있습니다.</li>
								<li>2001년 이후 발행된 자격증에는 좌측 예시와 같이 "합격연월일/ 발급 연월일" 란에 실인이 날인되어 있지 않습니다.</li>
								<li>비닐 스티커 부착 : 1994년 이후에 발행된 자격증 2면에 위/변조 방지용 비닐스티커가 부착되어 있습니다.</li>
							</ul>
						<!-- // slide inner content  -->
						</div>
					</li>
					<li>
						<h4 class="slide_title"><a href="#">위/변조된  국가기술자격증 식별요령 및 조치요령<span class="slide_close" style="display: inline;">내용닫기</span><span class="slide_open" style="display: none;">내용열기</span></a></h4><!-- /2014.08.22 수정 -->
						<div class="slide_wrap">
						<!-- slide inner content  -->
							<h5>위/변조된 국가기술자격증 식별요령</h5>
							<ul class="list">
								<li>인터넷 자격증 발급 이전 자격증(2005년 5월 기준)은 사진 좌즉 하단부에 압인 또는 천공이 있는지 확인합니다. </li>
								<li>인터넷 자격증 발급 이후 발생된 자격증도 압인 또는 천공이 있을 수 있습니다.(사진부착 방식과 인쇄방식 병행 시행)</li>
								<li>사진이 부착된 자격증은 사진 좌측 하단부에 압인 또는 천공이 반드시 있으며 사진이 인쇄된 자격증은 압인 또는 천공이 없습니다.</li>
								<li>2001년 이전에 발행된 자격증에는 "합격년월일/등록년월일/발행년월일" 란에 실인(지름 1.5cm 크기의 원형 인장)이 있는지 확인합니다.</li> <!-- 수정(0901) -->
								<li>1994년 이후에 발행된 자격증은 2면에 부착된 비닐스티커의 훼손여부를 확인 합니다. </li>
								<li>2면 자격증 기재사항을 정교하게 가필 또는 변조한 흔적이 있는지 확인합니다. (자격증 기재사항을 1986년 이전에는 수기로 작성하였으며, 이후 1996년까지는 타자기로, 1997년 이후에는 도트프린터로 작성하였습니다.) </li>
							</ul>
							<h5>위/변조된 국가기술자격증 발견시 조치요령</h5>
							<p class="list">
								위/변조된 국가기술자격증을 발견하면 가까운 경찰관서나 한국산업인력공단지역본부 및 지사에 신고하여 주십시오.
							</p>
							<h5>참고사항</h5>
							<p class="list">
								국가기술자격증 취득사항의 확인이 중요한 사항일 경우에는 반드시 한국산업인력공단에 문서로 조회하시기 바랍니다.
							</p>
						<!-- // slide inner content  -->
						</div>
					</li>
				</ul>
				<!-- //컨텐츠 내용 -->
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
