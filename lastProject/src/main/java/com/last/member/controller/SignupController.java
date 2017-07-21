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
import org.springframework.web.bind.annotation.ResponseBody;
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


	@RequestMapping("/juso")
	public String juso(){
		return "member/juso/jusoPopup";
		
	}
	
	@RequestMapping("/juso2")
	public String juso2(){
		return "member/juso/jusoPopup2";
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
		 
		 String school = request.getParameter("daschool2"); //대덕대
		 String school4 = request.getParameter("daschool4"); //충남대
		 
		 
		 
		 
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
		if(school == null){
			vo.setSch_code("SCH2"); // 대덕대학교			 
		}else{
			vo.setSch_code("SCH1"); // 충남대학교
		}
		vo.setMem_photo(fileName[0]+uuid.toString()+"."+fileName[1]);
		
		memberDaoImpl.insert(vo);
		
		return "redirect:main";
	}
	
	@RequestMapping(value="idCheck", method=RequestMethod.POST)
	@ResponseBody
	public int idCheck(String id){
		int result = -1;
		result = memberDaoImpl.idCheck(id);
		
		return result;
	}
	
	
}
