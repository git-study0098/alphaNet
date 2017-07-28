<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script type="text/javascript" src="resources/js/member.js"></script>
<style>
   * {   box-sizing: content-box;}
   
   .searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
   .searchType span {color:#666666}
   .searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
   .searchType span:first-child label {margin-left:0}
   .searchType select {width:107px; margin-right:40px}
   .searchType input[type="text"] {background:#f9f9f9}
   .searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
   .searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
   .content > .searchType {padding-top:0}
   .searchType.txt_left > span {zoom:1}
   .searchType.txt_left > span:after {content:''; display:block; clear:both}
   .searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
   .searchType.txt_left > span > select {float:left}
   .searchType.txt_left > span > select.last {width:130px; margin-right:5px}
   
   .pagination1{text-align:center;}
   .pagination1 .page {margin:0 15px}
   .pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
   
</style>


<script>
	$(function(){
		  $("#agreeAll").click(function(){
		        //클릭되었으면
		        if($("#agreeAll").prop("checked")){
		            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
		            $("input[name=chk]").prop("checked",true);
		            //클릭이 안되있으면
		        }else{
		            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
		            $("input[name=chk]").prop("checked",false);
		        }
		    })
	})
	
	
	function nextGo() {
		 if(!$("input[name=chk]").prop("checked")){
			 alert("회원약관에 동의 후 회원가입이 가능합니다.");
		 }else{
			 location.href="signup3";
		 }
	}
</script>



<article>
		<div class="container content " style="width: 980px;">
			<!-- 컨텐츠 타이틀 -->
			<h3 class="tit_content">회원가입</h3>
			<div class="center_area2">
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div class="step">
					<ul class="list03" style="margin-left: 100px;">
						<li><img src="resources/images/약관동의(후).gif" alt=""><span>약관동의</span></li>
						<li><img src="resources/images/본인인증(전).gif" alt=""><span>본인인증</span></li>
						<li><img src="resources/images/신청서작성(전).gif" alt=""><span>신청서작성</span></li>
						<li><img src="resources/images/약관동의(전).gif" alt=""><span>가입완료</span></li>
					
					</ul>
				</div>
				
			<!-- 컨텐프 -->
			<div class="wrap_clause">
						<div class="infoBox mb10">
							<div>
								<input type="checkbox" id="agreeAll" title="필수약관 전체동의함"> <label for="agreeAll" class="fc_b">Q-Net 회원서비스 이용을 위한 필수 약관에 모두 동의합니다.</label>
								</div>
						</div>
						<div class="clause" tabindex="0" style="margin-left: 100px">
							<p>제 1장 총칙</p>
							<ul>
								<li><strong>제 1조 (목적)</strong>
									<ul>
										<li>1.본 약관은 한국산업인력공단(이하 "공단")의 Q-Net(이하 "사이트")에서 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 공단 사이트(q-net.or.kr)의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.</li>
									</ul>
								</li>
								<li><strong>제 2조 (약관의 효력과 변경)</strong>
									<ul>
										<li>1.공단 사이트는 귀하가 본 약관 내용에 동의하는 경우, 공단 사이트의 서비스 제공행위 및 귀하의 서비스 사용행위에 본 약관이 우선적으로 적용됩니다.</li>
										<li>2.공단 사이트는 필요한 경우 본 약관을 관련 법령에 위배되지 않는 범위 내에서 변경할 수 있으며, 변경된 약관은 공단 사이트 내에 공지하며, 이용자의 권리 또는 의무에 관한 중요한 내용의 변경은 최소한 7일 이전에 공지합니다.</li>
										<li>3.회원이 변경된 약관에 동의하지 않는 경우, 사이트 회원등록을 취소 또는 회원탈퇴 (원서접수 후 해당시험일 미경과시 탈퇴불가)할 수 있으며, 7일 이후에도 거부의사 없이 서비스를 계속 사용할 경우 약관 변경 사항에 대한 동의로 간주됩니다.</li>
									</ul>
								</li>
								<li><strong>제 3조 (약관 외 준칙)</strong>
									<ul>
										<li>1.본 약관에 명시되지 않은 사항은 개인정보보호법, 전기통신사업법, 큐넷사이트의 개인정보처리방침 및 기타 관련 법령의 규정에 따르며, 그렇지 않은 경우에는 일반적인 관례에 따릅니다.</li>
									</ul>
								</li>
								<li><strong>제 4조 (용어의 정의)</strong>
									<ul>
										<li>본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</li>
										<li>1.이용(접수)자: 본 약관에 따라 공단 사이트가 제공하는 서비스를 받는 자.</li>
										<li>2.가입: 공단 사이트가 제공하는 회원가입 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용 계약을 완료시키는 행위.</li>
										<li>3.회원: 공단 사이트에 개인정보를 제공하여 회원등록을 한 자로서 공단 사이트가 제공하는 서비스를 이용할 수 있는 자.</li>
										<li>4.  ID: 가입회원의 식별과 서비스 이용을 위해 회원이 선정한 문자와 숫자의 조합</li>
										<li>5.비밀번호: 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자, 특수문자의 조합.</li>
										<li>6.탈퇴: 회원이 회원스스로 이용계약을 종료시키는 행위.</li>
									</ul>
								</li>
							</ul>

							<p>제 2장 서비스 제공 및 이용</p>
							<ul>
								<li><strong>제 5조 (이용계약의 성립)</strong>
									<ul>
										<li>1.이용계약은 신청자가 온라인으로 공단 사이트에서 제공하는 소정의 회원가입신청 양식에서 요구하는 사항 을 기록하여 가입을 완료하는 것으로 성립됩니다.</li>
										<li>2.공단 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.</li>
										<li>  1) 다른 사람의 명의를 사용하여 신청하였을 때</li>
										<li>  2) 회원가입신청서의 내용을 허위로 기재하여 신청하였을 때</li>
										<li>  3) 다른 사람의 공단 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때</li>
										<li>  4) 공단 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우</li>
										<li>  5) 기타 공단 사이트가 정한 이용신청요건이 미비 되었을 때</li>
										<li>  6) 14세 미만의 아동이 법정대리인의 동의를 얻지 아니한 경우</li>
									</ul>
								</li>
								<li><strong>제 6조 (회원정보 사용에 대한 동의)</strong>
									<ul>
										<li>1.회원의 개인정보는 개인정보보호법, 정보통신망이용촉진 및 정보보호등에 관한 법률 및 관련 법률에 의해 보호됩니다.</li>
										<li>2.공단 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.</li>
										<li>  1) 개인정보의 사용: 공단 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 공단 사이트에 제공한 개인정보를 스스로 공개한 경우, 네이버(취득자격 이용 서비스) 개인정보 제3자 제공에 동의한 경우에는 그러하지 않습니다.</li>
										<li>  2) 개인정보의 관리: 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 성명과 주민등록번호를 제외하고 수시로 귀하의 개인정보를 변경할 수 있습니다.</li>
										<li>  3) 개인정보의 보호: 귀하의 개인정보는 오직 귀하와 귀하의 요구에 의해 공단사이트 관리자만이 열람/수정/삭제할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다. 따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료시에는 반드시 로그아웃 해주시기 바랍니다.</li>
										<li>3.회원이 본 약관에 따라 이용신청을 하는 것은, 공단 사이트가 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.</li>
									</ul>
								</li>
								<li><strong>제 7조 (사용자의 정보 보안)</strong>
									<ul>
										<li>1.가입 신청자가 공단 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.</li>
										<li>2.ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 공단 홈페이지(www.hrdkorea.or.kr) 전자민원창구에 신고(등록)하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다.</li>
										<li>3.이용자는 공단 사이트에서 서비스사용 종료시마다 정확히 접속을 종료해야 하며, 정확히 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 공단 사이트는 책임을 부담하지 아니합니다.</li>
									</ul>
								</li>
								<li><strong>제 8조 (서비스의 중지 및 제한)</strong>
									<ul>
										<li>1.공단 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우나 다음 각 호에 해당하는 경우 서비스의 중지 및 사용을 제한할 수 있습니다.</li>
										<li>  1) 서비스용 설비의 보수 또는 공사로 인한 부득이한 경우</li>
										<li>  2) 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 때</li>
										<li>  3) 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때</li>
									</ul>
								</li>
								<li><strong>제 9조 (서비스의 변경 및 해지)</strong>
									<ul>
										<li>1.공단 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지않습니다.</li>
										<li>2.공단 사이트는 서비스 이용과 관련하여 가입자에게 발생한 손해 중 가입자의 고의, 과실에 의한 손해에 대하여 책임을 부담하지 아니합니다.</li>
									</ul>
								</li>
							</ul>

							<p>제 3장 의무 및 책임</p>
							<ul>
								<li><strong>제 10조 (공단 사이트의 의무)</strong>
									<ul>
										<li>1.공단 사이트는 회원의 개인 신상정보를 본인의 승낙없이 타인에게 누설, 배포하지 않습니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.</li>
									</ul>
								</li>
								<li><strong>제 11조 (회원의 의무)</strong>
									<ul>
										<li>1.회원 가입시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</li>
										<li>2.회원은 공단 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.</li>
									</ul>
								</li>
								<li><strong>제 12조 (양도금지)</strong>
									<ul>
										<li>1.회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.</li>
									</ul>
								</li>
								<li><strong>제 13조 (손해배상)</strong>
									<ul>
										<li>1.공단 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 공단 사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.</li>
									</ul>
								</li>
								<li><strong>제 14조 (면책조항)</strong>
									<ul>
										<li>1.공단 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. 공단 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다.</li>
										<li>2.공단 사이트는 회원간 또는 회원과 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.</li>
									</ul>
								</li>
								<li><strong>제 15조 (재판관할)</strong>
									<ul>
										<li>1.공단 사이트와 이용자간에 발생한 서비스 이용에 관한 분쟁에 관한 소송은 한국산업인력공단 주소지 관할 법원으로 합니다.</li>
									</ul>
								</li>
							</ul>

							<p>부 칙</p>
							<ul>
								<li>
									<ul>
										<li>1. (시행일) 본 약관은 2014년 6월2일부터 시행한다.</li>
										<li>2. 2004년 9월10일부터 시행되던 종전의 약관은 본 약관으로 대체됩니다.</li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="agree_chk" style="margin-left: 100px">
							<input type="checkbox" id="consentCb1" title="본인은 Q-Net 서비스 이용약관을 확인하였고 회원 약관에 동의합니다." name="chk"> <label for="consentCb1">본인은 Q-Net 서비스 이용약관을 확인하였고 회원 약관에 동의합니다.</label>
						</div>
						<div class="clause" tabindex="0" style="margin-left: 100px">
							<p>개인정보 수집 및 이용에 대한 안내(필수정보)</p>
							<ul>
								<li><strong>1.개인정보의 수집·이용 목적</strong>
									<ul>
										<li>○ 사이트에서 제공하는 서비스는 다음의 목적을 위해 개인정보를 수집·이용합니다. 수집된 개인정보는 다음 목적 이외의 용도로 이용되지 않습니다.</li>
										<li>  - (기술자격)국가자격시험 접수 및 시행, 자격정보 관리, 확인서 및 자격증 발급, 고객만족도 조사, 민원상담업무 등</li>
										<li>  - (전문자격)국가자격시험 접수 및 시행, 확인서 발급, 고객만족도 조사, 민원상담업무 등</li>
									</ul>
								</li>
								<li><strong>2.수집하려는 개인정보의 항목</strong>
									<ul>
										<li>  - 필수정보 : 아이디, 생년월일, 내/외국인 구분, 성별, 이름, 비밀번호, 비밀번호질문, 비밀번호답변, 이메일, 전화번호(휴대폰번호 또는 유선전화번호), 주소(주민등록거주지주소, 실제거주지주소)</li>
										<li>  - 선택정보 : 영문이름, 장애여부, 이메일 수신여부, 알림서비스</li>
									</ul>
								</li>
								<li><strong>3.개인정보의 보유 및 이용기간</strong>
									<ul>
										<li>○ 개인정보의 보유 및 이용기간은 다음과 같습니다.</li>
										<li>  - (기술자격)원서접수일, 자격취득일로부터 “준영구”</li>
										<li>  - (전문자격)원서접수일로부터 “준영구”</li>
									</ul>
								</li>
								<li><strong>4.근거법령</strong>
									<ul>
										<li>○ 「국가기술자격법」 시행령 제33조의 2항에 따라 다음의 업무수행 시 수집, 이용</li>
										<li>  - 법 제9조에 따른 응시자격의 증명에 관한 사무</li>
										<li>  - 법 제10조에 따른 국가기술자격 검정에 관한 사무</li>
										<li>  - 법 제15조의2에 따른 국가기술자격 취득자에 대한 교육훈련에 관한 사무</li>
										<li>  - 법 제23조에 따른 업무의 위탁에 관한 사무</li>
										<li>  - 제16조 및 제17조에 따른 검정 과목의 면제에 관한 사무</li>
										<li>  - 제21조에 따른 검정의 일부합격 인정에 관한 사무</li>
										<li>  - 제25조에 따른 국가기술자격증의 발급 또는 재설정에 관한 사무</li>
										<li>  - 제26조에 따른 국가기술자격증의 관리 등에 관한 사무</li>
										<li>  - 제32조에 따른 위탁업무 및 재위탁업무의 수행 내용의 통보에 관한 사무</li>
									</ul>
									<ul>
										<li>○「공공기관운영에 관한 법률」제13조2항(고객헌장과 고객만족도조사)에 따라 공공기관은 연1회 이상 고객만족도조사를 의무적으로 실시해야 함</li>
									</ul>
									<ul>
										<li>○「민원사무처리에 관한 법률」제30조(민원의 사무관리)에 따라 처리한 민원에 대해 민원인의 만족여부 및 개선사항 등을 조사해야 함</li>
									</ul>
								</li>
								<li><strong>5. 개인정보 수집에 대한 거부 권리 및 그에 따른 서비스 제한사항</strong>
									<ul>
										<li>○ 이용자는 Q-Net에서 수집하는 개인정보에 대해 동의를 거부할 권리가 있으나 필수항목에 대한 수집, 이용에 대한 동의 거부 시 회원가입과 서비스 이용에 제한을 받을 수 있습니다.</li>
									</ul>
								</li>
								<li><strong>6. 개인정보수집 및 이용자 : 한국산업인력공단, 한국기술자격검정원</strong>
								</li>
							</ul>
						</div>
						<div class="agree_chk" style="margin-left: 100px">
							<input type="checkbox" id="consentCb2" title="본인은 개인정보 수집 및 이용에 대한 안내(필수정보)를 확인하였고 이에 동의합니다." name="chk"> <label for="consentCb2">본인은 개인정보 수집 및 이용에 대한 안내(필수정보)를 확인하였고 이에 동의합니다.</label>
						</div>
					<!-- // 약관서 구분 -->
						<div class="clause" tabindex="0" style="margin-left: 100px">
							<p>개인정보 수집 및 이용에 대한 안내(선택정보)</p>
							<ul>
								<li><strong>공단은 사이트에서 제공하는 국가기술자격, 국가전문자격시험 시행 및 확인서, 자격증 발급 등의 서비스를 제공함에 있어 이용자의 편의를 위해 아래와 같이 선택적 정보를 수집 및 이용하고 있습니다. 다만, 이용목적은 수집목적을 벗어나지 않는 범위에서 추가 서비스제공을 위해 확장될 수 있으며 이 경우에는 미리 회원에게 그 사실을 알려 드립니다.</strong></li>
								<li><strong>1. 개인정보의 수집·이용 목적</strong>
									<ul>
										<li>○ 큐넷에서 제공하는 서비스는 다음의 목적을 위해 개인정보를 수집·이용합니다. 수집된 개인정보는 다음의 목적이외의 용도로 이용되지 않습니다.</li>
										<li>  - 국가자격시험 원서접수(최근 2년 이내에 시험 응시자 또는 접수자),응시자격 서류제출, 합격사항 안내</li>
										<li>  - ‘뉴스레터’ 등 각종 국가자격시험 정보 안내</li>
										<li>  - 자격취득자교육훈련 안내</li>
										<li>  - 큐넷 홈페이지 회원 비밀번호 재설정</li>
									</ul>
								</li>
								<li><strong>2. 수집하려는 개인정보의 항목</strong>
									<ul>
										<li>○ 수집항목 : 이메일 및 문자메시지 알림서비스 수신여부 , 계좌번호</li>
									</ul>
								</li>
								<li><strong>3. 개인정보의 보유 및 이용기간</strong>
									<ul>
										<li>○ 개인정보의 보유 및 이용기간은 다음과 같습니다.</li>
										<li>  - (기술자격)원서접수일, 자격취득일로부터 “준영구”</li>
										<li>  - (전문자격)원서접수일로부터 “준영구”</li>
										<li></li>
										<li></li>
									</ul>
								</li>
								<li><strong>4 개인정보 수집에 대한 거부 권리 및 그에 따른 서비스 제한사항</strong>
									<ul>
										<li>○ 이용자는 Q-Net에서 수집하는 개인정보에 대해 동의를 거부할 권리가 있으나 선택항목에 대한 수집, 이용에 대한 동의 거부 시 선택정보를 활용한 서비스 이용에 제한을 받을 수 있습니다.</li>
									</ul>
								</li>
								<li><strong>※ 회원 가입시 상기 항목에 대해 동의를 거부할 수 있으나 개인정보수정 시 선택정보를 입력할 경우 선택정보 수집 및 이용에 동의한 것으로 간주됩니다.</strong>
								</li>
							</ul>
						</div>
						<div class="agree_chk" style="margin-left: 100px">
							<input type="checkbox" id="consentCb3" title="본인은 개인정보 수집 및 이용에 대한 안내(선택정보)를 확인하였고 이에 동의합니다."> <label for="consentCb3">본인은 개인정보 수집 및 이용에 대한 안내(선택정보)를 확인하였고 이에 동의합니다.</label>
						</div>
						
						<!-- 2016.09.06 jws : 이지은 대리 요청 제3자제공 삭제
						<div class="clause" tabindex="0">
							<p>개인정보 제3자 제공에 대한 안내</p>
							<ul>
								<li><strong>공단 사이트에서 수집된 개인정보는 아래 기관에 제공될 수 있습니다.</strong>
								</li>
								<li><strong>1. 제공 기관, 근거 및 제공 정보</strong>
									<ul>
										<li>○ 국가기술자격 종목별 주무부처, 시/도 행정기관</li>
										<li>  - 제공 근거 : 국가기술자격법 시행규칙 제 42조(국가기술자격 취득자 관리 현황 통보),비상대비자원 관리법 제 10조(자원조사 등)</li>
										<li>  - 제공 정보 : 해당 종목에 대한 분기별 국가기술자격 취득자 정보(이름, 주민등록번호, 주소, 자격증번호, 합격일자 등)</li>
									</ul>
									<ul>
										<li>○ 병무청</li>
										<li>  - 제공 근거 : 병역법 시행규칙 제23조(현역병 지원서 등) 등</li>
										<li>  - 제공 정보 : 군복무와 관련된 국가기술자격 취득자 정보(이름, 주민등록번호, 주소, 자격증번호, 합격일자 등)</li>
									</ul>
								</li>
								<li><strong>※ 국가전문자격시험의 개인정보 제3자 제공에 대한 동의 및 안내사항은 각 자격시험별 원서접수 시 확인 하실 수 있습니다.</strong></li>
								<li><strong>2. 제공 및 이용기간 : 상기 사유 및 정해진 절차에 따라 해당 기관에서 정보 요청 시 제공하며 상기 사무 처리에 필요한 기간 동안 이용할 수 있습니다.</strong>
								</li>
								<li><strong>3. 또한 다음 각 호의 경우 개인정보를 목적 외 용도로 이용 및 제공할 수 있습니다.</strong>
									<ul>
										<li>  - 제공근거 : 개인정보보호법 제 18조(개인정보의 목적 외 이용·제공 제한)</li>
										<li>  - 정보주체로부터 별도의 동의를 받은 경우</li>
										<li>  - 다른 법률에 특별한 규정이 있는 경우</li>
										<li>  - 정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전동의를 받을 수 없는 경우로서</li>
										<li>    명백히 정보주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우</li>
										<li>  - 통계작성 및 학술연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아 볼 수 없는 형태로 개인정보를 제공하는 경우</li>
										<li>  - 개인정보를 목적 외의 용도로 이용하거나 이를 제3자에게 제공하지 아니하면</li>
										<li>    다른 법률에서 정하는 소관 업무를 수행할 수 없는 경우로서 보호위원회의 심의·의결을 거친 경우</li>
										<li>  - 조약, 그 밖의 국제협정의 이행을 위하여 외국정보 또는 국제기구에 제공하기 위하여 필요한 경우</li>
										<li>  - 범죄의 수사와 공소의 제기 및 유지를 위하여 필요한 경우</li>
										<li>  - 법원의 재판업무 수행, 형(刑) 및 감호, 보호처분의 집행을 위하여 필요한 경우</li>
									</ul>
								</li>
								<li><strong>4. 개인정보 제 3자 제공에 대한 거부 권리 및 그에 따른 서비스 제한사항</strong>
									<ul>
										<li>  - 이용자는 Q-Net에서 수집하는 개인정보에 대해 개인정보 제3자 제공에 대한 동의를 거부할 권리가 있으나</li>
										<li>    동의 거부 시 회원가입과 서비스 이용에 제한을 받을 수 있습니다.</li>
									</ul>
								</li>
								<li><strong></strong>
									<ul>
										<li></li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="agree_chk">
							<input type="checkbox" id="consentCb4" title="본인은 개인정보 제3자 제공에 대한 안내를 확인하였고 이에 동의합니다. "/> <label for="consentCb4">본인은 개인정보 제3자 제공에 대한 안내를 확인하였고 이에 동의합니다.</label>
						</div>
						 -->

						<div class="clause" tabindex="0" style="margin-left: 100px">
							<p>고유식별정보 수집 및 이용에 대한 안내</p>
							<ul>
								<li><strong>공단  국가기술자격법 시행령 제33조의2(고유식별정보의 처리) 규정에 의거  다음과 같이 고유식별정보를 수집·이용합니다. 수집된 고유식별정보는 해당 목적이외의 용도로 이용되지 않습니다.</strong>
								</li>
								<li><strong>1. 고유식별정보의 수집·이용 목적 : 국가자격시험 행정처리</strong>
								</li>
								<li><strong>2. 수집하려는 고유식별정보의 항목</strong>
									<ul>
										<li>  - 주민등록번호(내국인)</li>
										<li>  - 외국인등록번호(국내거주외국인)</li>
									</ul>
								</li>
								<li><strong>3. 고유식별정보의 보유 및 이용기간</strong>
									<ul>
										<li>  - (기술자격)원서접수일, 자격취득일로부터 “준영구”</li>
										<li>  - (전문자격)원서접수일로부터 “준영구”</li>
									</ul>
								</li>
								<li><strong>4. 고유식별정보 수집에 대한 거부 권리 및 그에 따른 서비스 제한사항</strong>
									<ul>
										<li>  - 이용자는 고유식별정보 수집에 대해 동의를 거부할 권리가 있으나 고유식별정보 수집에 대한 동의 거부 시 큐넷 회원가입 및 서비스 이용에 제한을 받을 수 있습니다.</li>
									</ul>
								</li>
							</ul>
						</div>
						<br><br>
