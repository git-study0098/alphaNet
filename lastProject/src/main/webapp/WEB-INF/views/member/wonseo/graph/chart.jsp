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
				<h3 class="tit_content">총괄현황</h3>
				<div class="cont_top_wrap">
					<div class="tabLayout">
						<ul>
							<li class="on"><a href="<%=request.getContextPath()%>/chart1"><span>꺽은선 그래프</span></a></li>
							<li><a href="<%=request.getContextPath()%>/chart2" title="자격취득자현황"><span>3d 그래프</span></a></li>
						</ul>
					</div>
					<!-- //tabLayout -->
				</div>
				<div id="chart_div2" style="width: 600px; height: 400px;"></div>
				<div id="chart_div3" style="width: 600px; height: 400px;"></div>
				<div id="chart_div4" style="width: 600px; height: 400px;"></div>
			</div>
		</div>
	</div>
</article>


