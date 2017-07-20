<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front" tabindex="-1" role="dialog" aria-describedby="isr002_03_03_view" aria-labelledby="ui-id-2" style="height: auto; width: 520px; top: 1033px; left: 691.5px; display: block; z-index: 21000;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-2" class="ui-dialog-title">기본인증</span><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" title="Close"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">Close</span></button></div><div id="isr002_03_03_view" class="popup ui-dialog-content ui-widget-content" style="display: block; width: auto; min-height: 0px; max-height: none; height: 409px;">
<script type="text/JavaScript">
var gNetFunnelUrl = "";

function frmSubmit_L() {

	//이름 입력수 체크
	if ((document.getElementById("hgulNm").value.length > 50)) {
		alert("이름을 정확히 입력 하시기바랍니다.");
		document.getElementById("hgulNm").focus();
		return false;
	}

	if (schPwd.hgulNm.value == "") {
		alert('이름을 입력해주세요!!');
		schPwd.hgulNm.focus();
		return false;
	}
	if (schPwd.mPswd.value == "") {
		alert('주민번호 앞 6자리를 입력해주세요!!');
		schPwd.mPswd.focus();
		return false;
	}

	//이게 뭐어어어어지?
// 	var hp_url = "https://www.q-net.or.kr/isr002.do?id=isr002030301&gSite=Q&gId=&mPswd="+ document.schPwd.mPswd.value + "&hgulNm="+ document.schPwd.hgulNm.value + "&perId="+document.schPwd.perId.value + "&chk=";
// 	gNetFunnelUrl = "";
// 	gNetFunnelUrl = hp_url;
// 	NetFunnel_init(null,{});
// 	NetFunnel_getTidChkEnter({success:goProcFrmSubmit_L});


	var getName = "<c:out value='${getName}'/>";
	var getBir = "<c:out value='${getBir}'/>";
	
	if(getName==document.getElementById("hgulNm").value && getBir==document.getElementById("mPswd").value){
		opener.goRequest6();
	}else{
		alert('입력하신 정보가 일치하지 않습니다.');
	}
	
	window.close();
}



function goProcFrmSubmit_L(){
	openSendStatus("post", gNetFunnelUrl, true, null, "showResultFrmSubmit_L(xmlHttp)");
}

function showResultFrmSubmit_L(data){

	var rtnData	=	eval('(' + data.responseText + ')');

	if (rtnData.err == "0" ) {
		if (rtnData.chk == 'cncl') {
			frmDeleteSubmit();
		} else if (rtnData.chk == 'modi') {
			frmModifySubmit();
		} else {
			frmSubmit();
		}
	} else {
		if (rtnData.err=="1"){
			alert("로그아웃 되었습니다.다시 로그인 후 자격증발급 신청이 가능합니다.");
			document.location.href= 'https://www.q-net.or.kr/man001.do?id=man00101&gSite=Q&gId=';
		}else if(rtnData.err=="2"){
			alert(rtnData.errMsg);
			$(isr002_03_03_view).dialog( "close" );
		}
	}

	
	NetFunnel_init(null,{});
	NetFunnel_setComplete();
}

function openPop(){
	window.open("/qnet/html/popUp/qnet_popSolution.html","PopCookie4","width=670,height=943,scrollbars=no,left=390,top=10");
}

</script>
		<div class="pop_contwrap">

		<div class="popup_image"></div>

			<div class="pop_content" style="height:300px; margin-right:20px" tabindex="0">
			<form name="schPwd" onsubmit="return false">
				<div class="grayBox">
					<strong><label for="hgulNm">성명</label></strong>
					<input name="hgulNm" type="text" id="hgulNm" title="이름" maxlength="50" class="form_text" style="width:80px; margin-right:20px">
					<strong><label for="mPswd">생년월일</label></strong>
					<input name="mPswd" type="password" id="mPswd" title="생년월일 6자리 입력" maxlength="6" class="form_text" style="width:90px; margin-right:20px"><!-- <strong><label for="jumin2">-*******</label></strong> -->
					<button type="button" class="btn3_type1" onclick="frmSubmit_L();"><span>확인</span></button>
				</div>
					<input name="perId" type="hidden" value="PI2100126553">
					<!-- 모달로 뜬 순간에 파라미터값 저장할거 -->
					<input name="getName" type="hidden" value="${getName}">
					<input name="getBir" type="hidden" value="${getBir}">
			</form>
				<p class="cont_txtSty2 mt10">※ 발급신청자의 성명과 생년월일(예 : 850204(법정생년월일 6자리))을<br>&nbsp;&nbsp;&nbsp;입력 후 확인을 눌러주세요.</p>
				<p class="cont_txtSty2 mt10"><a href="#" onclick="openPop();">※ 기본인증 시 다음 화면으로 넘어가지 않을때 조치방법</a> <button type="button" class="btn3_type1" onclick="openPop();"><span>바로가기</span></button></p>
			</div><!-- // pop_content -->
		</div>
	</div>
</div>