<!-- 						<div class="agree_chk"> -->
<!-- 							<input type="checkbox" id="consentCb5" title="본인은 고유식별정보 수집 및 이용에 대한 안내를 확인하였고 이에 동의합니다."/> <label for="consentCb5">본인은 고유식별정보 수집 및 이용에 대한 안내를 확인하였고 이에 동의합니다.</label> -->
<!-- 						</div> -->
					<!-- // 약관서 구분 -->
						<div class="clause" tabindex="0" style="margin-left: 100px">
							<p>민감(장애)정보 수집 및 이용에 대한 안내</p>
							<ul>
								<li><strong>공단 사이트는 다음과 같이 민감정보를 수집·이용합니다. 수집된 민감정보는 해당 목적 이외의 용도로 이용되지 않습니다.</strong>
								</li>
								<li><strong>1. 민감정보의 수집·이용 목적</strong>
									<ul>
										<li>  - 국가기술자격, 국가전문자격 시험 시 장애인 수험자에 대한 편의서비스 제공 등</li>
									</ul>
								</li>
								<li><strong>2. 수집하려는 민감정보의 항목</strong>
									<ul>
										<li>  - 장애여부, 장애구분</li>
									</ul>
								</li>
								<li><strong>3. 민감정보의 보유 및 이용기간</strong>
									<ul>
										<li>  - 원서접수일, 자격취득일로부터 “준영구”</li>
									</ul>
								</li>
								<li><strong>4. 민감정보 수집에 대한 거부 권리 및 그에 따른 서비스 제한사항</strong>
									<ul>
										<li>  - 이용자는 민감정보 수집에 대해 동의를 거부할 권리가 있으나 민감정보 수집 및 이용을 거부할 경우 장애수험자 편의서비스 이용에 제한을 받을 수 있습니다.</li>
									</ul>
								</li>
								<li><strong>※  회원 가입시 상기 항목에 대해 동의를 거부할 수 있으나 개인정보수정 또는 원서 접수 시 민감정보를 입력할 경우 민감정보 수집 및 이용에 동의한 것으로 간주됩니다.</strong>
								</li>
							</ul>
						</div>
						<div class="agree_chk mb20" style="margin-left: 100px">
							<input type="checkbox" id="consentCb6" title="본인은 민감(장애)정보 수집 및 이용에 대한 안내(선택정보)를 확인하였고 이에 동의합니다."> <label for="consentCb6">본인은 민감(장애)정보 수집 및 이용에 대한 안내(선택정보)를 확인하였고 이에 동의합니다.</label>
						</div>
						
					</div>
					
					<div class="btn_center">

						<button type="button" class="btn2 btncolor1" id="next" onclick="nextGo()"><span>약관동의</span></button>
					</div>
			
				
			</div>
		</div>
</article>
