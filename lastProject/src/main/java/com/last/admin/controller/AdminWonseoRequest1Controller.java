package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/wonseo")
public class AdminWonseoRequest1Controller {

	@RequestMapping("/exam")
	public String wonseoRequest10(){
		return "member/wonseo/wonseo_request1";				
	}
//	
//	@RequestMapping("/wonseoList")
//	public String wonseoRequest4(){
//		return "member/wonseo/wonseo_request4";
//	}
//	
//	@RequestMapping("/ache")
//	public String wonseoRequest5(){
//		return "member/wonseo/wonseo_request5";
//	}
	
	@RequestMapping("/member/wonseoReq")
	public String wonseoRequest1(){
		return "member/wonseo/wonseo_request1";
	}
	
	@RequestMapping("/member/wonseoReq2")
	public String wonseoRequest2(){
		String url = "member/wonseo/wonseo_request2";
		
		return url;
	}
	
	@RequestMapping("/member/wonseoReq3")
	public String wonseonRequest3(){
		String url="member/wonseo/wonseo_request3";
				
		return url;
	}
	@RequestMapping("/member/wonseoReq4")
	public String wonseonRequest4(){
		String url="member/wonseo/wonseo_request4";
				
				return url;
	}
	@RequestMapping("/member/wonseoReq5")
	public String wonseonRequest5(){
		String url="member/wonseo/wonseo_request5";
				
				return url;
	}
	
	
	
//	@RequestMapping("/member/wonseoReqNext")
//	public String wonseoRequest3(){
//		return "member/wonseo/wonseo_request3";
//	}
	
	
}
