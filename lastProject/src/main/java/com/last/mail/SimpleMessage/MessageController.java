package com.last.mail.SimpleMessage;

import java.util.HashMap;

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

	@RequestMapping("/mail")
	public String mail(){
		return "mail";
	}

	
	@RequestMapping("/sms")
	public String sms() {
		return "sms";
	}


	
	@RequestMapping("mailSend")
	@ResponseBody
	public ModelAndView mailSend(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String eamil = email1 + "@" + email2;
		System.out.println(eamil);
		String ranNum = RandomNum();
		
		ApplicationContext ctx = new GenericXmlApplicationContext("classpath:mail-context.xml");
		inlineMessage simple = ctx.getBean("inlineMessageMail",inlineMessage.class);
		simple.send(eamil,ranNum);
		mv.setViewName("mail");
		mv.addObject("email", eamil);
		mv.addObject("ranNum",ranNum);
		System.out.println(ranNum);
//		Map<String, String> paramMap = new HashMap<String, String>();
//		paramMap("email",email)
		return mv;

	}

	public String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			int num = (int) (Math.random() * 10);
			buffer.append(num);
		}
		return buffer.toString();
	}
}
