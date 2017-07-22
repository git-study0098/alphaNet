package com.last.member.controller.mypage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.MypageService;
import com.last.common.vo.StareVO;

@Controller
public class MemberMypageController {
	
	@Autowired
	private MypageService mypageService;
	
	public void setMypageService(MypageService mypageService) {
		this.mypageService = mypageService;
	}
	

	@RequestMapping("/member/wonseoHistory")
	public String wonseoHistory(Model model){
		List<StareVO> selectStareList = null;
		String mem_code = "";
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mem_code =user.getUsername();
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
	
	@RequestMapping("/member/resultCheck")
	public String resultCheck(Model model){
		List<StareVO> selectResultCheck = null;
		String mem_code = "";
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mem_code =user.getUsername();
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
	@RequestMapping("/member/changeImg2")
	public String changeImg2(){
		return "member/mypage/mypage_dnjstj5";
	}	
}
