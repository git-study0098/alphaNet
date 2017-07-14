<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<style>
    #container {position: relative; width: 980px;margin: 0 auto;background: url(../images/common/bg_container.gif) repeat-y left top;}
   #lnb {padding-right:20px; float:left; padding-bottom:100px; width:205px; margin-right:30px}
   .main #content{float:left; margin:0 auto; width:725px;}
   #lnb{border-right:2px solid #ededee; box-shadow:1px 1px 5px #ededee; }
   
   
   #content {
    float: left;
    padding-bottom: 100px;
    width: 725px;
	}
   
   a {font-family: Malgun Gothic,'맑은고딕', '돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;text-decoration: none;}
   }
.slide_menu .slide_title > a {display:block; font-size:15px; font-weight:bold; color:#333; letter-spacing:-1px}
	.slide_menu .slide_title > a:hover, .slide_menu > li .slide_title > a:focus {color:#333}
   /* 서브메뉴 */
      /* 로그인 */
      .login_tab {margin-top:20px; margin-bottom:1px; overflow:hidden}
      .login_tab .btn {float:right; display:inline-block; color:#666}
      .login_tab .btn {background:#ddd}
      .login_tab .btn span {display:block; width:102px; padding:0; text-align:center; font-weight:bold; color:#666}
      .login_tab .btn:first-child {float:left}
      .login_tab .btn:hover, .login_tab .btn:focus, .login_tab .btn.on {background:#575757}
      .login_tab .btn.on span {color:#feffff}
      
      input[type="text"],input[type="password"] {height:15px; line-height:14px; padding:2px 5px; vertical-align:middle; border:1px solid #999; background:#f0f0f0; color:#666; font-size:12px}
      .blind {position:absolute; width:1px; text-align:left; font-size:0; line-height:0; text-indent:-999em}

      .login_area {position:relative; height:103px; padding:10px; border:1px solid #e1e1e1; background:#f3f3f3}
      .login_area > div {overflow:hidden}
      .login_area ul {float:right; margin:5px 0; overflow:hidden}
      .login_area ul li {float:left; margin-left:6px}
      .login_area input {width:102px; height:14px; border:1px solid #b8bcbf; border-right:1px solid #d1d6da; border-bottom:1px solid #d1d6da; background:#fff}
      .login_area input[type="text"] {margin-bottom:2px}
      .login_area .p_info {position:absolute; left:0; bottom:8px; padding:0 8px; line-height:12px; letter-spacing:-1px; font-size:11px; color:#757575}
      .login_area .my_list {margin:5px 0}
      .login_area .btn_login {position:absolute; top:10px; right:10px}
      .login_area .btn_login2 {position:absolute; bottom:10px}
      .login_area .btn_login3.btncolor1,
      .login_area .btn_lpoginapp {float:right}
      .login_area .btn_login3.btncolor2,
      .login_area .btn_loginsend {float:left}
      .login_area .welcom {margin-bottom:5px; border-bottom:1px solid #fff}
      .login_area .welcom p {height:18px; border-bottom:1px solid #e5e5e5; text-align:center; line-height:14px; font-size:12px} /* font : 11px -> 12px */
      
      .btn_login > span {width:65px; height:40px; font-size:13px; font-weight:bold; color:#fff; line-height:14px; vertical-align:middle}
      a.btn, a.btn2, a.btn4, a.btn3_type1, a.btn3_type2, a.btn3_type3, a.btn3_type4, a.btn3_icon, a.btn3_icon2, a.btn3_icon3, a.btn_login, a.btn_login2, a.btn_login3, a.btn_lpoginapp, a.btn_loginsend, a.btn_big, a.golink01 { display: inline-block;vertical-align: middle;text-indent: 0;}
      .btn_login > span {line-height:42px;}
      .btn_cerapp > span {padding-top:20px}
      .btn_login2 > span {line-height:16px;}
      .btn_login3 > span {line-height:16px;}
      .btn_lpoginapp > span {line-height:24px;}
      .btn_loginsend > span span {line-height:10px}
      .btn_loginsend > span strong {line-height:15px}
      .golink01 > span {line-height:12px}
      
      .btn_login {background: #2f5586;border: 1px solid #1f3e65;border-radius: 3px;}      
      .btn > span,.btn2 > span,.btn4 > span,.btn3_type1 > span,.btn3_type2 > span,.btn3_type3 > span,.btn3_type4 > span,.btn3_icon > span,
      .btn3_icon2 > span,.btn3_icon3 > span,.btn_login > span,.btn_login2 > span,.btn_login3 > span,.btn_cerapp > span,.btn_lpoginapp > span,
      .btn_loginsend > span,.btn_big > span,.btn_big2 > span,.golink01 > span {position:relative; display:inline-block; text-align:center; vertical-align:middle; white-space:nowrap}
      .btn > span, .btn2 > span, .btn4 > span {font-weight:bold; color:#fff}
      .btn > span {height:21px; padding:0 9px; font-size:12px} 
      
      .golink01 > span {padding-right:15px; height:16px; background:url(../images/common/bg_arrow2.png) right center no-repeat; font-size:11px; color:#666; letter-spacing:-1px; text-align:left; vertical-align:middle}
      .golink01 > span span {vertical-align:middle}
      
      
      /* 좌측메뉴 */
      .tit_lnb {margin:30px 0 20px; height:36px; background:url('../images/common/lnb_tit.gif') no-repeat left bottom; font-size:22px; color:#272727}
      .lnb {border-bottom:1px solid #ededee; margin-bottom:20px}
      .lnb > li {}
      .lnb > li > a {display:block; padding:5px 25px 0 0; height:23px; background:url('../images/common/lnb_arr_off.png') no-repeat 188px 10px; border-top:1px solid #ededee; font-size:15px; font-weight:bold; color:#333}
      .lnb > li > a:hover {padding-left:10px; background:#00477c url('../images/common/lnb_arr_on.png') no-repeat 188px 10px; color:#fff}
      .lnb > li.on > a {padding-left:10px; background:#00477c url('../images/common/lnb_arr_on.png') no-repeat 188px 10px; color:#fff}
      .lnb > li.low > a {background:url('../images/common/lnb_off.png') no-repeat 188px 12px}
      .lnb > li.low > a:hover {background:#00477c url('../images/common/lnb_on.png') no-repeat 188px 11px}
      .lnb > li.low.on > a {padding-left:10px; background:#00477c url('../images/common/lnb_on.png') no-repeat 188px 11px; color:#fff}
      .lnb > li.low.on > ul {display:block}
      .lnb > li > ul {margin-bottom:10px; border-top:1px solid #ededee}
      .lnb > li > ul > li {margin-top:7px; padding-left:16px; background:url(../images/common/lnb_bl.gif) no-repeat 10px 7px}
      .lnb > li > ul > li > a {display:inline-block; padding:2px 3px 5px 3px; font-size:12px; line-height:1.0em; color:#666}
      .lnb > li > ul > li > a:hover, .lnb > li > ul > li > a:focus {background:#00477c; color:#fff}
      .lnb > li > ul > li.on > a {background:#00477c; color:#fff}
      .lnb > li > ul > li > ul > li {margin-top:5px; padding-left:8px; background:url(../images/common/lnb_bl_s.gif) no-repeat 3px 7px}
      .lnb > li > ul > li > ul > li > a {display:inline-block; padding:1px 2px 4px; font-size:11px; line-height:1.0em; color:#666}
      .lnb > li > ul > li >ul > li > a:hover, .lnb > li > ul > li> ul > li > a:focus {background:#00477c; color:#fff}
      .lnb > li > ul > li > ul > li.on > a {background:#00477c; color:#fff}

      .lnb_scroll {height:285px; overflow-y:scroll}

      .lnb_btm_stats p {margin-bottom:5px; font-size:12px; color:#757575}
      .lnb_btm_stats a {display:block; height:38px; line-height:34px; background:#5c5c5c; color:#fff; text-align:center}

      /*.lnb_btm_bn {padding:15px 10px 0; border:1px solid #e1e1e1; background:url(../images/common/bg_btm_customer.gif) no-repeat 142px 18px #f9f9f9}*/
      .lnb_btm_bn.inq_ce {background:url(../images/common/bg_btm_inq.gif) no-repeat 138px 18px #f9f9f9}
      .lnb_btm_bn strong {font-size:14px; line-height:14px; color:#0091e4}
      .lnb_btm_bn.inq_ce strong {color:#74ad05}
      .lnb_btm_bn a {display:block}
      .lnb_btm_bn a > span {display:block; margin:5px 0 15px; font-size:11px; line-height:13px; color:#757575}
      .lnb_btm_bn a > span span {padding-right:17px; background:url(../images/common/bg_arrow2.png) no-repeat right center}
   
@media screen and (-webkit-min-device-pixel-ratio: 0){}
   .lnb > li > a {
       padding-top: 6px;
       height: 30px;
   }
}
</style>
<style>
	.content h3.tit_content {
    height: 32px;
    padding: 20px 0 20px;
    margin: 0 0 30px;
    font-size: 25px;
    color: #272727;
    line-height: 1.2em;
	}
	div, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, p, form, fieldset, input, table, tr, th, td, button, textarea, select, thead, tbody, tfoot, pre, option {
    margin: 0;
    padding: 0;
    font-family: Malgun Gothic,'맑은고딕', '돋움', Dotum, '굴림',Gulim,Helvetica,sans-serif !important;
	}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: auto;
    text-decoration: none;
}	
	h3 {
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
	}
</style>
<!-- location-->
<style>
.location {padding-top:9px; line-height:8px; font-size:11px; overflow:hidden}
.location ul {float:right}
.location ul:after {content:""; display:block; clear:both}
.location ul li {float:left; padding-left:12px; height:12px; background:url(../images/common/bg_bar10.gif) no-repeat 6px 1px; color:#757575}
.location ul li:first-child {background:none}
.location ul li a {/*position:relative; display:inline-block; top:-2px; */color:#757575}
.location ul li strong {/*position:relative; display:inline-block; top:-2px; */color:#333}
</style>
<!-- 컨텐츠안에 탭 -->
<style>
	.tabLayout{overflow: hidden}
	.tabLayout ul{overflow:hidden; float:left}
	.tabLayout ul li {float:left; position:relative; padding-bottom:22px; text-align:center}
    .tabLayout ul li.on {background:url('../images/common/bg_tab_blue_arr.gif') no-repeat center 34px}
	.tabLayout ul li a {display:block; height:28px; padding-left:20px; margin-left:1px; background:url('../images/common/bg_tab_gray.gif') no-repeat 0 0; line-height:20px; font-size:15px; color:#fff; }
	.tabLayout ul li a span {display:block; height:20px; padding:4px 20px 0 0; background:url('../images/common/bg_tab_gray_right.gif') no-repeat 100% 0}
	.tabLayout ul li:first-child a {margin-left:0}
	.tabLayout ul li.on a {background-image:url('../images/common/bg_tab_blue.gif'); font-weight:bold}
	.tabLayout ul li.on a span {background-image:url('../images/common/bg_tab_blue_right.gif')}
	.tabLayout ul li.on strong {display:block; height:28px; padding-left:20px; margin-left:1px; background:url('../images/common/bg_tab_blue.gif') no-repeat 0 0; line-height:20px; font-size:15px; color:#fff; }
	.tabLayout ul li.on strong span {display:block; height:20px; padding:4px 20px 0 0; background:url('../images/common/bg_tab_blue_right.gif') no-repeat 100% 0}
</style>
<style>
	.content h4{clear:both; padding:0; margin:-7px 0 8px; padding-left:12px; min-height:25px; background:url('../images/common/bl_h3.gif') no-repeat left 9px; font-size:15px; font-weight:bold; color:#333; line-height:25px; letter-spacing:-1px}
</style>
<!-- 내용 안에 대한 css입니다-->
<style>
	.slide_menu .slide_wrap {padding:10px 10px 5px; background:#f9f9f9; border-top:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1; overflow:hidden; margin-bottom: 20px}
</style>
<!-- 테이블 css -->
<style>
.txt_center {
    text-align: center !important;
}


.content ul.list > li, .pop_content ul.list > li {
	margin-bottom:10px;
    padding-left: 11px;
    background: url(../images/common/lnb_bl_s.png) no-repeat 1px 9px;
    line-height: 20px;
}

#content .cont_parbx .list{
	background: url(../images/common/lnb_bl_s.png) no-repeat 1px 9px;
}


.tbl_normal td {
    padding: 4px 10px 7px;
    font-size: 12px;
    line-height: 20px;
    word-break: break-all;
}
.tbl_normal th {padding:6px 10px 11px; font-size:13px; background:#f4f4f4; text-align:center; color:#000; line-height:1.2em}
.tbl_normal .thRight tbody th {text-align:right}
.tbl_normal {margin-bottom:20px; text-indent:0}

/*발급장소안내 버튼*/
.btn4 {
    background: #2f5586;
    border: 1px solid #1f3e65;
    border-radius: 3px;
}

/*기능사 인정불가능 종목css*/.list_bdrBox {padding:10px; color:#666; font-size:12px; border:1px solid #e1e1e1;line-height:25px}
</style>

<style>
	/*다운로드 이미지*/ a.btn3_icon.download {margin-right:4px; padding-right:26px; min-height:21px; background:url(../images/common/btn_download_bg.png) right center no-repeat; color:#757575; font-size:12px}
</style>

<style>
/*info박스 css*/
.infoBox {position:relative; margin-bottom:20px}
.infoBox div > p{margin-top:5px; font-size:12px; line-height:20px}
.infoBox > div {
    padding: 5px 30px 10px 10px;
    background: #f5f7fa;
    border: 1px solid #e1e1e1;
}

.content .cont_parbx {
    padding: 10px 10px 5px;
    margin-bottom: 40px;
    background: #f9f9f9;
    border-top: 1px solid #e1e1e1;
    border-bottom: 1px solid #e1e1e1;
    font-size: 13px;
}

.content .cont_parbx .whBox {
    margin-bottom: 5px;
    padding: 10px 10px 10px 15px;
    background: #fff;
    border: 1px solid #e1e1e1;
}

.content h5 {
    position: relative;
    padding: 0 0 0 12px;
    margin: 27px 0 10px;
    background: url(../images/common/bl_h5.gif) no-repeat left 6px;
    font-size: 13px;
    font-weight: bold;
    color: #333;
    line-height: 1.2em;
}

</style>
<!-- 공통 좌측메뉴에 관한 부분입니다. -->
<script>
   $(function(){
      var $lnb = $(".lnb");
      var $contH = $(document).find(".content").height();
      $("#lnb").css({"min-height":$contH});

      $lnb.find(">li >ul").each(function(){
         $(this).parent("li").addClass("low");
      });
      $lnb.find("> li > ul").hide();
      $lnb.find("> li.on > ul").show();
      $lnb.find("> li.on").addClass("active");

      $lnb.find("> li > a").click(function(){
         $lnb.find("> li").removeClass("on");
         if($(this).parent("li").find(">ul").css("display") == "none"){
            $lnb.find("> li").removeClass("on");
            $(this).parent("li").addClass("on");
            $(this).parent("li").find(">ul").slideDown("easeInOutQuart");
            $(this).parent("li").siblings().find(">ul").slideUp("easeInOutQuart");

         } else {
            $(this).parent("li").removeClass("on");
            $(this).parent("li").find(">ul").slideUp("easeInOutQuart");
         }

      });


      $lnb.find(">li").filter(":last").find("a:last").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            lnbReset();
         }
      });

      $lnb.find(">li").filter(":last").find(">a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            if($(this).parent("li").find(">ul").css("display") == "none"){
               lnbReset();
            }
         }
      });

      $lnb.find(">li").filter(":first").find(">a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
            lnbReset();
         } else if (b.keyCode == 9) {}
      });

      function lnbReset(){
         $lnb.find("> li").removeClass("on");
         $lnb.find("> li > ul").hide();
         $lnb.find("> li.active").addClass("on");
         $lnb.find("> li.active ul").show();
      }

      $lnb.find(">li>ul>li>ul>li>a").mouseenter(function(){
         $(this).closest("ul").parent("li").addClass("on");
      });
      /*
      .focusin(function(){
         $(this).mouseenter();
      });
      */

      $lnb.find(">li>ul>li>ul").mouseleave(function(){
         $(this).parent("li").removeClass("on");
      });

      $lnb.find(">li>ul>li>ul>li").filter(":last").find("a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            $(this).closest("ul").parent("li").removeClass("on");
         }
      });
   })
</script>

<article>
<div id="container">
		<div>
			<jsp:include page="jagukLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
	<div id="content">
				<div class="location">
					<ul>
						<li>홈</li>
						<li>원서접수</li>
						<li><strong>원서접수 안내</strong></li>
					</ul>
				</div>
		<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">폐지종목 자격증발급</h3>
				<hr>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<h4>폐지종목 자격증발급이란?</h4>
				<div class="cont_parbx mb0">
					<p class="list">
						&nbsp&nbsp산업현장의 기술인력 수요변화에 부응하기 위하여 기술자격 종목 및 등급을 개편하였습니다. 개정된 법률에 의거 현재 소지하신 자격증을 개편된 자격 종목 및 등급으로 변경처리(확인 또는 재발급) 하여 드립니다.<br>
						<span class="fc_6">(소지하신 자격증에 변경된 종목 및 등급으로 확인 / 소지하신 자격증을 반납하고 변경된 종목 및 등급으로 재발급)</span>
					</p>
					<h5>국가기술자격의 등급개편 내용</h5>
					<div class="tbl_normal bgNone mb0">
						<table summary="국가기술자격의 등급개편 내용으로, 구분, 내용 정보제공" class="table table-bordered">
							<colgroup>
								<col width="15%">
								<col width="*">
								<col width="20%">
								<col width="15%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="active">구분</th>	
									<th scope="col" class="active">당초</th>
									<th scope="col" class="active">개정</th>
									<th scope="col" class="active">개정시행</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="txt_center">계 열</td>
									<td>기술계, 기능계</td>
									<td>계열구분폐지 </td>
									<td rowspan="7" class="txt_center">‘99. 3. 28 </td>
								</tr>
								<tr>
									<td rowspan="6" class="txt_center">자격등급</td>
									<td>기술사</td>
									<td>기술사</td>
								</tr>
								<tr>
									<td>기능장</td>
									<td>기능장</td>
								</tr>
								<tr>
									<td>기사1급</td>
									<td>기사</td>
								</tr>
								<tr>
									<td>기사 2급 다기능기술자 기능사 1급</td>
									<td>산업기사</td>
								</tr>
								<tr>
									<td>기능사2급</td>
									<td>기능사</td>
								</tr>
								<tr>
									<td>기능사보</td>
									<td>폐지</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="impt">※ 법령 개정에 따라 폐지되는 종목의 기술자격은 종전의 법령에 의한 기술자격 명칭을 계속 보유하도록 규정하고 있습니다. </p>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>