<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>    
<style>
   *{box-sizing:content-box;}
   button{
      margin-left: 10px;
   }

</style>


<script>

   $(function(){
          $("#button1").unbind("click").bind("click",function(){
              var audio =new Audio('<%=request.getContextPath()%>/resources/member/민지원서접수안내.mp3');
              audio.play();
          });
   
   })

   function gogo2(){
      var audio =new Audio('<%=request.getContextPath()%>/resources/member/민지접수확인.mp3');
      audio.play();
   }
   function gogo7(){
      var audio =new Audio('<%=request.getContextPath()%>/resources/member/민지접수상태.mp3');
      audio.play();
   }
   function gogo3(){ 
      var audio =new Audio('<%=request.getContextPath()%>/resources/member/미진결제마감시한.mp3');
      audio.play();
   }
   function gogo4(){
      var audio =new Audio('<%=request.getContextPath()%>/resources/member/미진가상계좌 수수료.mp3');
      audio.play();
   }
   function gogo5(){
      var audio =new Audio('<%=request.getContextPath()%>/resources/member/미진채번가능기한.mp3');
      audio.play();
   }
   function gogo6(){
      var audio =new Audio('<%=request.getContextPath()%>/resources/member/미진인터넷접수 취소.mp3');
      audio.play();
   }


