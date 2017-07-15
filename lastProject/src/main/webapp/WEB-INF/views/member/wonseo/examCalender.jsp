<%@page import="com.last.common.vo.CalendarVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name='description'
	content='Open source JavaScript jQuery plugin for a full-sized, drag &amp; drop event calendar'>
<meta name='keywords'
	content='calendar, JavaScript, jQuery, events, drag and drop'>
<meta name='author' content='Adam Shaw'>

<%
	List<CalendarVO> calList = (List<CalendarVO>)request.getAttribute("event");
%>


<link rel="apple-touch-icon" sizes="57x57"
	href="https://fullcalendar.io/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="https://fullcalendar.io/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="https://fullcalendar.io/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="https://fullcalendar.io/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="https://fullcalendar.io/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="https://fullcalendar.io/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="https://fullcalendar.io/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="https://fullcalendar.io/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="https://fullcalendar.io/apple-touch-icon-180x180.png">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-192x192.png" sizes="192x192">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-160x160.png" sizes="160x160">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-96x96.png" sizes="96x96">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-16x16.png" sizes="16x16">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-32x32.png" sizes="32x32">
<meta name="msapplication-TileColor" content="#2b5797">
<meta name="msapplication-TileImage"
	content="https://fullcalendar.io/mstile-144x144.png">




<link href='resources/css/base.css' rel='stylesheet' />
<link rel='stylesheet' href='resources/css/fullcalendar.min.css' />

<script src='resources/js/moment.min.js'></script>
<script src='resources/js/jquery.min.js'></script>
<script src='resources/js/fullcalendar.min.js'></script>
<script src='resources/js/ko.js'></script>
<script>

	$(function() {

		$('#calendar').fullCalendar({
			header: {
				left: 'prev,today,next', //< > 오늘
				center: 'title',  //2017년 7월이라는 달력 제목
				right: 'month,agendaWeek,agendaDay,listWeek' //월, 주, 일, 일정목록
			},
			defaultDate: new Date(), //캘린더 켜지면 화면상에 나오는 날짜
			editable: false, //마우스로 일정을 움직일 수 있음. 사용자는 캘린더를 보기만 하기 때문에 false
			eventLimit: false,//하루에 이벤트가 3개이상이면 more표시로 줄여주는 기능 다 보여줘야하기 때문에 false
			events: [
			 
			         <%for(int i=0; i<calList.size();i++){
					  		if(i>0) out.print(",");
					  		CalendarVO calVo =calList.get(i);%>
			               
				{
					title: '<%=calVo.getEm_nm()%>일',
					start: '<%=calVo.getNumg_stare_date()%>',
					color:'<%=calVo.getNumg_color()%>'
				},
				
				{
					title: '<%=calVo.getEm_nm()%> 원서접수기간',
					start:'<%=calVo.getNumg_app_receipt_begin()%>',
					end : '<%=calVo.getNumg_app_receipt_end()%>',
					color:'<%=calVo.getNumg_color()%>'
				},
				
				

				{
					title: '<%=calVo.getEm_nm()%> 발표일',
					start:'<%=calVo.getNumg_pass_p_anno_date()%>',
					color:'<%=calVo.getNumg_color()%>'
				}
				
					
						<%}%>
				
			],
			eventMouseover: function(calEvent, jsEvent) {
			    var tooltip = '<div class="tooltipevent" style="width:300px;height:100px;background:#D5D5D5;position:absolute;z-index:10001;">' + calEvent.title  + '</div>';
			    $("body").append(tooltip);
			    $(this).mouseover(function(e) {
			        $(this).css('z-index', 10000);
			        $('.tooltipevent').fadeIn('500');
			        $('.tooltipevent').fadeTo('10', 1.9);
			    }).mousemove(function(e) {
			        $('.tooltipevent').css('top', e.pageY + 10);
			        $('.tooltipevent').css('left', e.pageX + 20);
			    });
			},
			eventMouseout: function(calEvent, jsEvent) {
			     $(this).css('z-index', 8);
			     $('.tooltipevent').remove();
			},
			
		});
	});
	
	
	
	
</script>

<style>
.tit_content {
	margin-bottom: 50px;
}
</style>

<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<jsp:include page="wonseoLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->

			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>정기시험</li>
					<li>연간시험일정</li>
					<li><strong>월간 시험일정</strong></li>
				</ul>
			</div>
			<h1 class="tit_content">월간 시험일정</h1>
			<div>
				<div class='two-col'>
					<div id='calendar'></div>
				</div>
			</div>
		</div>
	</div>
</article>


