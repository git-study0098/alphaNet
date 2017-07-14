package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member/jaguk")
public class AdminConfirmRequest1Controller {

	@RequestMapping("/member/confirmRequest")
	public String confirmRequest1(){
		return "member/jaguk/confirm_request1";
	}
	
	@RequestMapping("/member/confirmSelect")
	public String confirmRequest2(){
		return "member/jaguk/confirm_request2";
	}
	
	@RequestMapping("/member/confirmSearch")
	public String confirmSearch(){
		return "member/jaguk/confirm_request_search";
	}
	
}
