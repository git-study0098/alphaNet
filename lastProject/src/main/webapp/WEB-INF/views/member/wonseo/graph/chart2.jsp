<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/chart.js" charset="utf-8"></script>

<style>
* { box-sizing: content-box;}
</style>
<article>
	<div id="container">
		<div>
			<jsp:include page="../../../lnb/wonseoLnb.jsp" />
			<div id="lnb2"></div>
		</div>

		<div id="content">
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>자격검정통계</li>
					<li><strong>총괄현황</strong></li>
				</ul>
			</div>
			<div class="content">
				<h3 class="tit_content">3d 그래프</h3>
				<div class="cont_top_wrap">
					<div class="tabLayout">
						<ul>
							<li><a href="<%=request.getContextPath()%>/chart"><span>꺽은선 그래프</span></a></li>
							<li class="on"><a href="<%=request.getContextPath()%>/chart2" title="자격취득자현황"><span>3d 그래프</span></a></li>
						</ul>
					</div>
					<!-- //tabLayout -->
				</div>
				<div id="piechart_3d" style="width: 600px; height: 400px;"></div>
			</div>
		</div>
	</div>
</article>