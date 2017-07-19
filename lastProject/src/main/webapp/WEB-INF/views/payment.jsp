<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set value="${member}" var="member" />
<script>
var IMP = window.IMP; // 생략가능
	IMP.init('imp97163507');

	IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '${placeNm}',
    amount : ${em_pay_pr},
    buyer_email : '${member.mem_email}',
    buyer_name : '${member.name}',
    buyer_tel : '${member.mem_phone}',
    buyer_addr : '${member.mem_add1}',
    buyer_postcode : '${member.mem_post_numb1}',
    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        
        opener.paymentCheck();
        window.close();
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        window.close();
    }
    alert(msg);
});

</script>


</head>
<body>
</body>
</html>