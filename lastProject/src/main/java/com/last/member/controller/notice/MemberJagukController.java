package com.last.member.controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.last.common.service.JagukService;

@Controller
public class MemberJagukController {

	@Autowired
	protected JagukService jagukService;

	public void setJagukService(JagukService jagukService) {
		this.jagukService = jagukService;
	}
	
	
	
}
