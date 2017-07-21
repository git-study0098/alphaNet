package com.last.admin.controller;

import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.service.AdminExamService;
import com.last.common.vo.ExkindVO;

@Controller
public class AdminExamController {
	
	@Autowired
	protected AdminExamService adminExamService;

	public void setAdminExamService(AdminExamService adminExamService) {
		this.adminExamService = adminExamService;
	}
	
	@RequestMapping("/admin/insertExam")
	public String insertExam(Model model,HttpServletRequest req){
		String url = "redirect:/admin/exam";
		
		String com = req.getParameter("comp");
		String com1 = req.getParameter("comp1");
		System.out.println(com);
		System.out.println(com1);
		String exkind_nm = req.getParameter("exkind_nm");
		int exkind_wr_pay_pr = Integer.parseInt(req.getParameter("exkind_wr_pay_pr"));
		int exkind_pr_pay_pr = Integer.parseInt(req.getParameter("exkind_pr_pay_pr"));
		String exkind_agency_nm = req.getParameter("exkind_agency_nm");
		String exkind_homepage = req.getParameter("exkind_homepage");
		
		ExkindVO vo = new ExkindVO();
		
		vo.setExkind_code(com+com1);
		vo.setExkind_nm(exkind_nm);
		vo.setExkind_wr_pay_pr(exkind_wr_pay_pr);
		vo.setExkind_pr_pay_pr(exkind_pr_pay_pr);
		vo.setExkind_agency_nm(exkind_agency_nm);
		vo.setExkind_homepage(exkind_homepage);
		
		String wsu1 = req.getParameter("wsu1");
		String wsu2 = req.getParameter("wsu2");
		String wsu3 = req.getParameter("wsu3");
		String wsu4 = req.getParameter("wsu4");
		String wsu5 = req.getParameter("wsu5");
		
		String exkind_code = com+com1;
		
		String psu1 = req.getParameter("psu1");
		String psu2 = req.getParameter("psu2");
		String psu3 = req.getParameter("psu3");
		String psu4 = req.getParameter("psu4");
		String psu5 = req.getParameter("psu5");
		
		try {
			adminExamService.insertExkind(vo);
			adminExamService.insertWSubj(wsu1,exkind_code);
			adminExamService.insertWSubj(wsu2,exkind_code);
			adminExamService.insertWSubj(wsu3,exkind_code);
			adminExamService.insertWSubj(wsu4,exkind_code);
			adminExamService.insertWSubj(wsu5,exkind_code);
			adminExamService.insertPSubj(psu1,exkind_code);
			adminExamService.insertPSubj(psu2,exkind_code);
			adminExamService.insertPSubj(psu3,exkind_code);
			adminExamService.insertPSubj(psu4,exkind_code);
			adminExamService.insertPSubj(psu5,exkind_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return url;
	}
	
	
	
}
