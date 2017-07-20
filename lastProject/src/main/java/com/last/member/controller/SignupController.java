package com.last.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.last.common.dao.MemberDAOImpl;
import com.last.common.vo.MemberVo;

@Controller
public class SignupController {
	
	@Autowired
	private MemberDAOImpl memberDaoImpl;
	
	
	public void setMemberDaoImpl(MemberDAOImpl memberDaoImpl) {
		this.memberDaoImpl = memberDaoImpl;
	}


	@RequestMapping("/juso1")
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
	
	@RequestMapping(value="/insertMember",headers=("content-type=multipart/*"),method=RequestMethod.POST)
	public String insert(MemberVo vo ,HttpServletRequest request,
			Model model,@RequestParam("f") MultipartFile multipartFile){
		
		 String upload="C:/git/alpha_net/lastProject/src/main/webapp/resources/upload";
		 String url ="redirect:notice";
		 
		 
		 String str = multipartFile.getOriginalFilename();
		 
		 StringTokenizer tokens = new StringTokenizer( str, "." );
		 String[] fileName = {"1","txt"};
		 int i=0;
		 while(tokens.hasMoreTokens()){
			 fileName[i] = tokens.nextToken();
			 i++;
		 }
		 
		 UUID uuid = UUID.randomUUID();
		 
	      if(!multipartFile.isEmpty()){
	         File file= new File(upload, fileName[0]+uuid.toString()+"."+fileName[1]);
	         
	         try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	         
	      }
		
		System.out.println("컨트롤러 회원가입");
		
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("mem_pwd"));
		vo.setName(request.getParameter("name"));
		vo.setAttach_file(fileName[0]+uuid.toString()+"."+fileName[1]);
		
		memberDaoImpl.insert(vo);
		
		return "redirect:main";
	}
	
	
}
