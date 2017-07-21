package com.last.member.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member/mypage")
public class MypageRodlsController {

	@RequestMapping("/member/selfTest")
	public String selfTest(){
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
