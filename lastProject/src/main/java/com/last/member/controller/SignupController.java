package com.last.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.dao.MemberDAOImpl;
import com.last.common.vo.MemberVo;

@Controller
public class SignupController {
	
	@Autowired
	private MemberDAOImpl memberDaoImpl;
	
	
	public void setMemberDaoImpl(MemberDAOImpl memberDaoImpl) {
		this.memberDaoImpl = memberDaoImpl;
	}


	@RequestMapping("/juso")
	public String juso(){
		return "member/jusoPopup";
		
	}
	
	@RequestMapping("/juso2")
	public String juso2(){
		return "member/jusoPopup2";
		
	}
	
	
	
	
	@RequestMapping("/signup")
	public String signUp(MemberVo vo, HttpServletRequest request){

		
		return "member/signup";
	}
	
	@RequestMapping("/insertMember")
	public String insert(MemberVo vo ,HttpServletRequest request){
		
		System.out.println("컨트롤러 회원가입");
		
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("mem_pwd"));
		vo.setName(request.getParameter("name"));
		
		memberDaoImpl.insert(vo);
		
		return "redirect:main";
	}
	
	
}
