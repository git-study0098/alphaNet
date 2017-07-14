package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/wonseo")
public class AdminWonseoRequest1Controller {

	@RequestMapping("/exam")
	public String wonseoRequest1(){
		return "member/wonseo/wonseo_request1";
	}
	
	@RequestMapping("/wonseoList")
	public String wonseoRequest4(){
		return "member/wonseo/wonseo_request4";
	}
	
	@RequestMapping("/ache")
	public String wonseoRequest5(){
		return "member/wonseo/wonseo_request5";
	}
	@RequestMapping("/member/wonseoReq")
	public String wonseoRequest2(){
		return "member/wonseo/wonseo_request2";
	}
	
	@RequestMapping("/member/wonseoReqNext")
	public String wonseoRequest3(){
		return "member/wonseo/wonseo_request3";
	}
	
	
}
