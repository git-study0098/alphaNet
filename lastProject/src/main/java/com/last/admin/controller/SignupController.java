package com.last.admin.controller;

import java.io.Reader;

import javax.servlet.ServletRequest;
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


	@RequestMapping("/signup")
	public String signUp(MemberVo vo, HttpServletRequest request){
		
		System.out.println("컨트롤러 회원가입");
		vo.setId(request.getParameter("mem_code"));
		vo.setPwd(request.getParameter("mem_pwd"));
		vo.setName(request.getParameter("mem_nm"));
		
		memberDaoImpl.insert(vo);
		
		
		
		return "member/signup";
	}
	
	
}
