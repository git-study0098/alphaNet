package com.last.member.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
		return "member/juso/jusoPopup";
		
	}
	
	@RequestMapping("/juso2")
	public String juso2(){
		return "member/juso/jusoPopup2";
	}
	
	@RequestMapping("/signup1")
	public String signUp1(MemberVo vo, HttpServletRequest request){

		
		return "member/signup1";
	}
	
	@RequestMapping("/signup2")
	public String signUp2(MemberVo vo, HttpServletRequest request){
		
		
		return "member/signup2";
	}
	
	@RequestMapping("/signup3")
	public String signUp3(MemberVo vo, HttpServletRequest request){
		
		
		return "member/signup3";
	}
	
	@RequestMapping("/signup4")
	public String signUp4(MemberVo vo, HttpServletRequest request){
		
		
		return "member/signup4";
	}
	
	
	@RequestMapping("/signup")
	public String signUp(MemberVo vo, HttpServletRequest request){

		
		return "member/signup";
	}
	
	@RequestMapping(value="/insertMember",headers=("content-type=multipart/*"),method=RequestMethod.POST)
	public String insert(MemberVo vo ,HttpServletRequest request,
			Model model,@RequestParam("f") MultipartFile multipartFile){
		
		 String upload="C:/git/alphaNet/lastProject/src/main/webapp/resources/upload/image";
		 String url ="redirect:notice";
		 
		 
		 
		 String year = request.getParameter("mem_bir1");
		 String month = request.getParameter("mem_bir2");
		 String day = request.getParameter("mem_bir3");
		 
		 String school = request.getParameter("dacoll"); //대전
		 
		 
		 
		 
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
		vo.setMem_bir(year+month+day);
		vo.setMem_ph(request.getParameter("phone01")+"-"+request.getParameter("phone02")+"-"+request.getParameter("phone03"));
		vo.setMem_phone(request.getParameter("mPhone01")+"-"+request.getParameter("mPhone02")+"-"+request.getParameter("mPhone03"));
		
		vo.setSch_coll(school);
		vo.setSch_code(request.getParameter("daschool2"));

		vo.setMem_photo(fileName[0]+uuid.toString()+"."+fileName[1]);
		
		memberDaoImpl.insert(vo);
		
		return "member/signup4";
	}
	
	@RequestMapping(value="idCheck", method=RequestMethod.POST)
	@ResponseBody
	public String idCheck(String id ,HttpServletRequest request,Model model){
		System.out.println(" 아이티체크");
		String id2  = null;
		id2 = memberDaoImpl.idCheck(id); // 쿼리 id값 나오겟지 y,n
		
		
		
		return id2 ;
	}
	
	
}
