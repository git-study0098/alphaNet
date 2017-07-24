<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* { box-sizing: content-box;}

.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		
		<form name="form1" onsubmit="return false">
	
	<div id="content">
		<div class="location">
			<ul>
				<li>홈</li>
				<li>정기시험</li>
				<li>필기시험 안내</li>
				<li><strong>필기/실기 시험 수수료</strong></li>
			</ul>
		</div>

		<div class="content">
			<h3 class="tit_content">필기/실기 시험 수수료</h3>

			<h4 class="mt15">필기/실기 시험 종목별 검정수수료 안내</h4>
			<div class="metier_wrap">
				<div>
					<label for="jmNm"><strong>종목이름 검색</strong></label>
					<input type="text" id="jmNm" name="jmNm" style="width:220px" class="form_text" onkeydown="javascript:onenter()" value="">
					<button type="button" id="button" name="button" class="btn3_icon search" onclick="location.href='<%=request.getContextPath()%>/wonseoWriterPrice2'"><span class="blind">검색</span></button>
				</div>
				<p class="mt10">
					예) 기사, 산업기사, 정보처리기사
				</p>
			</div>

			<div id="tagfree">

			</div>

		</div><!-- class=content> -->
	</div><!-- //#id=content-->
	</form>
		
	</div>
</article>