package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member/mypage")
public class MypageDmdtlController {

	@RequestMapping("/member/myInfo")
	public String myInfo(){
		return "member/mypage/mypage_rodls1";
	}
	@RequestMapping("/member/schJobInfo")
	public String schJobInfo(){
		return "member/mypage/mypage_rodls2";
	}
	@RequestMapping("/member/out")
	public String out(){
		return "member/mypage/mypage_rodls3";
	}
	
	
}
