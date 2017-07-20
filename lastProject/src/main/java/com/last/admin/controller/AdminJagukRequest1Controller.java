package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminJagukRequest1Controller {

	@RequestMapping("/request1")
	public String jagukRequest1(){
		return "member/jaguk/jaguk_request1";
	}
	
	@RequestMapping("/member/request2")
	public String jagukRequest2(){
		return "member/jaguk/jaguk_request2";
	}
	
	@RequestMapping("/request3")
	public String jagukRequest3(){
		return "member/jaguk/jaguk_request3";
	}
	
	@RequestMapping("/request4")
	public String jagukRequest4(){
		return "member/jaguk/jaguk_request5";
	}
	
	@RequestMapping("/request6")
	public String jagukRequest5(){
		return "member/jaguk/jaguk_request6";
	}
	
}
