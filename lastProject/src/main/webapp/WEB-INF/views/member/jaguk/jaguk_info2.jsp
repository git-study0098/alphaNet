<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<style>
	*{box-sizing:content-box;}
</style>
<article>
<div id="container">
<div>
		<jsp:include page="jagukLnb.jsp" />
	   <div id="lnb2"></div>
	</div>   
   
   
   
<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
   <div id="content">
      <!-- location -->
      <div class="location">
         <ul>
            <li>홈</li>
            <li>원서접수</li>
            <li><strong>원서접수 안내</strong></li>
         </ul>
      </div>
      <!-- //location -->
      <!-- 컨텐츠 시작 -->
     			 <div class="content">
						<!-- 컨텐츠 타이틀 -->
						<h3 class="tit_content">자격증 발급 / 자격증 발급처</h3>
						<hr>
						<!-- //컨텐츠 타이틀 -->

						<!-- 컨텐츠 내용 -->
						<div class="tabLayout">
							<ul>
								<li class="on"><a href="#" title="자격증 발급"><span>자격증발급</span></a></li>
								<li><a href="#" onclick="alterTab()"><span>자격증발급처</span></a></li>
							</ul>
						</div>
						<ul class="slide_menu">
							<!-- 1 -->
							<li>
								<h4 class="slide_title">
									<a href="#">국가기술자격증 발급목적 <span class="slide_close"
										style="display: none;">내용닫기</span><span class="slide_open"
										style="display: none;">내용열기</span></a>
								</h4>
								<!-- /2014.08.22 수정 --> <!-- 내용열기 버튼 이미지명:btn_bl_slide_dn.gif -->
								<div class="slide_wrap">
									<!-- slide inner content  -->
									<p class="list">국가기술자격법 제13조 제1항의 규정에 의한 국가기술자격증을 발급하는 목적은
										개인의 직무수행능력을 국가가 객관적으로 평가하여 그에 상응한 자격을 부여ㆍ공인하고 타인으로 하여금 믿고 활용하게
										함으로써 국가기술자격 취득자의 권익보호 및 우대 등의 권리행사를 할 수 있도록 하는데 있습니다.</p>
								</div>
							</li>
							<!-- 2 -->
							<li>
								<h4 class="slide_title">
									<a href="#">국가기술자격증 발급제도 변천 내력<span class="slide_close"
										style="display: none;">내용닫기</span><span class="slide_open"
										style="display: none;">내용열기</span></a>
								</h4>
								<!-- /2014.08.22 수정 -->
								<div class="slide_wrap rePos">
									<!-- slide inner content  -->
									<p class="list">종전 각 주무부처별로 수행하던 자격증 발급업무는 국가기술자격법 시행령이
										개정됨에 따라 `79. 8. 1부터 구 한국기술검정공단에서 국가기술자격증을 발급하게 되었습니다.이후 공단의
										명칭은 한국직업훈련관리공단('82.3.18), 한국산업인력관리공단('91.4.15)을 거쳐 현재의
										한국산업인력공단('98.1 )으로 변경되었으며 국가기술자격법에 의한 자격종목 뿐만 아니라 직업훈련법 등 26개
										개별사업법에 의한 자격종목 취득자에게 국가기술자격증을 발급하였습니다. '92. 3. 1부터 산업통상자원부소관
										무선설비 자격종목 자격증 발급업무도 우리공단에서 수행하게 됨으로써 전파통신, 전파전자 종목과 대한상공회의소
										시행종목을 제외한 국가기술자격증 발급업무가 우리공단으로 일원화 하였습니다.</p>
									<!-- // slide inner content  -->
								</div>
							</li>
							<li>
								<h4 class="slide_title">
									<a href="#">국가기술자격 취득자 관리<span class="slide_close"
										style="display: none;">내용닫기</span><span class="slide_open"
										style="display: none;">내용열기</span></a>
								</h4>
								<!-- /2014.08.22 수정 -->
								<div class="slide_wrap">
									<!-- slide inner content  -->
									<p class="list">국가기술자격 취득자에 대하여는 자격증 발급신청서에 의하여 성명, 주민등록번호,
										주소, 자격종목 및 등급, 취업처 명칭 및 취업처의 소재지 등을 전산 입력 작성하여 관리.19개 관련
										주무부처에는 각종 개별사업에서 정한 인·허가 업무의 관리 및 자격취득자의 활용방안을 수립할 수 있도록 매분기
										통보. 유관기관 및 기업체, 단체 등에는 자격취득자의 자격취득사항 조회, 확인 또는 관련 통계자료를 제공하여
										기술인력자원을 효율적으로 활용하도록 지원.국가비상대비자원관리를 할 수 있도록 비상대비자원종목 취득자 현황 통보
									</p>
									<!-- // slide inner content  -->
								</div>
							</li>
							<li>
								<h4 class="slide_title">
									<a href="#">국가기술자격증 발급대상<span class="slide_close"
										style="display: none;">내용닫기</span><span class="slide_open"
										style="display: none;">내용열기</span></a>
								</h4>
								<!-- /2014.08.22 수정 -->
								<div class="slide_wrap">
									<!-- slide inner content  -->
									<ul class="list">
										<li>신규발급 : 국가기술자격검정 실기시험에 합격한 자에게 처음으로 자격증을 발급.</li>
										<li>재발급 : 국가기술자격증을 발급 받은 자가 자격증을 분실하였거나 훼손하였을 경우 동일한 자격증을
											다시 발급.</li>
										<li><span
											style="display: block; text-indent: -65px; padding-left: 65px">인정발급
												: 국가기술자격법 제정 이전 다른 법령에 의한 기술자격취득자에게 국가기술자격법에 의한 기술자격취득자와
												동일하게 인정하여 동종동등한 자격증을 발급.</span></li>
									</ul>
									<!-- // slide inner content  -->
								</div>
							</li>
							<li>
								<h4 class="slide_title">
									<a href="#">국가기술자격증 기재사항 변경신청<span class="slide_close"
										style="display: none;">내용닫기</span><span class="slide_open"
										style="display: none;">내용열기</span></a>
								</h4>
								<!-- /2014.08.22 수정 -->
								<div class="slide_wrap">
									<!-- slide inner content  -->
									<p class="list">국가기술자격증의 기재내용 중 성명, 주민등록번호, 주소, 종목 및 등급 등이
										변경되었을 경우 우리공단에 정정 신청하여야 하며. 국가기술자격 취득자가 취업하고 있는 취업처 명칭 및 소재지,
										학력사항 등이 변경되었을 경우에도 그 변경 내용을 우리공단에 정정 신청하여야 합니다.</p>
									<!-- // slide inner content  -->
								</div>
							</li>
							<li>
								<h4 class="slide_title">
									<a href="#">국가기술자격 취득사항 확인서 발급<span class="slide_close"
										style="display: none;">내용닫기</span><span class="slide_open"
										style="display: none;">내용열기</span></a>
								</h4>
								<!-- /2014.08.22 수정 -->
								<div class="slide_wrap">
									<!-- slide inner content  -->
									<p class="list">국가기술자격 취득자가 자격취득 사실확인이 필요할 경우 국가기술자격
										취득사항확인서(한글, 영문)를 발급하고 있습니다.</p>
									<!-- // slide inner content  -->
								</div>
							</li>
						</ul>
						<!-- //컨텐츠 내용 -->
					</div>
      <!--  컨텐츠 끝 -->
   </div>
   </div>
</article>