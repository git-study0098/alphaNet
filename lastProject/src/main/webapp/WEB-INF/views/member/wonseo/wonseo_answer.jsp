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
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>합격자발표</li>
					<li><strong>가답안 및 확정답안 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
				<!-- 컨텐츠 내용 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">가답안 / 확정답안 안내</h3>
				<!-- //컨텐츠 타이틀 -->
				<div class="infoBox">
					<div>
						<p class="list">우리공단에서는 수험자의 편의도모를 위하여 국가기술자격 정기검정 필기시험(상시, 수시검정제외)응시자에 대하여 시험종료 후 본인 문제지를 직접 가지고 갈 수 있도록 하고 있으므로 <span class="fc_r">별도로 시험문제지의 인터넷공개는 하지 않습니다.</span></p>
						<p class="txt_left mt5">
							<button type="button" class="btn4" onclick="answer()"><span>가답안 / 확정답안 보기</span></button>
							<button type="button" class="btn4" onclick="comment()"><span>가답안 의견제시</span></button>
						</p>
					</div>
					<span></span>
				</div>
				<h4 class="mt35">시험문제 / 가답안 공개안내</h4>
				<div class="cont_parbx">
					<ul class="list">
						<li>우리공단에서는 수험자의 편의도모를 위하여 국가기술자격 정기검정 필기시험(상시,수시검정 제외)응시자에 대하여 시험종료 후 본인 문제지를 직접 가지고 갈 수 있도록 하고 있으므로 <strong>별도로 시험문제지의 인터넷공개는 하지 않습니다.</strong></li>
						<li>가답안은 <strong>시험종료 당일부터 8일간 인터넷으로 공개합니다.</strong></li>
					</ul>
				</div>
				<h4>국가전문자격시험 안내</h4>
				<div class="cont_parbx">
					<p class="list">2008년도부터 우리공단에 위탁·시행되는 국가전문자격시험은 시험문제 및 답안 공개여부에 대한 자격별 관련 법규정이 다르게 적용되므로 아래의 자격별 공개여부 현황을 참조하여 주시기 바랍니다.
					</p>
					<p class="mt10"><button type="button" class="btn3_icon download" onclick="fileDown('jm_info/anc002_03.hwp','국가전문자격_시험문제_공개여부.hwp');"><span>국가전문자격 시험문제 공개여부 다운로드</span></button></p>
				</div>
				<h4>기사 산업기사(전문사무포함), 기능장 필기 자격시험(실기제외) 가답안 / 확정답안 공개대상, 기간 안내</h4>
				<div class="cont_parbx">
					<div class="tbl_normal mb0">
						<table cellpadding="0" cellspacing="0" summary="기사 산업기사(전문사무포함), 기능장, 기능사 필기 자격시험(실기제외) 가답안 / 확정답안 공개대상, 기간 안내로, 적용기간, 환불적용률 정보 제공">
							<caption>기사 산업기사(전문사무포함), 기능장 필기 자격시험(실기제외) 가답안 / 확정답안 공개대상, 기간 안내</caption>
							<colgroup>
								<col width="16%">
								<col width="10%">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" rowspan="3">가답안</th>
									<td colspan="2">공개대상 : 당회 정기검정에서 시행한 종목별 가답안</td>
								</tr>
								<tr>
									<td rowspan="2">공개기간</td>
									<td>기사(산업기사) : 시험종료 당일 18:00부터 8일간</td>
								</tr>
								<tr>
									<td>기능장 : 시험종료 당일 14:00부터 8일간</td>
								</tr>
								<tr>
									<th scope="row" rowspan="2">확정답안</th>
									<td colspan="2">공개대상 : 당회 정기검정에서 시행한 종목별 가답안</td>
								</tr>
								<tr>
									<td colspan="2">공개기간 : 매회별 정기검정 합격자 발표일(09:00)로부터 7일간</td>
								</tr>
							</tbody>
						</table>
						<p class="fc_r"> ※ 기능사 필기시험은 CBT시험으로 시행됨에 따라 가답안/확정답안 공개 대상이 아님</p>
					</div>
				</div>
				<h4>기타사항</h4>
				<div class="cont_parbx">
					<ul class="list">
						<li>정기검정 외 빈번하게 시행되는 상시검정, 수시검정 등은 공개하지 않습니다.</li>
						<li>공개기간이 지난 답은 볼 수 없습니다.</li>
						<li>공개된 가답안에 관하여 의견이 있는 경우 의견제시방을 이용하시기 바랍니다.(단, 가답안 공개기간내 이용가능) </li>
					</ul>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<iframe name="fDownFrame" title="빈프레임" src="" scrolling="no" frameborder="0" style="display:none"></iframe><!-- //2014.12.11 KJH : 파일다운로드용 빈 프레임 -->
		</div>
	</div>
</article>