<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>메일인증</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>


</head>


<style>


body{
    background: url(http://mymaplist.com/img/parallax/back.png);
	background-color: #444;
    background: url(http://mymaplist.com/img/parallax/pinlayer2.png),url(http://mymaplist.com/img/parallax/pinlayer1.png),url(http://mymaplist.com/img/parallax/back.png);    
}

.vertical-offset-100{
    padding-top:100px;
}

</style>




<script language="Javascript">

	email1 ="";
	var ranNum ="";

function authMail(){
	var email2 = document.getElementById("email").value;
	if(email2 == ""){
 		alert("이메일을 입력해주셔야합니다.")
 	}else{
		$.ajax({
			url:"<%=request.getContextPath()%>/client/mailSend",
			type:"post",
			data: "email=" + email2,
			success:function(res){
				console.log(res.email);
				console.log(res.ranNum);
				email1 = res.email;
				ranNum = res.ranNum;
			}
		});

 	}
}

function check(form){
	
	if(!form.authNum.value){
		alert("인증번호를 입력하세요!!!");
		return false;
	}
	
	if(form.authNum.value != ranNum){
		alert("틀린 인증번호 입니다. 확인하시고 다시 입력해주세요!!!");
		form.authNum.value="";
		return false;
	}
	
	if(form.authNum.value == ranNum){
		alert("인증완료되었습니다.");
		opener.location.href="<%=request.getContextPath()%>/client/client?email="+email1
		self.close();
		
	}
}

	//이메일인증
</script>
<body>
 <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title" style="text-align:center">이메일인증</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" name="form" method="post">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" id="email" type="text">
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="button" value="인증하기" onclick="javascript:authMail()"/>
			    		<br/>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="인증번호를 입력해주세요" name="authNum" id="authNum" type="text"  value="">
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="button" value="인증번호 확인" onclick="check(this.form);">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>

</body>


</html>