</script>
<article>
   <div id="container">
      <!-- 좌측 메뉴바 -->
      <div>
         <!-- 좌측 메뉴바 끝-->
         <jsp:include page="../../lnb/wonseoLnb.jsp"/>
         <div id="lnb2"></div>
      </div>

      <div id="content">
         <div class="location">
            <ul>
               <li>홈</li>
               <li>원서접수</li>
               <li><strong>원서접수 안내</strong></li>
            </ul>
         </div>
         <!-- //location -->
         <div class="content">
            <!-- 컨텐츠 타이틀 -->
            <h3 class="tit_content" id="title">원서접수 안내<button type="button" id ="button1"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h3>
            <!-- //컨텐츠 타이틀 -->
            <!-- 탭 -->
            <div class="tabLayout green">
               <ul>
                  <li class="on"><a href="#" title="원서접수 안내"><span>원서접수 안내</span></a></li>
                  <li><a href="#" id="lnkLicenseInfo"><span>원서접수시 유의사항</span></a></li>
               </ul>
            </div>

            <!-- 컨텐츠 내용 -->
            <h4>접수확인 및 수험표 출력기간<button type="button" onclick="gogo2()"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h4>
            <div class="cont_parbx">
               <p class="list">접수당일부터 시험시행일까지 출력가능(이외 기간은 조회불가) 합니다. 또한 출력장애 등을 대비하여 사전에 출력 보관하시기 바랍니다.</p>
            </div>

            <h4>접수상태(접수완료, 수험표출력, 미결제)를 클릭하면 각 접수상태에 따라 다음 단계화면으로 이동합니다.<button type="button" onclick="gogo7()"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h4>
            <div class="cont_parbx">
               <ul class="list">
                  <li>접수완료, 수험표출력 : 수험표 출력화면으로 이동 </li>
                  <li>미결제 : 원서접수내용 확인 화면으로 이동 </li>
                  <li>입금대기중 : 가상계좌번호 조회 </li>
               </ul>
            </div>

            <h4>접수 수수료 결제마감 시한(국가기술자격만 해당) : <strong class="fc_r">원서접수 마감일 18:00시까지</strong> 단, 원서작성 완료후 접수수수료 미결제상태인 다음의 경우는 결제가능. <button type="button" onclick="gogo3()"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h4>
            <div class="cont_parbx">
               <ul class="list">
                  <li>정기검정
                     <ul class="line">
                        <li>- <strong class="fc_3">가상계좌이체 신청</strong>에 의해 <strong class="fc_3">가상계좌번호를 채번받았을 경우(<span class="fc_r">다음날 14:00시까지</span>)</strong></li>
                        <li>- <strong class="fc_3">계좌이체 및 신용카드 결제신청시</strong>는 시험응시장소에 <strong class="fc_3">수용여유인원이 있을 경우(<span class="fc_r">다음날 12:00시까지</span>)</strong></li>
                     </ul>
                  </li>
                  <li>상시검정 : 원서접수 마감일 18:00시까지(<strong class="fc_r">결제마감 시한</strong>까지 <strong class="fc_r">접수수수료를 입금하지 않으면 수험원서접수가 자동취소</strong>)</li>
               </ul>
            </div>

            <h4>가상계좌 수수료 입금 기한<button type="button" onclick="gogo4()"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h4>
            <div class="cont_parbx">
               <p class="list">
                  정기/상시검정 : 인터넷접수기간중 가상계좌번호 부여받은일 다음날 오후 2시까지 인터넷 수험원서 <strong class="fc_r">접수 수수료</strong>를 기한내에 <strong class="fc_r">입금을 하지 않으면 수험원서 제출이 자동 취소</strong>됩니다. 가상계좌 입금시 수험자의 주거래은행 신용도 및 창구이용입금, 자동화기기 이용입금 시 각각의 은행별로 정해진 입금수수료가 부과될 수 있습니다.
               </p>
            </div>

            <h4>가상계좌번호 채번 가능 기한<button type="button" onclick="gogo5()"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h4>
            <div class="cont_parbx">
               <ul class="list">
                  <li>정기검정 : 원서접수 마감당일 18:00시까지</li>
                  <li>상시검정 : 원서접수 마감전일 18:00시 까지</li>
               </ul>
            </div>

            <h4>인터넷 접수 취소/환불 기간<button type="button" onclick="gogo6()"><img src="<%=request.getContextPath()%>/resources/client/images/speaker.png" width="30" height="30"></button></h4>
            <div class="cont_parbx mb20">
               <h5>국가기술자격검정</h5>
               <ul class="list">
                  <li>100% 전액환불 : 원서접수기간(마감일 23:59:59까지)</li>
                  <li>50% 부분환불 : 접수마감 다음날 ~ 회별시험시작일 5일전 까지(필/실기) </li>
               </ul>
               <h5>자격검정 원서접수 취소시 환불 적용기간 안내</h5>
               <ul class="list mb10">
                  <li>필기/실기 시험 : 회별시험시작일로부터 5일전까지</li>
               </ul>

               <div class="tbl_type3 mb0 cw700">
                  <table class="per_doc" cellpadding="0" cellspacing="0" summary="자격검정 원서접수 취소시 환불 적용기간 안내로, 적용기간, 환불적용률 정보 제공">
                     <caption>자격검정 원서접수 취소시 환불 적용기간 안내</caption>
                     <colgroup>
                        <col width="16%">
                        <col width="20%">
                        <col width="20%">
                        <col width="4%">
                        <col width="4%">
                        <col width="4%">
                        <col width="4%">
                        <col width="28%">
                     </colgroup>
                     <tbody>
                        <tr>
                           <th scope="row" rowspan="2">적용기간</th>
                           <th scope="row">접수기간 중</th>
                           <th scope="row">접수기간 후</th>
                           <th scope="row" colspan="4">회별시험시작 4일전</th>
                           <th scope="row" class="fc_r">회별시험시작일</th>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>4일</td>
                           <td>3일</td>
                           <td>2일</td>
                           <td>1일</td>
                           <td>필기 / 실기 : 회별 시험시작일</td>
                        </tr>
                        <tr>
                           <th scope="row">환불적용률</th>
                           <td>접수취소시 환불:100%</td>
                           <td>접수취소시 환불:50%</td>
                           <td colspan="5" class="fc_r"><strong>환불취소 불가</strong></td>
                        </tr>
                     </tbody>
                  </table>
               </div> 
               <div class="mTable">
                  <div class="tbl_normal mb0 tdCenter">
                     <table summary="환불 적용기간에 따른 환불적용률 정보 제공">
                        <caption>환불 적용기간 안내</caption>
                        <colgroup>
                           <col width="20%">
                           <col width="30%">
                           <col width="50%">
                        </colgroup>
                        <thead>
                           <tr>
                              <th scope="row" colspan="2">적용기간</th>
                              <th scope="row">환불적용률</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <th scope="row" colspan="2">접수기간 중</th>
                              <td>접수취소시 환불:100%</td>
                           </tr>
                           <tr>
                              <th scope="row" colspan="2"> 접수기간 후</th>
                              <td>접수취소시 환불:50%</td>
                           </tr>
                           <tr>
                              <th scope="row" rowspan="4">회별시험시작 4일전</th>
                              <th scope="row">4일</th>
                              <td rowspan="5" class="fc_r"><strong>환불취소 불가</strong></td>
                           </tr>
                           <tr>
                              <th scope="row">3일</th>
                           </tr>
                           <tr>
                              <th scope="row">2일</th>
                           </tr>
                           <tr>
                              <th scope="row">1일</th>
                           </tr>
                           <tr>
                              <th scope="row" class="fc_r">당해시험일</th>
                              <th scope="row">필기:시험당일 / 실기:회별시험시작일</th>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</article>