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

						<!-- 컨텐츠 내용 -->
						<div class="tabLayout">
							<ul>
								<li><a href="#" onclick="alterTab()"><span>자격증
											발급</span></a></li>
								<li class="on"><a href="#" title="자격증 발급처"><span>자격증
											발급처</span></a></li>
							</ul>
						</div>
						<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
						<h4>자격증 발급장소 : 24개 지부 / 지사</h4>

						<div class="tbl_normal mb0">
							<!-- 2015.03.17 jws :  이종용 대리 요청 url변경 http://www.hrdkorea.or.kr/5/4/2 ==> http://www.hrdkorea.or.kr/5/4/2/2  -->
							<!-- 2015.12.31 jws : 김종호대리 요청 URL변경http://www.hrdkorea.or.kr/5/4/2/2 === > http://www.hrdkorea.or.kr/5/4/2/1 -->
							<p class="mb10">
								<a href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank"
									title="새 창" class="btn4"><span>발급장소 상세안내</span></a>
							</p>
							<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
							<table summary="자격증 발급장소(24개 지부/지사)안내로 지부/지사,전화번호 정보제공" class="table table-bordered">
								<colgroup>
									<col width="30%">
									<col width="20%">
									<col width="30%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr class="active">
										<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
										<!-- <th scope="col">자격시험센터 및 지사</th> -->
										<th scope="col">지부 / 지사</th>
										<th scope="col">전화번호</th>
										<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
										<!-- <th scope="col">자격시험센터 및 지사</th> -->
										<th scope="col">지부 / 지사</th>
										<th scope="col">전화번호</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
										<!-- <td>서울자격시험센터(서울)</td>  -->
										<td>서울지역본부</td>
										<td>02-2137-0509</td>
										<!-- <td>인천자격시험센터(인천)</td>  -->
										<td>중부지역본부</td>
										<td>032-820-8630</td>
									</tr>
									<tr>
										<!--  <td>서울자격시험센터(서울동부)</td> -->
										<td>서울동부지사</td>
										<td>02-2024-1708</td>
										<!-- <td>인천자격시험센터(경기)</td>  -->
										<td>경기지사</td>
										<td>031-249-1228</td>
									</tr>
									<tr>
										<!-- <td>서울자격시험센터(서울남부)</td>  -->
										<td>서울남부지사</td>
										<td>02-6907-7136</td>
										<!-- <td>인천자격시험센터(경기북부)</td>  -->
										<td>경기북부지사</td>
										<td>031-850-9123</td>
									</tr>
									<tr>
										<!-- <td>서울자격시험센터(강원) </td> -->
										<td>강원지사</td>
										<td>033-248-8516</td>
										<!-- <td>인천자격시험센터(성남)</td> -->
										<td>경기동부지사</td>
										<td>031-750-6226</td>
									</tr>
									<tr>
										<!-- <td>서울자격시험센터(강릉)</td> -->
										<td>강원동부지사</td>
										<td>033-650-5722</td>
										<!-- <td>광주자격시험센터(광주)</td> -->
										<td>광주지역본부</td>
										<td>062-970-1766</td>
									</tr>
									<tr>
										<!-- <td>부산자격시험센터(부산)</td> -->
										<td>부산지역본부</td>
										<td>051-330-1917</td>
										<!-- <td>광주자격시험센터(전북)</td> -->
										<td>전북지사</td>
										<td>063-210-9228</td>
									</tr>
									<tr>
										<!-- <td>부산자격시험센터(부산남부)</td> -->
										<td>부산남부지사</td>
										<td>051-620-1917</td>
										<!-- <td>광주자격시험센터(전남)</td> -->
										<td>전남지사</td>
										<td>061-720-8534</td>
									</tr>
									<tr>
										<!-- <td>부산자격시험센터(울산)</td> -->
										<td>울산지사</td>
										<td>052-220-3223</td>
										<!-- <td>광주자격시험센터(목포) </td> -->
										<td>전남서부지사</td>
										<td>061-288-3323</td>
									</tr>
									<tr>
										<!-- <td>부산자격시험센터(경남)</td> -->
										<td>경남지사</td>
										<td>055-212-7244</td>
										<td>제주지사</td>
										<td>064-729-0714</td>
									</tr>
									<tr>
										<!-- <td>대구자격시험센터(대구) </td> -->
										<td>대구지역본부</td>
										<!-- <td>053-580-2326  </td> -->
										<td>053-580-2331</td>
										<!-- <td>대전자격시험센터(대전) </td> -->
										<td>대전지역본부</td>
										<td>042-580-9136</td>
									</tr>
									<tr>
										<!-- <td>대구자격시험센터(경북)</td> -->
										<td>경북지사</td>
										<td>054-840-3033</td>
										<!-- <td>대전자격시험센터(충북)</td>  -->
										<td>충북지사</td>
										<td>043-279-9043</td>
									</tr>
									<tr>
										<!-- <td>대구자격시험센터(포항)</td> -->
										<td>경북동부지사</td>
										<td>054-230-3254</td>
										<!-- <td>대전자격시험센터(충남)</td> -->
										<td>충남지사</td>
										<td>041-620-7635</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
      <!--  컨텐츠 끝 -->
   </div>
   </div>
</article>