<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  

<article>
<div id="container">
<!-- 좌측 메뉴바 -->
<div>
		<jsp:include page="../../lnb/jagukLnb.jsp"/>
	   <div id="lnb2"></div>
	</div>
   <!-- 좌측 메뉴바 끝-->
   
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
				<h3 class="tit_content">면허발급대상종목</h3>
				<hr>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="infoBox">
					<div>
						<p class="list">국가기술자격법에 의한 자격취득자 중 다음의 면허발급 대상종목 자격취득자는 반드시  시·군·구청에서 면허증을 발급받아야 영업(또는 중기운전)을 하실 수 있습니다.
						 면허 발급은 개별관련 법규 및 지자체별 업무과 변경(이관)될 수 있으니, 반드시 주소지의 관할 지자체(시·군·구) 에 사전 문의 후 방문하시기 바랍니다.</p>
					</div>
					<span></span>
				</div>
				<div class="tbl_normal tdLeft valgnTop mb10">
					<table summary="기능사 인정가능 종목 (162종목)으로 자격종목, 면허발급기관, 준 비 물, 관련법규  정보제공" class="table table-bordered">
						<colgroup>
							<col width="24%">
							<col width="22%">
							<col width="*">
							<col width="26%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="active">자격종목</th>
								<th scope="col" class="active">면허발급기관</th>
								<th scope="col" class="active">준 비 물</th>
								<th scope="col" class="active">관련법규</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<ul class="list">
										<li>굴삭기운전 </li>
										<li>공기압축기운전 </li>
										<li>기중기운전</li>
										<li>로더운전</li>
										<li>롤러운전</li>
										<li>모터그레이더운전</li>
										<li>불도저운전</li>
										<li>쇄석기운전</li>
										<li>아스팔트피니셔운전</li>
										<li>준설선운전</li>
										<li>지게차운전</li>
										<li>타워크레인운전 </li>
									</ul>
								</td>
								<td>시.군.구청 (또는 관할 차량등록사업소)  </td>
								<td>
									<ul class="list line">
										<li>- 국가기술자격증</li>
										<li>- 주민등록증</li>
										<li>- 사진 2매 (3.5cm X 4.5cm) 등 </li>
										<li>- 제출서류  : 건설기계관리법 시행규칙 [별지 제36호 서식] 참고 및 관할시.군.구청 문의</li>
										<li>- 수수료 2,500원  </li>
									</ul>
								</td>
								<td>	<ul class="list line">
										<li>- 건설기계관리법 제26조</li>	
										<li>- 건설기계관리법 시행규칙 제71조 </li>									
									</ul>			
								</td>
							</tr>
							<tr>
								<td>
									<ul class="list">
										<li>한식조리</li>
										<li>양식조리</li>
										<li>일식조리</li>
										<li>중식조리</li>
										<li>복어조리</li>
									</ul>
								</td>
								<td>시.군.구청 (또는 관할 보건소)   </td>
								<td>
									<ul class="list line">
										<li>- 국가기술자격증</li>
										<li>- 주민등록증</li>
										<li>- 제출서류  : 식품위생법 시행규칙 [별지 60호 서식] 참고 및 관할시.군.구청 문의</li>
										<li>- 수수료 5,500원 </li>
									</ul>
								</td>
								<td>
										<ul class="list line">
											<li>- 식품위생법 제53조</li>
											<li>- 식품위생법 시행규칙 제80조 1항</li>
										</ul>
								</td>
							</tr>
							<tr>
								<td>
									<ul class="list">
										<li>이용사</li>
										<li>미용사</li>
									</ul>
								</td>
								<td>시.군.구청 (또는 관할 보건소) </td>
								<td>
									<ul class="list line">
										<li>- 국가기술자격증</li>
										<li>- 주민등록증</li>
										<li>- 사진 2매(3.5cm X 4.5cm) 등</li>
										<li>- 제출서류  : 공중위생관리법 시행규칙 [별지 7호 서식] 참고 및 관할시.군.구청 문의</li>
										<li>- 수수료 5,500원 </li>
									</ul>
								</td>
								<td>
									<ul class="list line">
										<li>- 공중위생관리법 제6조 1항</li>
										<li>- 공중위생관리법 시행규칙 제9조 1항</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
      <!--  컨텐츠 끝 -->
      </div>
   </div>
</article>