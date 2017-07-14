package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member/mypage")
public class MypageQkfrmqController {

	@RequestMapping("/member/confirmHistory")
	public String confirmHistory(){
		return "member/mypage/mypage_qkfrmq1";
	}
	
	@RequestMapping("/member/jagukHistory")
	public String jagukHistory(){
		return "member/mypage/mypage_qkfrmq2";
	}
	
	@RequestMapping("/member/jagukList")
	public String jagukList(){
		return "member/mypage/mypage_qkfrmq3";
	}
	
}
