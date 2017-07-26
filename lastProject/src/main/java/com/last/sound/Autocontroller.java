package com.last.sound;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Autocontroller {

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
	

}
