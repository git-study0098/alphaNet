package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
//@RequestMapping("/member/mypage")
public class MypageRodlsController {

	@RequestMapping("/member/selfTest")
	public String selfTest(@RequestParam(value="mem_code")String mem_code){
		
		
		
		
		return "member/mypage/mypage_dmdtl1";
	}
	@RequestMapping("/member/subCheck")
	public String subCheck(){
		return "member/mypage/mypage_dmdtl2";
	}
	@RequestMapping("/member/docCheck")
	public String docCheck(){
		return "member/mypage/mypage_dmdtl3";
	}
	@RequestMapping("/member/docSubmit")
	public String docSubmit(){
		return "member/mypage/mypage_dmdtl4";
	}
	
}
