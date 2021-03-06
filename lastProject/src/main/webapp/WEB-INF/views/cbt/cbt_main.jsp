<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
* { box-sizing: content-box;}

.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
</style>

<script>
	function setQSelVal(seVal){
		seval = seVal;
	}
	function viewQnetPassList(){
		if($('#selExam').val()=="value"){
			alert("응시할 시험을 선택해주세요.")
		}
		window.open("<%=request.getContextPath()%>/cbtChoice?seVal="+seval+"&test=test","cbt","width=1200px,height=468px,top=150px,left=250px;")
	}
</script>
<article>
	<div id="container">
		<div id="content">
			<!-- location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">CBT</h3>

					<!-- 정기시험 발표리스트  -->
					<div id="ancLstNew" style="">

						<div class="metier_wrap mb20">
							<div class="inwrap">
								<label for="selExam"><strong>시험</strong></label>
								<div>
									<select name="selExam" id="selExam" class="w350"
										title="응시한 정기시험 선택" onchange="setQSelVal(this.value)">
										<option value="value">응시하실 시험을 선택해주세요.</option>
											<c:forEach items="${viewData}" var="cbt">
												<option value="${cbt.cbt_em_quiz_code}" >${cbt.cbt_name}</option>
											</c:forEach>

									</select>
								</div>
								<span class="mBtn">
									<button type="button" class="btn3_type1"
										onclick="viewQnetPassList()">
										<span>시험보기</span>
									</button>
								</span>
							</div>

						</div>

					</div>

					</div>
				</div>
			</div>
</article>