package com.last.admin.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.dao.MemberDAOImpl;
import com.last.common.vo.MemberVo;

@Controller
//@RequestMapping("/member/mypage")
public class MypageDmdtlController {

	@Autowired
	private MemberDAOImpl memdaoImpl;
	
	
	
	public void setMemdaoImpl(MemberDAOImpl memdaoImpl) {
		this.memdaoImpl = memdaoImpl;
	}
	
	@RequestMapping("/member/myInfo")
	public String myInfo(HttpServletRequest request){
		MemberVo vo = new MemberVo();
		User  id = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println(id);
		try {
			vo =memdaoImpl.member(id.getUsername());
		} catch (SQLException e) {
			e.printStackTrace();
		} //로그인된ID
		System.out.println(vo);
		
		
		
		request.setAttribute("member", vo);
		
		return "member/mypage/mypage_rodls1";
	}
	@RequestMapping("/member/schJobInfo")
	public String schJobInfo(){
		return "member/mypage/mypage_rodls2";
	}
	@RequestMapping("/member/out")
	public String out(){
		return "member/mypage/mypage_rodls3";
	}
	
	@RequestMapping("/juso4")
	public String juso4(){
		return "member/juso/jusoPopup4";
	}
	
	@RequestMapping("/juso5")
	public String juso5(){
		return "member/juso/jusoPopup5";
	}
	
	
}
