package com.last.admin.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.last.common.service.AdminQualifiService;
import com.last.common.vo.QualifiCertiVO;

@Controller
public class AdminJagukTrue1Controller {

	@Autowired
	AdminQualifiService adminQualifiService;

	public void setAdminQualifiService(AdminQualifiService adminQualifiService) {
		this.adminQualifiService = adminQualifiService;
	}
	
	@RequestMapping("/jagukTrue")
	public String jagukJagukTrue(){
		return "member/jaguk/jaguk_true";
	}
	
	@RequestMapping("/confirmTrue")
	public String jagukConfirmTrue(){
		return "member/jaguk/confirm_true";
	}
	
	@RequestMapping(value="jagukHwa", method=RequestMethod.POST)
	@ResponseBody
	public QualifiCertiVO jagukConfirmTrue(HttpServletRequest req,Model model){
		String mem_nm = req.getParameter("mem_nm");
		System.out.println(mem_nm);
		String reg_num1 = req.getParameter("reg_num1");
		String qualifi_certi_code = req.getParameter("qualifi_certi_code");
		String qualifi_certi_date = req.getParameter("qualifi_certi_date");
		
		QualifiCertiVO vo = new QualifiCertiVO();
		
		vo.setMem_nm(mem_nm);
		vo.setReg_num1(reg_num1);
		vo.setQualifi_certi_code(qualifi_certi_code);
		vo.setQualifi_certi_date(qualifi_certi_date);
		
		
		QualifiCertiVO vo1 = new QualifiCertiVO();
		
		try {
			vo1 = adminQualifiService.checkQualifi(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(vo1!=null){
 		if(vo1.getQualifi_certi_code().equals("comp1")){
 			vo1.setQualifi_certi_code("정보처리기사");
 		}
		}
		
 		
		
		return vo1;
	}
	
	
	
}
