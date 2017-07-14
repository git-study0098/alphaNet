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
				<h3 class="tit_content">자격증 신규/인정/재발급</h3>

				<!-- 컨텐츠 내용 -->
				<div class="tabLayout">
						<ul>
							<li><a href="qlf001.do?id=qlf00102&amp;gSite=Q&amp;gId="><span>신규발급</span></a></li>
							<li><a href="qlf001.do?id=qlf00103&amp;gSite=Q&amp;gId="><span>인정발급</span></a></li>
							<li class="on"><a href="qlf001.do?id=qlf00104&amp;gSite=Q&amp;gId=" title="재발급"><span>재발급</span></a></li>
						</ul>
				</div>
				<div class="tbl_normal thRight">
					<table summary="자격증 재발급 안내로 신규발급안내, 발급기간, 인터넷 발급방법, 방문발급, 발급장소 정보제공" class="table table-bordered">
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="active">재발급 안내</th>
								<td>자격증 재발급 신청방법 : 인터넷 발급 및 방문발급 가능  </td>
							</tr>
							<tr>
								<th scope="row" class="active">인터넷 재발급 방법</th>
								<td>
									<ul class="list">
										<li>인터넷으로 재발급 신청시 택배 수령 및 방문 수령</li>
										<li>인터넷 자격증 재발급 신청 접수기간
											<p class="line">- 월요일~일요일(24시간) 연중 무휴</p>
										</li>
										<li>인터넷을 이용한 자격증 재발급 신청이 가능한 경우
											<ul class="line">
												<li>- 배송신청가능자 : 공단이 본인 사진확인용 사진 확보<br>(2005년 9월이후 자격취득자 및 공인인증 가능자)</li>
												<li>- 방문수령가능자 : 공인인증 불가</li>
											</ul>
										</li>
										<li>인터넷을 이용한 자격증 재발급 신청이 불가한 경우
											<p class="line">- 신분미확인자 / 자격취득사항(성명, 주민번호, 종목 등)의 변경이 필요한 경우</p>
										</li>
										<li>인터넷 자격증 재발급시 비용
											<p class="line">- 수수료 : 3,100원 / 배송비 :

						2,340원(방문 수령시 배송비 없음)

											</p>
										</li>
										<li>구(舊) 자격증
											<p class="line">- 관할 지부/지사로 우편송부(분실한 경우 제외) 또는 본인이 직접 파기</p>
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row" class="active">방문발급</th>
								<td>
									<ul class="list">
										<li>재 발급시 준비물
											<ul class="line">
												<li>- 신분증 (주민등록증) : 본인이 직접 방문시는 본인신분증 대리인이 방문시는 본인신분증+대리인 신분증을 필히 지참하시기 바랍니다.</li>
												<li>- 미성년자의 신분증으로 학생증을 지참할 경우 사진과 주민등록번호가 모두 명시된 학생증에 한하며, 주민등록번호가 명시되어 있는 않은 경우는 주민등록등본을 함께 지참하시기 바랍니다.</li>
												<li>- 구(舊) 자격증 : (분실한 경우 제외)</li>
												<li>- 사진1매 (증명사진)</li>
												<li>- 수수료 :

						3,500원

													</li>
												<li>- 국가기술자격증발급신청서 (공단에서 발급) : 개명, 입양 등으로 성명 및 주민등록번호가 변경된 경우 이를 증명할 수 있는 관련 서류(변경내용이 기재된 주민등록초본 등) 첨부</li>
											</ul>
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row" class="active">발급장소</th>
								<td>24개 지부 / 지사 <a href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank" title="새 창" class="btn4"><span>발급장소 상세안내</span></a></td>
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