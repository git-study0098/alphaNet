package com.last.member.mypage;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	
	@RequestMapping("/member/myInfo" )
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
	
	@RequestMapping(value ="/updateMember",headers=("content-type=multipart/*"), method=RequestMethod.POST )
	public String update(MemberVo vo,@RequestParam("f") MultipartFile multipartFile){
		System.out.println("컨트롤러 업데이트");
		User  id = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String upload="C:/git/alphaNet/lastProject/src/main/webapp/resources/upload/image";
		String url = "member/mypage/mypage_rodls1";
		int result =-1;
		String message = "";

		String str = multipartFile.getOriginalFilename();
		 System.out.println(str);
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
		vo.setId(id.getUsername());
		vo.setMem_photo(fileName[0]+uuid.toString()+"."+fileName[1]);
		System.out.println(fileName[0]+uuid.toString()+"."+fileName[1]);
		try {
			result = memdaoImpl.updateMember(vo, id.getUsername());
			System.out.println(id.getUsername());
			System.out.println("성공ㄴ");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		if(result == 1){
			message = "회원정보수정되었습니다.";
			
		}else{
			message = "실패하였습니다.";
		}
		
		return url;
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
