package com.last.sound;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.client.service.ClientService;
import com.last.common.vo.Notice1VO;

@Controller
public class Autocontroller {
	

	@Autowired
	private ClientService clientService;

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}
	@RequestMapping("/client/main")
	public String adminMain(HttpServletRequest request, @RequestParam(value="notice_code", defaultValue="cn001" )String notice_code) throws SQLException {	
		List<Notice1VO> fiveNotice = clientService.fiveNotice(notice_code);
		Notice1VO vo = null;
		request.setAttribute("vo", vo);
		request.setAttribute("five", fiveNotice);
		
		return "client/main";
	}

	@RequestMapping("/client/auto")
	public String auto(){
		return "client/auto";
	}
	
	@RequestMapping("/client/client")
	public String client(){
		return "client/client";
	}
	
	@RequestMapping("/client/question")
	public String question(){
		return "client/question";
	}
	
	@RequestMapping("/cilent/question2")
	public String question2(){
		return "client/question2";
	}
	
	@RequestMapping("/client/question3")
	public String question3(){
		return "client/question3";
	}
	
	@RequestMapping("/client/detail")
	public String detail(){
		return "client/detail";
	}

}
