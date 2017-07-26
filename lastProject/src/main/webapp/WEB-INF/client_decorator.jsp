<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/resources/client/customer.css" rel="stylesheet" type="text/css" >				
<link href="<%=request.getContextPath()%>/resources/client/main2017.css" rel="stylesheet" type="text/css" >				
<link href="<%=request.getContextPath()%>/resources/client/ubcus.css" rel="stylesheet" type="text/css" />									
<link href="<%=request.getContextPath()%>/resources/client/jquery-ui-1.8.14.custom.css" rel="stylesheet" type="text/css" >				
<link href="<%=request.getContextPath()%>/resources/client/tip-yellow.css" rel="stylesheet" type="text/css" >				
<title>알파넷 고객의 소리</title>
</head>
<body>
<div id="header">
	<div class="gnb_box">
		<div class="gnb_pix">
			<ul class="gnb">
				<li class="first-child"><a href="#">사이트맵</a></li>

				<li>화면크기
					<span>
						<a href="javascript:funcZoom('in');">
							<img src="<%=request.getContextPath()%>/resources/client/images/plus.png" alt="글자확대" />
						</a>
						<a href="javascript:funcZoom('out');">
							<img src="<%=request.getContextPath()%>/resources/client/images/minus.png" alt="글자축소" />
						</a> 
					</span>
				</li>
			</ul>
		</div>
	</div>
</div>
<decorator:body />
	<div id="footer">
	<h2 class="blind">하단메뉴</h2>
	<div class="foot_top">
		<div class="ft_pix">
			<ul class="link">
				<li class="first-child colorR"><a href="http://hrdkorea.or.kr/ksh/1/2" target="_blank" title="[새창]개인정보처리방침">개인정보처리방침</a></li>
				<li><a href="http://hrdkorea.or.kr/1/2/6/1" target="_blank" title="[새창]고객서비스헌장">고객서비스헌장</a></li>
				<li><a href="http://hrdkorea.or.kr/5/6" target="_blank" title="[새창]찾아오시는길">찾아오시는길</a></li>
				<li><a href="http://hrdkorea.or.kr/ksh/1/1/1" target="_blank" title="[새창]뷰어다운로드">뷰어다운로드</a></li>
			</ul>
			<div class="bannerZone">
				<dl class="cont">
					<dt>배너모음 컨트롤러</dt>
   					<dd class="bannerPre"><a href="javascript:goPrev();" class="pre"><span>앞으로</span></a></dd>
   					<dd id="bannerStop" class="bannerStop"><a href="javascript:goMove();" class="play"><span>재생</span></a></dd>
   					<dd class="bannerNext"><a href="javascript:goNext();" class="next"><span>뒤로</span></a></dd>
				</dl>
				<div class="banner_box">
					<ul class="bannerList">
						<li><a href="http://www.hrdkorea.or.kr/" target="_blank" title="[새창]한국산업인력공단"><img src="<%=request.getContextPath()%>/resources/client/images/banner01.gif" alt="한국산업인력공단"></a></li>
						<li><a href="http://www.q-net.or.kr/" target="_blank" title="[새창]Q-Net 자격검정"><img src="<%=request.getContextPath()%>/resources/client/images/banner02.gif" alt="Q-Net 자격검정"></a></li>
						<li><a href="http://www.ktitq.or.kr" target="_blank" title="[새창]한국기술자격검정원"><img src="<%=request.getContextPath()%>/resources/client/images/banner03.gif" alt="한국기술자격검정원"></a></li>
						<li><a href="http://www.tvworknet.or.kr/" target="_blank" title="[새창]tvWORKNet 직업방송"><img src="<%=request.getContextPath()%>/resources/client/images/banner04.gif" alt="한국직업방송"></a></li>
						<li><a href="http://www.worldjob.or.kr" target="_blank" title="[새창]월드잡플러스"><img src="<%=request.getContextPath()%>/resources/client/images/banner05.gif" alt="WORLD JOB 해외취업및연수"></a></li>
						<li><a href="http://meister.hrdkorea.or.kr/" target="_blank" title="[새창]마이스터넷"><img src="<%=request.getContextPath()%>/resources/client/images/banner06.gif" alt="마이스터넷"></a></li>
						<li><a href="http://www.ncs.go.kr/ncs/page.do?sk=index" target="_blank" title="[새창]NCS 국가직무능력표준"><img src="<%=request.getContextPath()%>/resources/client/images/banner07.gif" alt="NCS 국가직무능력표준"></a></li>
						<li><a href="http://www.hrd.go.kr" target="_blank" title="[새창]HRD-Net 직업훈련정보망"><img src="<%=request.getContextPath()%>/resources/client/images/banner08.gif" alt="HRD-Net 직업훈련정보망"></a></li>
						<li><a href="http://eps.hrdkorea.or.kr" target="_blank" title="[새창]외국인 고용허가제"><img src="<%=request.getContextPath()%>/resources/client/images/banner09.gif" alt="외국인 고용허가제"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="foot_btm">
		<div class="fb_pix">
			<address>(44538) 울산광역시 중구 종가로 345(교동) 한국산업인력공단 / 대표전화: 1644 - 8000</address>
			<p>Copyright ⓒ 2017 All Rights Reserved. Human Resources Development Service of Korea.</p>	
		</div>
	</div>
</div>
</body>
</html>