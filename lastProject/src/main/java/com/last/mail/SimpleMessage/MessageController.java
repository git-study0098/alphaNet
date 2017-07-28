package com.last.mail.SimpleMessage;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {
	private inlineMessage inlineMessage;

	public void setInlineMessage(inlineMessage inlineMessage) {
		this.inlineMessage = inlineMessage;
	}

	@RequestMapping("/client/mail")
	public String mail(){
		return "client/mail";
	}

	
	@RequestMapping("/sms")
	public String sms() {
		return "sms";
	}


	
	@RequestMapping("/client/mailSend")
	@ResponseBody
	public Object mailSend(HttpServletRequest request,
			HttpServletResponse response) {
	
		String email = request.getParameter("email");
		System.out.println(email);
		String ranNum = RandomNum();
		
		ApplicationContext ctx = new GenericXmlApplicationContext("classpath:mail-context.xml");
		inlineMessage simple = ctx.getBean("inlineMessageMail",inlineMessage.class);
		simple.send(email,ranNum);
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("email", email);
		param.put("ranNum", ranNum);
		System.out.println(ranNum);
//		Map<String, String> paramMap = new HashMap<String, String>();
//		paramMap("email",email)
		return param;

	}

	public String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			int num = (int) (Math.random() * 10);
			buffer.append(num);
		}
		return buffer.toString();
	}
	
	
	@RequestMapping("/mail")
	public String memberMail(){
		return "member/memberMail";
	}
	

	@RequestMapping("/mailSend")
	@ResponseBody
	public Object memberMailSend(HttpServletRequest request,
			HttpServletResponse response) {
	
		String email = request.getParameter("email");
		System.out.println(email);
		String ranNum = RandomNum();
		
		ApplicationContext ctx = new GenericXmlApplicationContext("classpath:mail-context.xml");
		inlineMessage simple = ctx.getBean("inlineMessageMail",inlineMessage.class);
		simple.send(email,ranNum);
		Map<String,Object> param = new HashMap<String, Object>();
		param.put("email", email);
		param.put("ranNum", ranNum);
		System.out.println(ranNum);
//		Map<String, String> paramMap = new HashMap<String, String>();
//		paramMap("email",email)
		return param;

	}
	
}
