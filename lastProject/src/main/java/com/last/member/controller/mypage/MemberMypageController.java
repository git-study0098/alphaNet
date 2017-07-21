package com.last.member.controller.mypage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.MypageService;
import com.last.common.vo.StareCertifiVO;
import com.last.common.vo.StareVO;

@Controller
public class MemberMypageController {
	
	@Autowired
	private MypageService mypageService;
	
	public void setMypageService(MypageService mypageService) {
		this.mypageService = mypageService;
	}
	

	@RequestMapping("/member/wonseoHistory")
	public String wonseoHistory(@RequestParam(value="mem_code") String mem_code,Model model){
		List<StareVO> selectStareList = null;
		try {
			selectStareList = mypageService.selectStareList(mem_code);
			System.out.println(selectStareList.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(selectStareList.toString());
		model.addAttribute("selectStareList", selectStareList);
		return "member/mypage/mypage_dnjstj1";
	}
	
	@RequestMapping("/member/mypageWonseoReq")
	public String wonseoReq(){
		return "member/mypage/mypage_dnjstj2";
	}
	
	@RequestMapping("/member/resultCheck")
	public String resultCheck(@RequestParam(value="mem_code") String mem_code, Model model){
		List<StareVO> selectResultCheck = null;
		try {
			selectResultCheck = mypageService.selectResultCheck(mem_code);
			System.out.println(selectResultCheck.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("selectResultCheck", selectResultCheck);
		
		return "member/mypage/mypage_dnjstj3";
	}
	
	@RequestMapping("/member/changeImg")
	public String changeImg(){
		return "member/mypage/mypage_dnjstj4";
	}	
	
	@RequestMapping("/member/stareCertifi")
	public String stareMember(@RequestParam(value="mem_code")String mem_code, Model model){
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
}
