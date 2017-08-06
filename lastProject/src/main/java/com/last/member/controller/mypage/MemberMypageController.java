package com.last.member.controller.mypage;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.last.common.service.AdminNotice1Service;
import com.last.common.service.MypageService;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.StareVO;
import com.last.common.vo.SubjectVo;

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
	
	
	@RequestMapping("/member/documentSubmitForm")
	public String documentSubmitForm(){
		return "member/mypage/document_submit";
	}	
	
	@RequestMapping(value="/member/documentSubmit", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String documentSubmit(HttpServletRequest request, Model model, @RequestParam("f") MultipartFile multipartFile){
		String url = "redirect:/member/docSubmit";	
		
		String mem_code = "";
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mem_code =user.getUsername();
		
		String upload = "C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
		String str = multipartFile.getOriginalFilename();

		StringTokenizer tokens = new StringTokenizer(str, ".");
		String[] fileName = { "1", "hwp" };
		int i = 0;
		while (tokens.hasMoreTokens()) {
			fileName[i] = tokens.nextToken();
			i++;
		}

		if (!multipartFile.isEmpty()) {
			File file = new File(upload, fileName[0] + "." + fileName[1]);
			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		int count = 0;
		try {
			count = mypageService.countDocument();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		SubjectVo vo = new SubjectVo();
		vo.setSub_code(count+1+"");
		vo.setMem_code(mem_code);
		vo.setDocu_code("DOCU010");
		vo.setAttach_file(fileName[0] + "." + fileName[1]);
		vo.setApprove_at("N");
		vo.setAdmin_code("ADM001");
		
		model.addAttribute(vo);
		
		try {
			mypageService.insertDocument(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;		
	}	
}
