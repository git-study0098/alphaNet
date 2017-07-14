package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/jaguk")
public class AdminConfirmInfo1Controller {

	@RequestMapping("/confirmInfo")
	public String confirmInfo1(){
		return "member/jaguk/confirm_info1";
	}
	
}
