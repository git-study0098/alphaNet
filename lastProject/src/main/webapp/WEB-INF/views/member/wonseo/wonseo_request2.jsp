<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<!-- 좌측 메뉴바 끝-->
			<jsp:include page="wonseoLnb.jsp"/>
			<div id="lnb2"></div>
		</div>

		<div id="content">
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
					원서접수 신청<span id="subjectTitle" class="sel_subject"></span>
				</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step" id="rcvStep"> <ul class="list01">  	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_01.gif" alt=""><span>자격선택</span><span class="blind">현재단계 자격선택</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_09.gif" alt=""><span>종목선택</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_03.gif" alt=""><span>응시유형</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_04.gif" alt=""><span>추가입력</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_05.gif" alt=""><span>장소선택</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_06.gif" alt=""><span>결제하기</span></li> 	<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_07.gif" alt=""><span>접수완료</span></li> </ul></div>

				<div class="tbl_type2" id="recptPannel">
					<form name="schfrm" onsubmit="return false">
						<input type="hidden" name="planId" value="PL2017456004"> <input
							type="hidden" name="seqNo" value="1"> <input
							type="hidden" name="implYY" value=""> <input
							type="hidden" name="implSeq" value="113"> <input
							type="hidden" name="jmCd" value=""> <input type="hidden"
							name="jmNm" value=""> <input type="hidden" name="sameYN"
							value=""> <input type="hidden" name="startDt"
							value="20170707"> <input type="hidden" name="qualGb"
							value="T"> <input type="hidden" name="page" value="1">
						<input type="hidden" name="implCd" value="1"> <input
							type="hidden" name="planNm" value="2017년 정기 기술사 113회 필기">
						<input type="hidden" name="selFld" value=""> <input
							type="hidden" name="chkFlag" value=""> <input
							type="hidden" name="suhmTrgt" value="A"> <input
							type="hidden" name="selSubject" value="">

						<table summary="응시시험 및 종목 선택으로, 응시시험명, 응시종목명, 응시관련 정보 제공">
							<caption>응시시험 및 종목 선택</caption>
							<colgroup>
								<col width="20%">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">응시시험명</th>
									<td>2017년 정기 기술사 113회 필기</td>
								</tr>
								<tr>
									<th scope="row"><label for="sel_01">응시종목명</label></th>
									<td>
										<div class="select_subject">
											<span class="left"> <input type="text"
												title="응시종목명 입력" name="schStr" style="width: 150px" value=""
												onkeydown="searchEnter(event.keyCode, this.form);">
												<button type="button" class="btn3_icon search"
													onclick="searchJm(this.form);">
													<span class="blind">검색</span>
												</button>
											</span>
											<div id="JmList">

												<select id="sel_01" name="JongMook" style="width: 196px"
													title="응시종목 선택"
													onchange="getSelField(this.value,this.form,'43');">
													<option value="">종목을 선택하세요.</option>
													<option value="0">정보처리기사</option>
													<option value="1">정보처리 산업기사</option>
													<option value="2">건설안전기술사</option>
													<option value="3">건축구조기술사</option>
													<option value="4">건축기계설비기술사</option>
													<option value="5">건축시공기술사</option>
													<option value="6">건축전기설비기술사</option>
													<option value="7">공조냉동기계기술사</option>
													<option value="8">교통기술사</option>
													<option value="9">농화학기술사</option>
													<option value="10">대기관리기술사</option>
													<option value="11">도로및공항기술사</option>
													<option value="12">도시계획기술사</option>
													<option value="13">발송배전기술사</option>
													<option value="14">산림기술사</option>
													<option value="15">산업위생관리기술사</option>
													<option value="16">상하수도기술사</option>
													<option value="17">소방기술사</option>
													<option value="18">소음진동기술사</option>
													<option value="19">수자원개발기술사</option>
													<option value="20">수질관리기술사</option>
													<option value="21">식품기술사</option>
													<option value="22">용접기술사</option>
													<option value="23">자연환경관리기술사</option>
													<option value="24">전기안전기술사</option>
													<option value="25">전기응용기술사</option>
													<option value="26">전기철도기술사</option>
													<option value="27">정보관리기술사</option>
													<option value="28">지적기술사</option>
													<option value="34">컴퓨터시스템응용기술사</option>
												</select> 
												<input type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0752"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="가스기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0080"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="건설기계기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0740"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="건설안전기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0490"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="건축구조기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0501"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="건축기계설비기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0510"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="건축시공기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0502"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="건축전기설비기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0071"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="공조냉동기계기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0951"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="교통기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0950"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="농화학기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0920"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="대기관리기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0420"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="도로및공항기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0650"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="도시계획기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0230"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="발송배전기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0801"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="산림기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0751"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="산업위생관리기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0460"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="상하수도기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0750"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="소방기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0940"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="소음진동기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0451"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="수자원개발기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0930"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="수질관리기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0800"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="식품기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0011"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="용접기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0938"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="자연환경관리기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0730"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="전기안전기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0250"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="전기응용기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0432"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="전기철도기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0601"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="정보관리기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0690"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="지적기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
												<input type="hidden" name="rsSeqNo" value="1"> <input
													type="hidden" name="rsImplYY" value="2017"> <input
													type="hidden" name="rsImplSeq" value="113"> <input
													type="hidden" name="rsJmCd" value="0622"> <input
													type="hidden" name="rsSameYN" value="N"> <input
													type="hidden" name="rsQualGb" value="T"> <input
													type="hidden" name="rsJmNm" value="컴퓨터시스템응용기술사"> <input
													type="hidden" name="rsSuhmTrgt" value="A"> <input
													type="hidden" name="rsPlanId" value="PL2017456004">
											</div>
										</div>
									</td>
								</tr>
								<tr id="selFldRow" style="display: none;">
									<td colspan="2">
										<div id="viewPanel"></div>
									</td>
								</tr>

								<tr>
									<th scope="row"><label for="cellphone_num">핸드폰</label></th>
									<td class="cellph_num"><input class="fc_6" type="text"
										name="mPhone01" maxlength="3" value="010"
										onfocus="this.select()" style="ime-mode: disabled"
										readonly="readonly" title="핸드폰 번호 앞자리 입력"> - <input
										class="fc_6" type="text" name="mPhone02" maxlength="4"
										value="8000" onfocus="this.select()"
										style="ime-mode: disabled" readonly="readonly"
										title="핸드폰 번호 가운데자리 입력"> - <input class="fc_6"
										type="text" name="mPhone03" maxlength="4" value="4098"
										onfocus="this.select()" style="ime-mode: disabled"
										readonly="readonly" title="핸드폰 번호 뒷자리 입력"> <a
										href="/myp001.do?id=myp00101&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle="
										class="btn4"><span>회원정보수정바로가기</span></a></td>
								</tr>
								<tr>
									<td colspan="2" style="padding: 0; border-bottom: 0">
										<div class="infoBox mt20 mb0">
											<div>
												<h5>참고사항</h5>
												<ul class="list">
													<li>핸드폰 문자메시지를 통하여 수험정보를 제공받고자 하시는 분은 개인정보수정의 알림서비스를
														"예"로 설정하시기 바랍니다.</li>
													<li>수험원서 접수 후에는 시험일정 및 시행지역, 변경이 불가하므로 접수시 시험일정 및 시험장소
														확인 등에 착오 없으시기 바랍니다. (변경 필요 시에는 접수 기한내 취소후 재접수 하시기 바랍니다.)</li>
												</ul>
											</div>
											<span></span>
										</div>
									</td>
								</tr>

							</tbody>
						</table>
					</form>
				</div>

				<div class="list_attention01 pt20">
					<div id="dataList"></div>
				</div>

				<div id="divInfo" style="display: none;">
					<ul class="slide_menu mt40">
						<li>
							<h4 class="slide_title">
								<a href="#">접수가능한 사진 범위 등 변경사항<span class="slide_close"
									style="display: inline;">내용닫기</span><span class="slide_open"
									style="display: none;">내용열기</span></a>
							</h4>
							<div class="slide_wrap">
								<!-- slide inner content  -->
								<div class="tbl_type4 licnse mb20">
									<table summary="원서접수시 유의사항 안내로, 구분, 내용 정보제공">
										<caption>원서접수시 유의사항</caption>
										<colgroup>
											<col width="20%">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">구분</th>
												<th scope="col">내용</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">접수가능사진</th>
												<td><p class="list">6개월 이내 촬영한 (3×4cm) 칼라사진, 상반신 	정면, 탈모, 무 배경</p></td>
											</tr>
											<tr>
												<th scope="row">접수 불가능사진</th>
												<td>
													<ul class="list">
														<li>스냅 사진, 선글라스, 스티커 사진, 측면 사진, 모자착용, 혼란한 배경사진, 기타 신분확인이 불가한 사진
															<p class="impt">※ Q-net 사진등록, 원서접수 사진 등록 시 등 상기에 명시된 접수 불가 사진은 컴퓨터 자동인식 프로그램에 의해서 접수가 거부될 수 있습니다</p>
														</li>
													</ul>
												</td>
											</tr>
											<tr>
												<th scope="row">본인사진이<br>아닐 경우 조치
												</th>
												<td>
													<ul class="list">
														<li>연예인 사진, 캐릭터 사진 등 본인사진이 아니고, 신분증 미지참시 시험응시 불가(퇴실)조치
															<p class="line">- 본인사진이 아니고 신분증 지참자는 사진 변경등록 각서 징구후 시험 응시</p>
														</li>
													</ul>
												</td>
											</tr>
											<tr>
												<th scope="row">수험자 조치사항</th>
												<td><p class="list">필기시험 사진상이자는 신분확인시까지 실기원서접수가 불가하므로 원서접수 지부(사)로 본인이 신분증, 사진을 지참 후 확인 받으시기 바랍니다.</p></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- // tbl_type3 -->
								<ul class="list">
									<li>필기시험 사진상이자는 신분확인 시까지 실기원서접수가 불가합니다. 원서접수 지부(사)로 본인이 신분증 및 규격사진(화일)을 지참 후 확인 받으시기 바랍니다</li>
									<li>장애인 수험자는 원서접수 시 장애유형 및 편의요청사항을 선택하여 접수하고, 장애인 증빙서류를 제출해야 편의제공을 받으실 수 있습니다.</li>
								</ul>
								<p class="mt10">
									<a href="#" onclick="infoPopup()" class="btn4"><span>장애유형별 편의제공안내</span></a>
								</p>
								<!-- // slide inner content  -->
							</div>
						</li>
						<li>
							<h4 class="slide_title">
								<a href="#">신분증 인정범위<span class="slide_close"
									style="display: inline;">내용닫기</span><span class="slide_open"
									style="display: none;">내용열기</span></a>
							</h4>
							<div class="slide_wrap">
								<!-- slide inner content  -->
								<p>국가기술자격시험 신분증 인정범위가 아래와 같이 변경됨을 알려 드리니 수험자께서는 반드시 규정된 신분증을 지참하여 시험에 응시하시기 바랍니다.</p>
								<div class="tbl_type4 licnse mb20">
									<table summary="신분증 인정범위 안내로, 구분, 신분증 인정범위, 대체 가능 신분증 정보제공">
										<caption>신분증 인정범위 안내</caption>
										<colgroup>
											<col width="20%">
											<col width="*">
											<col width="40%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">구분</th>
												<th scope="col">신분증 인정범위</th>
												<th scope="col">대체 기능 신분증</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">일반인 / 대학생</th>
												<td>주민등록증, 운전면허증, 여권, 공무원증, 국가기술자격증, 복지카드, 국가유공자증 등</td>
												<td>해당 주민센터에서 발급한 기간 만료 전의 "주민등록 발급 신청서"</td>
											</tr>
											<tr>
												<th scope="row">중.고등학생</th>
												<td>주민등록증, 학생증, 여권, 국가기술자격증, 청소년증, 복지카드, 국가유공자증 등</td>
												<td><span>학교발행 "신분확인증명서"</span>
													<p>
														<a href="javascript:fileDown('secondary');"
															class="btn3_icon download" title="학교발행 신분확인증명서 다운로드">신분확인증명서
															다운로드</a>
													</p></td>
											</tr>
											<tr>
												<th scope="row">초등학생</th>
												<td>여권, 건강보험증, 청소년증, 주민등록 등/초본, 국가기술자격증, 복지카드, 국가유공자증 등</td>
												<td><span>학교발행 "신분확인증명서"</span>
													<p>
														<a href="javascript:fileDown('primary');"
															class="btn3_icon download" title="학교발행 신분확인증명서 다운로드">신분확인증명서
															다운로드</a>
													</p></td>
											</tr>
											<tr>
												<th scope="row">군 인</th>
												<td>장교 부사관 신분증, 군무원증, 사병(부대장 발행 신분확인 증명서</td>
												<td><span>부대장발금 "신분확인증명서" </span>
													<p>
														<a href="javascript:fileDown('army');"
															class="btn3_icon download" title="부대장발금 신분확인증명서 다운로드">신분확인증명서
															다운로드</a>
													</p></td>
											</tr>
											<tr>
												<th scope="row">외국인</th>
												<td>외국인 등록증, 여권, 복지카드, 국가유공자증 등</td>
												<td>없음</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- // tbl_type3 -->
								<ul class="list impt">
									<li>※ 위에 명시되지 않은 신분증 및 유효기간이 지난 신분증은 인정하지 않습니다.</li>
									<li>※ <span class="fc_r">인정하지 않는 신분증의 예</span> : 학생증(대학원,
										대학), 사원증, 각종 사진이 부착된 신용카드, 유효기간이 만료된 여권 및 복지카드, 기타 민간자격 자격증 등
									</li>
									<li>※ 중.고등학교 재학중인 학생은 학생증에 반드시 사진.이름.주민등록번호(최소 생년월일 기재) 등이
										기재되어 있어야 신분증으로 인정됩니다.</li>
								</ul>
								<!-- // slide inner content  -->
							</div>
						</li>
					</ul>
				</div>

				<div class="btn_center">
					<a href="#" name="Button2235" class="btn2 btncolor1" onclick="location.href='<%=request.getContextPath()%>/member/wonseoReq1'"><span>이전</span></a> 
					<!-- 경로 설정 -->
					<a href="#"	name="Button2235" class="btn2 btncolor1" onclick="location.href='<%=request.getContextPath()%>/member/wonseoReq3'"><span>다음</span></a>
				</div>
			</div>
		</div>
	</div>
</article>