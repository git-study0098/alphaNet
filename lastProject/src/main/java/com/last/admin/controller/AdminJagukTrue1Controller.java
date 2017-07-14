package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/jaguk")
public class AdminJagukTrue1Controller {

	@RequestMapping("/jagukTrue")
	public String jagukJagukTrue(){
		return "member/jaguk/jaguk_true";
	}
	
	@RequestMapping("/confirmTrue")
	public String jagukConfirmTrue(){
		return "member/jaguk/confirm_true";
	}
	
	
	
}
