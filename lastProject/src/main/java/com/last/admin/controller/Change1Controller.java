package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/notice")
public class Change1Controller {

	@RequestMapping("/tech")
	public String change1(){
		return "member/notice/change1";
	}
	
//	@RequestMapping("/expert")
//	public String change2(){
//		return "member/notice/customize_2";
//	}
	
}
