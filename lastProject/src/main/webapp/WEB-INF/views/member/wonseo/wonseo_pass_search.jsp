<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script>
$(function(){
	$('#passExam').on('click',function(){
		var exkind_code = $('#comp').val();
				console.log("들어오냐");
		$.ajax({
			url : 'passExam',
			type : 'post',
			data : {'exkind_code':exkind_code},
			success:function(res){
				console.log("여기는");
				console.log(res);
				
				var code ="<div class='tbl_type1' style='height:190px; overflow-y:scroll' tabindex='0'><table><colgroup><col width='10%'><col width='70%'><col width='20%'></colgroup>";                                                                                                                                  							
					code +="<thead><tr><th scope='col'>번호</th><th scope='col'>종목명</th><th scope='col'>종목코드</th></tr></thead><tbody>";                                                                                                                  								
		    	    code+="<tr>";
		    	    code+="<td>"+(1)+"</td>";
		    	    code+="<td><a href='#' onclick='go_happ();'>정보처리기사</a></td>";
		    	    code+="<td>comp3</td></tr>";
		    	    code+="<tr>";
		    	    code+="<td>"+(2)+"</td>";
		    	    code+="<td><a href='#' onclick='go_hap();'>정보처리산업기사</a></td>";
		    	    code+="<td>comp2</td></tr>";
				    code+="</tbody></table></div>";
				   
				     $('.aaaa').html(code);
				}
			})
		})
	})
</script>
<script>
function go_happ() {
	var popUrl = "<%=request.getContextPath()%>/member/hap?";
	var win;
	win = window.open(popUrl, "", 'scrollbars=no,width=600,height=300,status=no,resizable=no');
	win.opener.self;
}
function go_hap() {
	var popUrl = "<%=request.getContextPath()%>/member/hap2?";
	var win;
	win = window.open(popUrl, "", 'scrollbars=no,width=600,height=300,status=no,resizable=no');
	win.opener.self;
}
</script>
<style>
* { box-sizing: content-box;}

.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
	#hidden{visibility: hidden;}
</style>

<article>
	
					
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>합격자발표</li>
					<li>합격자 발표조회</li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">합격자 발표조회</h3>
				<!-- //컨텐츠 타이틀 -->
				<!-- 컨텐츠 내용 -->
				<div class="tbl_tmp">

					<div class="tabLayout webCont" id="subTab">
						<ul>
							<li class="on"><a href="#" name="contTab" id="techQual" title="국가기술자격"><span>국가기술자격</span></a></li>
						</ul>
					</div>

					<div id="listTab"></div>
					<input type="hidden" name="chkchk" value="T">

					<div id="ancTrmNew" style=""></div>
					<div id="ancTrmNew2" style="display: none">

						<span style="display: none;"> <input name="implsysRdo2"
							id="implsysRdo2" type="radio" onclick="selectExamList('6');">
							<label for="implsysRdo2">상시시험</label>
						</span>
						<div class="metier_wrap mb20">
							<div class="group_form1">
								<span> <input type="radio" id="sel_11" value="q"
									name="implsysRdo2"> <label for="sel_11"><strong>정기시험</strong></label>
								</span> <span> <input type="radio" id="sel_12" value="s"
									name="implsysRdo2"> <label for="sel_12"><strong>전문자격</strong></label>
								</span>
								<button class="btn btncolor1" onclick="schedule()">
									<span>조회</span>
								</button>
							</div>
						</div>
					</div>

					<!-- 정기시험 발표일정  -->
					<div class="tbl_layout nonBg" id="ancSchNew" style="display: none;">
						<table class="td_layout">
							<colgroup>
								<col width="*">
								<col width="62%">
							</colgroup>
							<tbody>
								<tr>
									<td>시험명</td>
									<td>일정</td>
								</tr>
							</tbody>
						</table>
						<div class="tbl_type1" style="height: 349px; overflow-y: auto"
							tabindex="0">
							<table summary="합격(예정자)명단 목록으로, 시험명, 일정 정보 제공">
								<caption>정기시험 합격자발표일정</caption>
								<colgroup>
									<col width="*">
									<col width="50%">
								</colgroup>
								<thead class="blind">
									<tr>
										<th scope="col">시험명</th>
										<th scope="col">일정</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td class="left">2017년 정기 기능장 61회 실기 (합격자발표일 2017.05.26)</td>
										<td>5월 26일 (금) 오전 09:00<span class="mBlock">~ 7월
												25일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기사 1회 실기 (합격자발표일 2017.05.26)</td>
										<td>5월 26일 (금) 오전 09:00<span class="mBlock">~ 7월
												25일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 2회 실기 (합격자발표일 2017.06.09)</td>
										<td>6월 9일 (금) 오전 09:00<span class="mBlock">~ 8월 8일
												(화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기술사 112회 필기 합격자</td>
										<td>6월 15일 (목) 오전 09:00<span class="mBlock">~ 8월
												14일 (월) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 2회 실기 (합격자발표일 2017.06.23)</td>
										<td>6월 23일 (금) 오전 09:00<span class="mBlock">~ 8월
												22일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 산업별 맞춤형 고교등 필기면제검정 실기
											(합격자발표일 2017.06.23)</td>
										<td>6월 23일 (금) 오전 09:00<span class="mBlock">~ 8월
												22일 (화) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능사 산업별 맞춤형 고교등 필기면제검정 실기
											(합격자발표일 2017.07.07)</td>
										<td>7월 7일 (금) 오전 09:00<span class="mBlock">~ 9월 6일
												(수) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기사 2회 실기 (합격자발표일 2017.07.14)</td>
										<td>7월 14일 (금) 오전 09:00<span class="mBlock">~ 9월
												13일 (수) 오후 11:59</span></td>
									</tr>

									<tr>
										<td class="left">2017년 정기 기능장 62회 필기 합격자</td>
										<td>7월 20일 (목) 오전 09:00<span class="mBlock">~ 9월
												19일 (화) 오후 11:59</span></td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
					<!-- 국가전문자격 발표일정  -->

					<!-- 정기시험 발표리스트  -->
					<div id="ancLstNew" style="">

						<div class="metier_wrap mb20">
							<div class="inwrap">
								<label for="selExam"><strong>정기시험</strong></label>
								<div>
									<select name="selExam" id="selExam" class="w350"
										title="응시한 정기시험 선택">
										<option value="">응시하신 시험을 선택해주세요.</option>

										<option value="comp" implsyscd="1"
											schditemccd="35" id="comp">2017년 정보통신 정기시험 1회 실기</option>
										<option value="" implsyscd="1"
											schditemccd="35">2017년 전자 정기시험 1회 실기</option>
										<option value="" implsyscd="1"
											schditemccd="35">2017년 토목 정기시험 1회 실기</option>
										<option value="" implsyscd="1"
											schditemccd="35">2017년 건설 정기시험 1회 실기</option>
									</select>
								</div>
								<span class="mBtn">
									<input type="submit" class="btn btn-primary btn-xs"
									  id="passExam" value="전체합격자 보기">
									<button type="button" class="btn3_type3 webCont"
										onclick="NetFunnel_goUrl ({},'myp003.do?id=myp00301&amp;gSite=Q&amp;gId=');">
										<span>개인별 득점조회</span>
									</button>
								</span>
							</div>

						</div>
						<div id="qHomePList">
								<div class="aaaa">
								</div>
						</div>
					</div>
						<div id="qSPassList"></div>
					</div>
				</div>
			</div>
		</div>
</article>
