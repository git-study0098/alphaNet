<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@page import="java.io.File"%>
<%@page import="org.springframework.web.multipart.MultipartRequest"%>



<!-- /. NAV SIDE  -->

<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>BLANK PAGE</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<!-- 내용 -->
		<div>
			<p class="text-center" style="margin: 5px;">
				<span style="width: 100%; padding: 5px; margin: 5px;"> <span
					style="width: 50%; padding: 5px; margin: 5px;"> <strong
						class="col-md-3">분류</strong>
				</span> <span style="width: 50%; padding: 5px; margin: 5px;"> <select
						style="width: 150px;">
							<option value="기사">기사</option>
							<option value="산업기사">산업기사</option>
							<option value="기술사">기술사</option>
							<option value="전문자격시험">전문자격시험</option>
					</select>
				</span> <!-- 							<input type="text" class="col-md-3" placeholder="입력할 시험명을 입력하세요">  -->
					<span style="width: 50%; padding: 5px; margin: 5px;"> <strong
						class="col-md-3">회차</strong>
				</span> <span style="width: 50%; padding: 5px; margin: 5px;"> <select
						style="width: 150px;">
							<option value="1회">1회</option>
							<option value="2회">2회</option>
							<option value="3회">3회</option>
							<option value="4회">4회</option>
					</select> <!-- 							<input type="hidden" class="col-md-3" placeholder="입력할 회차를 입력하시오" name="reid"> -->
				</span>



				</span>
			</p>
			<form action="<%=request.getContextPath() %>/excel/upload">
			
			<div class="text-center" style="margin: 5px;">
				<div class="center-block"
					style="width: 600px; padding: 5px; margin: 5px; float:left;">
					<strong class="col-md-4">첨부파일</strong> <input type="file"
						name="f">
						
				</div>
				<div style="float:right;margin: 5%;">
					<input type="submit" class="btn btn-primary" value="등록하기"/>
				</div>
			</div>
			</form>
			<!-- 				<div style="text-align: center; marign: 20px;"> -->
			<table class="table table-hover"
				style="text-align: center; marign: 20px;">
				<tbody>
					<tr style="">
						<td>글번호</td>
						<td>분류</td>
						<td>시험명</td>
						<td>첨부파일</td>
						<td>삭제버튼</td>
					</tr>

				</tbody>

			</table>

		</div>
		<!-- 내용끝 -->
		<!-- /. ROW  -->
	</div>
	<!-- /. PAGE INNER  -->
</div>

