<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.last.common.vo.PlaceVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	List<PlaceVO> daejeonList = (ArrayList<PlaceVO>)request.getAttribute("daejeonList");
	List<PlaceVO> seoulList = (ArrayList<PlaceVO>)request.getAttribute("seoulList");
	List<PlaceVO> busanList = (ArrayList<PlaceVO>)request.getAttribute("busanList");
	List<PlaceVO> gangwonList = (ArrayList<PlaceVO>)request.getAttribute("gangwonList");
	List<PlaceVO> gwangjuList = (ArrayList<PlaceVO>)request.getAttribute("gwangjuList");
	List<PlaceVO> ulsanList = (ArrayList<PlaceVO>)request.getAttribute("ulsanList");
	List<PlaceVO> incheonList = (ArrayList<PlaceVO>)request.getAttribute("incheonList");
	List<PlaceVO> jejuList = (ArrayList<PlaceVO>)request.getAttribute("jejuList");
	List<PlaceVO> gyunggiList = (ArrayList<PlaceVO>)request.getAttribute("gyunggiList");
	List<PlaceVO> placepList = (ArrayList<PlaceVO>)request.getAttribute("placepList");
	
	List<String> list = null;
	HashSet<String> set = null;
	Iterator<String> it = null;
%>
<script>

		function checkeSiGunGu(value0){
			if (schfrm.sel_zone.value == '대전광역시') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
					for(int i=0; i<daejeonList.size(); i++){
						set.add(daejeonList.get(i).getPlace_add());
					}
					int j=0;
					it = set.iterator();
					while(it.hasNext()){
						list.add(j, it.next());
						j++;
					}
					for(int i=0; i<list.size(); i++){
				%>
				$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
				<%}%>
				
			}else if (schfrm.sel_zone.value == '서울특별시') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<seoulList.size(); i++){
					if(seoulList.get(i).getPlace_add()!=null){
						set.add(seoulList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}else if (schfrm.sel_zone.value == '울산광역시') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<ulsanList.size(); i++){
					if(ulsanList.get(i).getPlace_add()!=null){
						set.add(ulsanList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}else if (schfrm.sel_zone.value == '부산광역시') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<busanList.size(); i++){
					if(busanList.get(i).getPlace_add()!=null){
						set.add(busanList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}else if (schfrm.sel_zone.value == '경기도') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<gyunggiList.size(); i++){
					if(gyunggiList.get(i).getPlace_add()!=null){
						set.add(gyunggiList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}else if (schfrm.sel_zone.value == '강원도') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<gangwonList.size(); i++){
					if(gangwonList.get(i).getPlace_add()!=null){
						set.add(gangwonList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}else if (schfrm.sel_zone.value == '제주특별자치도') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<jejuList.size(); i++){
					if(jejuList.get(i).getPlace_add()!=null){
						set.add(jejuList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}else if (schfrm.sel_zone.value == '인천광역시') {
				$('.list').remove();
				<%
					set = new HashSet<String>();
					list = new ArrayList<String>();
				for(int i=0; i<incheonList.size(); i++){
					if(incheonList.get(i).getPlace_add()!=null){
						set.add(incheonList.get(i).getPlace_add());
					}
				}
				j=0;
					it = set.iterator();
				while(it.hasNext()){
					list.add(j, it.next());
					j++;
				}
				for(int i=0; i<list.size(); i++){
			%>
			$('<option/>',{"class":"list","value":"<%=list.get(i)%>","text":"<%=list.get(i)%>"}).appendTo('select#sel_cities');
			<%}%>
			}
			vall = value0;
		}
		
		
</script>
<script>
// $(function(){
	
// 	$("#sel_zone option").attr("selected","selected");
// 	$("#sel_cities option").attr("selected","selected");
// })



function checkDetail(value2){
	value3 = value2;
}

function go_wonseo(){
	em_info_code = document.getElementById('em_info_code').value;
	location.href="<%=request.getContextPath()%>/member/wonseoReq4_1?si="+vall+"&gu="+value3+"&em_info_code="+em_info_code+"&exam=${exam}&exam2=${exam2}";
}

	var place= "";
	$(function(){
		$('input:radio[name="radio1"]').click(function(){
			place=$('input:radio[name="radio1"]:checked').val();
		});
	})
	function payment(){
		if(place==""){
			alert('장소를 선택해주세요.');
		}else{
			location.href='<%=request.getContextPath()%>/member/wonseoReq5?em_info_code=${em_info_code}&place_nm='+place;
		}
	}
</script>

<script>
function go_map(){	
	var place_nm = document.getElementById("place_nm").value;
	alert(place_nm);
	var pop = window.open("<%=request.getContextPath()%>/member/map?place_nm="+place_nm,"pop3","width=570,height=420"); 
	console.log("바로들어가냐");
	document.getElementById('mapForm').submit();
}


</script>


<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
		<jsp:include page="../../lnb/wonseoLnb.jsp"/>
		<!-- 좌측 메뉴바 끝-->
		<div id="lnb2"></div>
		</div>



		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 신청</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				
				<h3 class="tit_content">
					원서접수 신청<span class="sel_subject">(응시종목:${exam }(${exam2}))</span>
				</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep">
					<ul class="list01">
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_01.gif" alt=""><span>자격선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_09.gif" alt=""><span>종목선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_03.gif" alt=""><span>응시유형</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_04.gif" alt=""><span>추가입력</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_05.gif" alt=""><span>장소선택</span><span
							class="blind">현재단계 장소선택</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_06.gif" alt=""><span>결제하기</span></li>
						<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_07.gif" alt=""><span>접수완료</span></li>
					</ul>
				</div>


				<form id="schfrm" name="schfrm" method="post">
				<input type="hidden" value="${exam}" id="exam">
				<input type="hidden" value="${exam2}" id="exam2">
				<input type="hidden" value="${em_info_code}" id="em_info_code">
					<!-- 지역 선택 및 조회 폼 -->
					<div class="place_selct mb40">

						<span class="zone"> <!--  jhh--> <label for="sel_zone">지역</label>

							<select name="sido" id="sel_zone"
							onChange="checkeSiGunGu(this.value);" title="지역 선택">
								<option value="">-선택-</option>
								<option class="siGunGuSelect" value="대전광역시">대전광역시</option>
								<option class="siGunGuSelect" value="강원도">강원도</option>
								<option class="siGunGuSelect" value="경기도">경기도</option>
								<option class="siGunGuSelect" value="광주광역시">광주광역시</option>
								<option class="siGunGuSelect" value="대구광역시">대구광역시</option>
								<option class="siGunGuSelect" value="부산광역시">부산광역시</option>
								<option class="siGunGuSelect" value="서울특별시">서울특별시</option>
								<option class="siGunGuSelect" value="울산광역시">울산광역시</option>
								<option class="siGunGuSelect" value="인천광역시">인천광역시</option>
								<option class="siGunGuSelect" value="제주특별자치도">제주특별자치도</option>
								<option class="siGunGuSelect" value="Y">전체</option>

						</select>
						</span> <span class="cities"> <label for="sel_cities">시/군/구
						</label> <span id="viewSiGunGu"> <select name="sigungu"
								id="sel_cities" title="시/구/군 선택" onChange="checkDetail(this.value)">
								
								<option>-선택-</option>
								<option value="">전체</option>
								
							</select>
						</span>
						</span> <span>조 회
							<button type="button" name="schBtn" class="btn3_icon search"
								onclick="go_wonseo();">
								<span class="blind">조회</span>
							</button>
							<input type="hidden" value="" id="vall">
							<input type="hidden" value="" id="value3">
						</span>
					</div>
				</form>

				<form name="myfrm" method="post" action="return false;">
					<input type="hidden" name="planId" value="PL2017456004"> <input
						type="hidden" name="seqNo" value="1"> <input type="hidden"
						name="selFld" value="00"> <input type="hidden" name="jmCd"
						value="0601"> <input type="hidden" name="sameRecptYN"
						value="N"> <input type="hidden" name="sameImplYN"
						value="N"> <input type="hidden" name="recptNo"
						value="R10048091258"> <input type="hidden" name="suNo"
						value="T4560149"> <input type="hidden" name="recptTyp"
						value="01"> <input type="hidden" name="recptDtl" value="1">
					<input type="hidden" name="jmNm" value="정보관리기술사"> <input
						type="hidden" name="qualGb" value="T"> <input
						type="hidden" name="ruleItemVal" value=""> <input
						type="hidden" name="jmDtlVal" value=""> <input
						type="hidden" name="srSeqNo" id="srSeqNo" value=""> <input
						type="hidden" name="examLangCcd" value="">

					<!-- 뒤로가기 처리를 위한 추가 파라메터 BGN -->
					<input type="hidden" name="dsdrGb" value=""> <input
						type="hidden" name="dsdrReq" value="00"> <input
						type="hidden" name="dsdrGbNm" value=""> <input
						type="hidden" name="dsdrReqNm" value="없음"> <input
						type="hidden" name="emqualCd" value="T127">
					<!-- 뒤로가기 처리를 위한 추가 파라메터 END -->

					<input type="hidden" name="areaCnt" value="">


					<div class="msg_info noData" id="msgInfo">
						<p>“시험장소는 행정구역기준으로 안내됩니다.”</p>
					</div>

					<div id="addInfo"></div>


					<div id="addInfoArea"></div>
				</form>
				
				<div class="place_result" id="viewList">
					<div class="tbl_type4">
						<table style="table-layout: fixed;"
							summary="지역, 시험일자, 부, 입실시간, 시험장소, 접수마감, 정원, 현재접수 가능인원에 대한 정보 제공">
							<caption>현황 조회 목록</caption>
							<colgroup>
								<col width="12%">
								<col width="12%">
								<col width="5%">
								<col width="7%">
								<col width="31%">
								<col width="12%">
								<col width="6%">
								<col width="6%">
								<col width="9%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">지역</th>
									<th scope="col">시험일자</th>
									<th scope="col">부</th>
									<th scope="col">입실<br>시간
									</th>
									<th scope="col">시험장소</th>
									<th scope="col">접수마감<br>일자
									</th>
									<th scope="col">정원</th>
									<th scope="col" colspan="2">현재접수<br>가능인원
									</th>
								</tr>
							</thead>
							<tbody>
				
								<!-- 반복문시작 -->
								<c:choose>
								<c:when test="${!empty examPlace}">
								<c:forEach items="${examPlace}" var="examPlace" varStatus="current">
								<tr>
									<td>${examPlace.place_p}</td>
									<td>${examPlace.numg_stare_date}</td>
									<td>${current.count}</td>
									<td>08:30</td>
<%-- 						<form name="mapForm" id="mapForm" action="<%=request.getContextPath()%>/member/map" target="theWindow"> --%>
									<td>
										<p class="sch_adr" style="display:;">
											<span class="name" title="${examPlace.place_add}">${examPlace.place_nm}</span>
											<input type="hidden" name="place_nm" id="place_nm" value="${examPlace.place_nm}">
											<button title="새 창" type="button" class="btn3_type3" onclick="go_map()">
												<span>약도보기</span>
											</button>
											</p>
									</td>
<!-- 						</form> -->
									<td>${examPlace.numg_app_receipt_end}</td>
									<td>${examPlace.place_pp}</td>
									<td>${examPlace.place_ppp}</td>
									<td>


										<input type="radio" class="radio1" name="radio1" value="${examPlace.place_nm}"
											onclick="chkIsSameSectExam('','1','1','0080','00','1','1','1','13','N','대전광역시','4516','동아마이스터고등학교(교내주차불가)','2017-08-12','08:30','1','1');"/>
									</td>
								</tr>
							</c:forEach>
							</c:when>
							<c:otherwise>
							</c:otherwise>
							</c:choose>
							</tbody>
						</table>
					</div>

				</div>
				<div id="tblGoNext" class="btn_center">

					<button name="btnBack" id="btnBack" type="button"
						class="btn2 btncolor1" onclick="location.href=history.go(-1)">
						<span>이전</span>
					</button>



					<button name="btnGoNext" id="btnGoNext" type="button"
						class="btn2 btncolor1" onclick="payment()">
						<span>접수하기</span>
					</button>
				</div>

				<form name="backfrm" method="post"
					action="rcv002.do?id=rcv00207&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle="
					style="margin-top: 0; margin-bottom: 0;">
					<input type="hidden" name="recptNo" value="R10048091258"> <input
						type="hidden" name="suNo" value="T4560149"> <input
						type="hidden" name="jmNm" value="정보관리기술사"> <input
						type="hidden" name="qualGb" value="T"> <input
						type="hidden" name="examLangCcd" value="">
				</form>
			</div>
		</div>
		<!--  컨텐츠 끝 -->
		</div>
</article>

