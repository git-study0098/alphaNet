package com.last.all.controller;

import java.io.File;
import java.io.IOException;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.last.client.dao.ClientDao;
import com.last.client.service.ClientService;
import com.last.common.vo.ClientVO;

@Controller
public class InsertController4 {

	
	@Autowired
	private ClientDao clientDao;
	
	@Autowired
	private ClientService clientService;
	
	
	
	public ClientService getClientService() {
		return clientService;
	}


	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}






	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}



	
	
	
	@RequestMapping(value="insert4",headers=("content-type=multipart/*"),method = RequestMethod.POST)
	public String insert(HttpServletRequest request,ClientVO vo,@RequestParam("f")MultipartFile multipartFile,@RequestParam(value="client_code", defaultValue="client04" )String client_code, HttpSession session) throws Exception {
		System.out.println("컨트롤러 들어왕");
		String message ="";
		//파일 경로 디비저장
		 String upload="C:/git/alpha_net/lastProject/src/main/webapp/resources/upload";
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
		
		String email1 = request.getParameter("mail");
		String email2 = request.getParameter("selmail2");
		
		String phoneHead = request.getParameter("moblie1");
		String phone1 = request.getParameter("moblie2");
		String phone2 = request.getParameter("moblie3");
		String phone = phoneHead+"-"+phone1+"-"+phone2;
		
		
		System.out.println(phone);
		System.out.println(email1+"@"+email2);
		vo.setClient_code(clientService.registNotice(client_code));
		vo.setClient_email(email1+"@"+email2);
		vo.setClient_ph(phone);
		vo.setClient_attach_file(fileName[0]+uuid.toString()+"."+fileName[1]);
		
		
		int result = clientDao.insertQna(vo); //성공했으면 1 안했으면 -1
		
		if(result ==1){
			message="고객의소리를 남기는데 성공하였습니다.";
			session.setAttribute("authUser",vo.getClient_ph());
		}else{
			message="고객의소리를 남기는데 실패하였습니다.\n다시시도해주세요.";
		}
		session.setAttribute("message", message);
		return "redirect:/client/main";
	}

}
