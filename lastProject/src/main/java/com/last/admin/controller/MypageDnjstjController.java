package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member/mypage")
public class MypageDnjstjController {

	@RequestMapping("/member/wonseoHistory")
	public String wonseoHistory(){
		return "member/mypage/mypage_dnjstj1";
	}
	
	@RequestMapping("/member/mypageWonseoReq")
	public String wonseoReq(){
		return "member/mypage/mypage_dnjstj2";
	}
	
	@RequestMapping("/member/resultCheck")
	public String resultCheck(){
		return "member/mypage/mypage_dnjstj3";
	}
	
	@RequestMapping("/member/changeImg")
	public String changeImg(){
		return "member/mypage/mypage_dnjstj4";
	}
	
}
