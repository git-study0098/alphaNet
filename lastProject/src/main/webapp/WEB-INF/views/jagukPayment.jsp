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
<c:set value="${qualifiMember}" var="qualifi" />
<script>
var IMP = window.IMP; // 생략가능
	IMP.init('imp97163507');

	IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    name : '자격증',
    merchant_uid : 'merchant_' + new Date().getTime(),
    amount : '${qualifi_certi_iss_pr+2340}',						//'${qualifi_certi_iss_pr}',
    buyer_email : '${qualifi.mem_email}',
    buyer_name : '${qualifi.mem_nm}',
    buyer_tel : '${qualifi.mem_phone}',
    buyer_addr : '${qualifi.mem_add1}'+ '${qualifi.mem_add2}'+ '${qualifi.mem_add3}',
    buyer_postcode : '${qualifi.mem_post_numb1}',
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