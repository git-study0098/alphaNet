<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="row">
	<div class="col-md-12">
		<h2>CBT MANAGE</h2>
	</div>
</div>
<!-- /. ROW  -->
<hr />

<!-- /. ROW  -->

<!-- /. PAGE INNER  -->
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

<div class="text-center" style="margin: 5px;">
	<p class="center-block"
		style="width: 600px; padding: 5px; margin: 5px;">
		<strong class="col-md-4">시험명</strong> <input type="password"
			name="pwd" class="col-md-6" placeholder="시험명을 입력하세요."
			style="margin: 5px;">
	</p>
</div>

<!-- 						<hr color="lightgray"> -->
<div class="text-center" style="margin: 5px;">
	<p class="center-block"
		style="width: 600px; padding: 5px; margin: 5px;">
		<strong class="col-md-4">문제수</strong> <input type="password"
			name="pwdCheck" class="col-md-6" placeholder="문제수를 입력하시오."
			style="margin: 5px;">
	</p>
</div>
<br />

<div class="text-center" style="margin: 5px;">
	<p class="center-block"
		style="width: 600px; padding: 5px; margin: 5px;">
		<strong class="col-md-4">첨부파일</strong> <input type="password"
			name="pwdCheck" class="col-md-6" placeholder="첨부파일명"
			style="margin: 5px;">
		<button type="button" class="btn btn-primary">등록하기</button>
	</p>
</div>

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
		<tr>
			<td>1</td>
			<td>기사</td>
			<td>정보처리기사</td>
			<td>첨부파일</td>
			<td><button type="button" class="btn btn-primary">삭제하기</button></td>
		</tr>
		<tr>
			<td>1</td>
			<td>기사</td>
			<td>정보처리기사</td>
			<td>첨부파일</td>
			<td><button type="button" class="btn btn-primary">삭제하기</button></td>
		</tr>
		<tr>
			<td>1</td>
			<td>기사</td>
			<td>정보처리기사</td>
			<td>첨부파일</td>
			<td><button type="button" class="btn btn-primary">삭제하기</button></td>
		</tr>
		<tr>
			<td>1</td>
			<td>기사</td>
			<td>정보처리기사</td>
			<td>첨부파일</td>
			<td><button type="button" class="btn btn-primary">삭제하기</button></td>
		</tr>

	</tbody>

</table>

<!-- 				</div> -->












<!-- inner page end -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<div class="footer">


	<div class="row">
		<div class="col-lg-12">
			&copy; 2014 yourdomain.com | Design by: <a
				href="http://binarytheme.com" style="color: #fff;" target="_blank">www.binarytheme.com</a>
		</div>
	</div>
</div>


<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="resources/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="resources/js/bootstrap.min.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="resources/js/custom.js"></script>
</body>
</html>
