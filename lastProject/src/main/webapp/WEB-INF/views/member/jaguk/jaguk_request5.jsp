<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left_script.js" charset="euc-kr"></script>

<style>

 .form-box{
  background: #fff;
  margin: 30px auto;
  max-width: 500px;
  box-shadow: 0 3px 6px 0px rgba(0,0,0,0.16), 0 3px 6px 0px rgba(0,0,0,0.23);
}
form#login-form {
  overflow: hidden;
  position: relative;
  padding: 40px;
}
.head {
  color: #fff;
  font-size: 34px;
  font-weight: normal;
  padding: 50px 0;
  text-align: center;
  text-transform: uppercase;
  background: #6498fe;
}


.form-group {
  margin-bottom: 15px;
  position: relative;
  width: 100%;
  overflow: hidden;
}
 
.form-group .label-control {
  color: #888;
  display: block;
  font-size: 14px;
  position: absolute;
  top: 0;
  left: 0;
  padding: 0;
  width: 100%;
  pointer-events: none;
  height: 100%; 
}
.form-group .label-control::before,
.form-group .label-control::after{
  content: "";
  left: 0;
  position: absolute;
  bottom: 0;
  width: 100%;
}
.form-group .label-control::before{
  border-bottom: 1px solid #B9C1CA;
  transition: transform 0.3s;
  -webkit-transition: -webkit-transform 0.3s;
}
 
.form-group .label-control::after {
  border-bottom: 2px solid #03A9F4;
  -webkit-transform: translate3d(-100%, 0, 0);
  transform: translate3d(-100%, 0, 0);
  -webkit-transition: -webkit-transform 0.3s;
  transition: transform 0.3s;
}
 
.form-control {
  border: none;
  border-radius: 0;
  margin-top: 20px;
  padding: 12px 0;
  width: 100%;
  font-size: 14px;
}
.form-control:focus {
  outline: none;
  box-shadow: none;
}
 
.form-group .label-control .label-text{
   -webkit-transform: translate3d(0, 30px, 0) scale(1);
    -moz-transform: translate3d(0, 30px, 0) scale(1);
    transform: translate3d(0, 30px, 0) scale(1);
    -webkit-transform-origin: left top;
    -moz-transform-origin: left top;
    transform-origin: left top;
    -webkit-transition: 0.3s;
    -moz-transition: 0.3s;
    transition: 0.3s;
    position: absolute;
}
.active .label-control::after{
   -webkit-transform: translate3d(0%, 0, 0);
  transform: translate3d(0%, 0, 0);
}
.active .label-control .label-text {
    opacity: 1;
    -webkit-transform: scale(0.9);
    -moz-transform: scale(0.9);
    transform: scale(0.9);
    color: #03A9F4 !important;
}
 
.input-field label:before{
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  border-bottom: 1px solid #B9C1CA;
  transition: transform 0.3s;
  -webkit-transition: -webkit-transform 0.3s;
}
 
 
input.btn[type="submit"] {
  background: #6498fe;
  border:none;
  border-radius: 2px;
  color: #fff;
  
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 3px;
  margin: 5px 0;
  outline: medium none;
  overflow: hidden;
  padding: 10px;
  text-transform: uppercase;
  transition: all 0.15s ease-in-out 0s;
  width: 100%;
  box-shadow: 0 1px 2px 0px rgba(0,0,0,0.16), 0 1px 2px 0px rgba(0,0,0,0.23);
}
input.btn[type="submit"]:hover {
  background: #4b81eb;
  box-shadow: 0 2px 4px 0px rgba(0,0,0,0.16), 0 2px 4px 0px rgba(0,0,0,0.23);
}

input.btn[type="button"] {
  background: #6498fe;
  border:none;
  border-radius: 2px;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 3px;
  margin: 5px 0;
  outline: medium none;
  overflow: hidden;
  padding: 10px;
  text-transform: uppercase;
  transition: all 0.15s ease-in-out 0s;
  width: 100%;
  box-shadow: 0 1px 2px 0px rgba(0,0,0,0.16), 0 1px 2px 0px rgba(0,0,0,0.23);
}
input.btn[type="button"]:hover {
  background: #4b81eb;
  box-shadow: 0 2px 4px 0px rgba(0,0,0,0.16), 0 2px 4px 0px rgba(0,0,0,0.23);
}


.text-p{
  font-size: 14px;
  text-align: center;
  margin: 10px 0;
}
.text-p a{
  color: #175690;
  }
  </style>


    
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

var nm = '<c:out value="${getName}" />';
var birth = '<c:out value="${getBir}" />';

$(function(){
	$("#check").click(function(){
		if(nm == ($('#hgulNm').val()) && birth == $('#mPswd').val()){
			alert("확인");
			opener.goRequest6();
			window.close();
		}else{
			alert("올바른 정보가 아닙니다.");
		}
	})
})

</script>
	<div class="form-box">
    <div class="head">인증하기</div>        
        <div class="form-group">
          <label class="label-control">
            <span class="label-text"></span>
          </label>
          <input type="text" name="name" id="hgulNm" class="form-control" placeholder="이름"/>
        </div>
        <div class="form-group">
          <label class="label-control">
            <span class="label-text"></span>
          </label> 
          <input type="password" name="mem_bir" id="mPswd" class="form-control"  placeholder="생년월일"/>
        </div>
        <input type="button" value="인증하기" class="btn" id="check"/>
        <input type="button" value="되돌아가기" class="btn"  />
       
  </div>
