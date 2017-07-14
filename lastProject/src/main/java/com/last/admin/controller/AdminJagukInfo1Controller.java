package com.last.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/jaguk")
public class AdminJagukInfo1Controller {

	@RequestMapping("/infoReq")
	public String jagukInfoReq(){
		return "member/jaguk/jaguk_info1";
	}
	
	@RequestMapping("/infoReqPlace")
	public String jagukInfoReqPlace(){
		return "member/jaguk/jaguk_info2";
	}
	
	@RequestMapping("/infoNew")
	public String jagukInfoNew(){
		return "member/jaguk/jaguk_info3";
	}
	
	@RequestMapping("/infoCheck")
	public String jagukInfoCheck(){
		return "member/jaguk/jaguk_info4";
	}
	
	@RequestMapping("/infoRe")
	public String jagukInfoRe(){
		return "member/jaguk/jaguk_info5";
	}
	
	@RequestMapping("/infoFunc")
	public String jagukInfoFunc(){
		return "member/jaguk/jaguk_info6";
	}
	
	@RequestMapping("/infoTarget")
	public String jagukInfoTarger(){
		return "member/jaguk/jaguk_info7";
	}
	
	@RequestMapping("/infoWarn")
	public String jagukInfoWarn(){
		return "member/jaguk/jaguk_info8";
	}
	
	@RequestMapping("/infoEdu")
	public String jagukInfoEdu(){
		return "member/jaguk/jaguk_info9";
	}
	
	@RequestMapping("/infoNon")
	public String jagukInfoNon(){
		return "member/jaguk/jaguk_info10";
	}
	
}
