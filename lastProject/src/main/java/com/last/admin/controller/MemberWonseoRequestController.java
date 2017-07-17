package com.last.admin.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.WonseoService;
import com.last.common.vo.WonseoInfoVo;


@Controller
public class MemberWonseoRequestController {

	@Autowired
	protected WonseoService wonseoService;

	public void setWonseoService(WonseoService wonseoService) {
		this.wonseoService = wonseoService;
	}
	
	
	@RequestMapping("/exam")
	public String wonseoRequest10(){
		return "member/wonseo/wonseo_request1";				
	}
	
	@RequestMapping("/member/wonseoReq")
	public String wonseoRequest1(Model model){
		String url = "member/wonseo/wonseo_request1";
		List<WonseoInfoVo> numgInfo=null;
		
		try {
			numgInfo = wonseoService.selectnumgList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("numgInfo",numgInfo);
		
		return url;
	}
	
	@RequestMapping("/member/wonseoReq2")
	public String wonseoRequest2(@RequestParam(value="em_nm")String em_nm){
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
	
	
	
}
