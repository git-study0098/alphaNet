package com.last.admin.controller.exam;

import java.sql.SQLException;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.service.AdminExamService;
import com.last.common.vo.CalendarVO;
import com.last.common.vo.EmPlaceVO;
import com.last.common.vo.ExkindVO;
import com.last.common.vo.WonseoInfoVo;

@Controller
public class AdminExamController {
	
	@Autowired
	protected AdminExamService adminExamService;

	public void setAdminExamService(AdminExamService adminExamService) {
		this.adminExamService = adminExamService;
	}
	
	@RequestMapping(value="/admin/insertExam")
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
		String exkind_code = com1+com;
		
		vo.setExkind_code(exkind_code);
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
	
	
	
	@RequestMapping("/admin/schedule")
	public String scheduleForm(){
		return "/admin/exam/ad_exam_schedule_detail";
	}
	
	
	
	@RequestMapping("/admin/schduleInsert")
	public String examsch(HttpServletRequest req) {
		String url = "redirect:examsch";
		
		String num = req.getParameter("numg_num");
		System.out.println(num);
		String em_wr_pr_di = req.getParameter("em_wr_pr_di");
		String em_nm = req.getParameter("em_nm");
		String exkind_nm = req.getParameter("exkind_nm");
		String numg_stare_date1 = req.getParameter("numg_stare_date");
		String numg_pass_p_anno_date1 = req.getParameter("numg_pass_p_anno_date");
		String numg_app_receipt_begin1 = req.getParameter("numg_app_receipt_begin");
		String numg_app_receipt_end1 = req.getParameter("numg_app_receipt_end");
		
		GregorianCalendar today = new GregorianCalendar ( );
		//17+?+A
		//17+?+B
		String year1=String.valueOf(today.get ( today.YEAR ));
		
		String em_exkind="";
		int em_pay_pr=0;
		try {
			em_exkind = adminExamService.selectExkind(exkind_nm);
			em_pay_pr = adminExamService.selectExkindPr(em_exkind);
			em_pay_pr = adminExamService.selectExkindWr(em_exkind);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		String numg_stare_date =  numg_stare_date1.replace("-", "/").substring(2);
		String numg_pass_p_anno_date =  numg_pass_p_anno_date1.replace("-", "/").substring(2);
		String numg_app_receipt_begin =  numg_app_receipt_begin1.replace("-", "/").substring(2);
		String numg_app_receipt_end =  numg_app_receipt_end1.replace("-", "/").substring(2);
		
		//맥스값가져와서 하나 더해서 인서트하려고 가져온 애
		String numg1="";
		try {
			numg1 = adminExamService.selectMaxNumgCode();
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
		String numg_code = String.valueOf(1+Integer.parseInt(numg1));
		
		WonseoInfoVo numg = new WonseoInfoVo();
		
			numg.setNumg_code(numg_code);
			numg.setNumg_stare_date(numg_stare_date);
			numg.setNumg_num(Integer.parseInt(num));
			numg.setNumg_app_receipt_begin(numg_app_receipt_begin);
			numg.setNumg_app_receipt_end(numg_app_receipt_end);
			numg.setNumg_pass_p_anno_date(numg_pass_p_anno_date);
			numg.setNumg_color("#F29661");
		
		WonseoInfoVo vo = new WonseoInfoVo();
			vo.setEm_info_code(year1+num+em_exkind);
			vo.setEm_nm(em_nm);
			vo.setEm_numg_code(numg_code);
			vo.setEm_exkind(em_exkind);
			vo.setEm_wr_pr_di(em_wr_pr_di);
		if(em_wr_pr_di.equals("W")){
			vo.setEm_pay_pr(em_pay_pr);
		}else if(em_wr_pr_di.equals("P")){
			vo.setEm_pay_pr(em_pay_pr);	
		}
		
		List<EmPlaceVO> placeCode = null;
		try {
			 placeCode = adminExamService.selectPlaceCode();
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
		
		
		try {
			int result2 = adminExamService.insertNumg(numg);
			int result = adminExamService.insertEminfo(vo);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		for (int i = 0; i < placeCode.size(); i++) {
			EmPlaceVO em = new EmPlaceVO();
			em.setEm_info_code(year1+num+em_exkind);
			em.setPlace_code(placeCode.get(i).getPlace_code());
			
			try {
				adminExamService.insertEmplace(em);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		List<CalendarVO> calList = null;
		try {
			calList = adminExamService.selectList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.setAttribute("calList", calList);

		return url;
	}
	
	@RequestMapping("/admin/exam_list")
	public String exkindAll(Model model){
		String url = "/admin/exam/ad_exam_list";
		List<ExkindVO> exkindList = null;
		try {
			exkindList = adminExamService.selectExkindAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		model.addAttribute("exkindList",exkindList);
		
		return url;
	}
	
	
	
}
