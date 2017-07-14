<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
$('#ajax').click(function(e){
	e.preventDefault(); //현재 이벤트의 기본동작을 중지한다
	$.ajax({ 
		url: 'write.jsp',
		type : 'post',
//			data : 'name=' + $('#name').val() + "&age=" + $('#age').val(),
		data : {
			'name' : $('#title').val(),
		},
		success : function(res){
			//jsp데이터가 요청한 페이지로 넘어온다
			//res가 데이터를 받는다
			$('#result').html(res);
		},
		error : function(xhr,status,error){
			   alert("status :" + xhr.status +"\r\ncode : " + 
					    xhr.statusText  + "\r\nmessage : " +
					    status.responseText);
		},
		dataType : 'text'

	})
})

</script>
<div class="row">
	<div class="col-md-12">
		<h2>BOARD MANAGE</h2>
	</div>
</div>
<hr />

<p class="text-center" style="margin: 20px;">
	<button id=ajax type="button" class="btn btn-primary">글쓰기</button>
</p>
<div id="result"></div>
<!-- 				<div style="text-align: center; marign: 20px;"> -->
<table class="table table-hover"
	style="text-align: center; marign: 20px;">
	<tbody>
		<tr>
			<td>글번호</td>
			<td>담당부서</td>
			<td>최종수정일자</td>
		</tr>
		<tr>
			<td>글번호</td>
			<td>담당부서</td>
			<td>최종수정일자</td>
		</tr>
		<tr>
			<td>글번호</td>
			<td>담당부서</td>
			<td>최종수정일자</td>
		</tr>
		<tr>
			<td>글번호</td>
			<td>담당부서</td>
			<td>최종수정일자</td>
		</tr>
		<tr>
			<!-- 								<td><button type="button" class="btn btn-primary">삭제하기</button></td> -->
		</tr>

	</tbody>

</table>

