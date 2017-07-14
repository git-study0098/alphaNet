<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<!-- 공통 좌측메뉴에 관한 부분입니다. -->

<article>
<div id="container">
<!-- 좌측 메뉴바 -->

<div>
		<jsp:include page="jagukLnb.jsp" />
	   <div id="lnb2"></div>
	</div>   <!-- 좌측 메뉴바 끝-->
   
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
				<h3 class="tit_content">기능사보기능사자격부여</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="tbl_normal thRight mb40">
					<table summary="기능사보기능사자격부여 안내로 발급기간, 대상종목, 준비물, 참고사항, 발급장소 정보제공" class="table table-bordered">
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="active">발급기간</th>
								<td>신청일로부터 14일 이내 : 경력사항 조회 및 확인에 시일이 더 소요될 수도 있습니다. </td>
							</tr>
							<tr>
								<th scope="row" class="active">대상종목</th>
								<td>※ <strong>162종목(아래 “기능사 인정가능 종목 (162종목)”참조)</strong><br>해당하는 기능사 자격이 없는 기능사보(42종목) 제외</td>
							</tr>
							<tr>
								<th scope="row" class="active" id="active">준비물</th>
								<td>
									<ul class="list">
										<li>신분증 (주민등록증)</li>
										<li>사진(증명 또는 반명함)</li>
										<li>국가기술자격증발급신청서(공단에서 발급)</li>
										<li>기능사 인정용 경력(재직) 증명서(공단 소정양식) <a href="#" class="btn3_icon download"><span>서식 다운받기 </span></a>
											<p class="impt">※ <strong>1998. 5. 9일 이전에 기능사보 자격을 취득하고, 1998. 5. 9 ~ 2001. 12. 31까지 해당 직무에 계속 재직하는 과정에서 직장을 옮기는 등 불가피한 사유로 90일을 초과하지 않는 범위 내에서 해당직무에 종사하지 않더라도 계속 재직으로 인정하여 기능사 자격부여</strong></p>
										</li>
										<li>기타 경력증명을 위하여 필요한 서류(사업자등록증, 사실확인서 등) <a href="/inf/ginungsa002.hwp" class="btn3_icon download"><span>서식 다운받기</span></a><br>(사실확인서는 근무했던 회사가 부도 또는 폐업으로 경력증명서 발급이 불가한 경우에 사용합니다)</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row" class="active">참고사항</th>
								<td>경력을 증명하지 못하여 기능사로 전환되지 않더라도 해당 기능사보 자격은 계속 유효합니다.</td>
							</tr>
							<tr>
								<th scope="row" class="active">발급장소</th>
								<!-- 2015.03.17 jws :  이종용 대리 요청 url변경 http://www.hrdkorea.or.kr/5/4/2 ==> http://www.hrdkorea.or.kr/5/4/2/2  -->
								<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
								<!-- 2015.12.321 jws : 김종호대리 요청 URL변경http://www.hrdkorea.or.kr/5/4/2/2 === > http://www.hrdkorea.or.kr/5/4/2/1 -->
								<td>24개 지부 / 지사 <a href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank" title="새 창" class="btn4"><span>발급장소 상세안내</span></a></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<h4>기능사 <span class="fc_b">인정가능</span> 종목 (162종목)</h4>
				<div class="tbl_normal tdCenter mb40">
					<table summary="기능사 인정가능 종목 (162종목)으로 기능사보, 인정가능 기능사, 기능사보, 개정시행일 정보제공" class="table table-bordered">
						<colgroup>
							<col width="24%">
							<col width="22%">
							<col width="*">
							<col width="26%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="active">기능사보</th>
								<th scope="col" class="active">인정가능 기능사</th>
								<th scope="col" class="active">기능사보</th>
								<!-- 2015.07.09 jws : 김인철 대리 요청 타이틀 변경 
								<th scope="col">개정시행일</th> 
								-->
								<th scope="col" class="active">인정가능 기능사</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>가구도장 </td>
								<td>건축도장 </td>
								<td>금속재창호 </td>
								<td>금속재창호 </td>
							</tr>
							<tr>
								<td>가구제작 </td>
								<td>가구제작 </td>
								<td>기계자수공예 </td>
								<td>자수(기계) </td>
							</tr>
							<tr>
								<td>가스용접 </td>
								<td>가스용접 </td>
								<td>기계편물 </td>
								<td>편물(기계) </td>
							</tr>
							<tr>
								<td>객화차정비 </td>
								<td>객화차정비 </td>
								<td>나전칠기(칠기) </td>
								<td>칠기</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h4>기능사 <span class="fc_r">인정불가능</span> 종목 (42종목)</h4>
				<div class="list_bdrBox">가눈섭,  가발,  가죽처리,  고무제품제조,  고압합성,  굴착,  궐련제조,  그라비아인쇄,  기어절삭,  기와,  농예화학,  담배원료가공,<br> 담뱃재건조,  담배제조기계,  담배포장,  등죽세공예,  문선식자(문선,식자),  방적기보전,  방적기조정,  보오링,  볼록제판,  생사,  선광, <br> 유리제조,  인쇄(오목판),  인형,  자료입력보,  전화교환,  제강(조괴),  제책,  제판(오목판),  주조조판,  지형연판,  직기보전,  직기조정,<br>  초경가공,  타자기수리,  함석,  형평삭,  호부기조정,  홍삼제조,  화공기계</div>

				<!-- //컨텐츠 내용 -->
			</div>
      <!--  컨텐츠 끝 -->
      </div>
   </div>
</article>