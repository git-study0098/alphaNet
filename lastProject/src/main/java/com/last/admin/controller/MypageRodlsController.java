package com.last.admin.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.MypageService;
import com.last.common.vo.StareCertifiVO;

@Controller
//@RequestMapping("/member/mypage")
public class MypageRodlsController {

	@Autowired
	private MypageService mypageService;
	
	public void setMypageService(MypageService mypageService) {
		this.mypageService = mypageService;
	}
	
	@RequestMapping("/member/selfTest")
	public String selfTest(@RequestParam(value="mem_code")String mem_code){
		
		return "member/mypage/mypage_dmdtl1";
	}
	
	@RequestMapping("/member/selfTest2")
	public String stareMember2(@RequestParam(value="mem_code")String mem_code, Model model){
		List<StareCertifiVO> selectSchoolCerti = null; 
		List<StareCertifiVO> selectCareerCerti = null; 
		
			try {
				selectSchoolCerti = mypageService.selectSchoolCerti(mem_code);
				selectCareerCerti = mypageService.selectCareerCerti(mem_code);
				System.out.println(selectSchoolCerti.toString());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("selectSchoolCerti", selectSchoolCerti);
		model.addAttribute("selectCareerCerti", selectCareerCerti);
		return "member/mypage/mypage_stareCertifi";
	}
	
	@RequestMapping("/member/selfTest3")
	public String stareMember3(@RequestParam(value="mem_code")String mem_code, Model model){
		List<StareCertifiVO> selectSchoolCerti = null; 
		List<StareCertifiVO> selectCareerCerti = null; 
		//인서트
		try {
			selectSchoolCerti = mypageService.selectSchoolCerti(mem_code);
			selectCareerCerti = mypageService.selectCareerCerti(mem_code);
			System.out.println(selectSchoolCerti.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("selectSchoolCerti", selectSchoolCerti);
		model.addAttribute("selectCareerCerti", selectCareerCerti);
		return "member/mypage/mypage_stareCertifi2";
	}
	
	@RequestMapping("/member/selfTest4")
	public String stareMember4(Model model){
		List<StareCertifiVO> selectSchoolCerti = null; 
		List<StareCertifiVO> selectCareerCerti = null; 
		//해당회원 아이디로 정보조회후 가능,불가능 체크
		
		model.addAttribute("selectSchoolCerti", selectSchoolCerti);
		model.addAttribute("selectCareerCerti", selectCareerCerti);
		
		return "member/mypage/mypage_stareCertifi3";
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
