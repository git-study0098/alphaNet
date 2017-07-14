package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member/mypage")
public class MypageAuswpController {

	@RequestMapping("/member/testPass")
	public String testPass(){
		return "member/mypage/mypage_auswp1";
	}
	@RequestMapping("/member/subPass")
	public String subPass(){
		return "member/mypage/mypage_auswp2";
	}
	
	
}
