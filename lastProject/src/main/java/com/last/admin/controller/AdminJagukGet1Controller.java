package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/jaguk")
public class AdminJagukGet1Controller {

	@RequestMapping("/member/jagukGet")
	public String jagukGet1(){
		return "member/jaguk/jaguk_get1";
	}
	
	@RequestMapping("/nonGet")
	public String jagukGet2(){
		return "member/jaguk/jaguk_get2";
	}
}
