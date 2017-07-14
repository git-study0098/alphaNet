package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/notice")
public class AdminCustmize1Controller {

	@RequestMapping("/getJob")
	public String customize1(){
		return "member/notice/customize_1";
	}
	
	@RequestMapping("/college")
	public String customize2(){
		return "member/notice/customize_2";
	}
	
}
