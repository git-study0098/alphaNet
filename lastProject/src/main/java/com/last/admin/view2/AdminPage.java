package com.last.admin.view2;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.dao.AdminExamDAO;
import com.last.common.service.AdminService;
import com.last.common.vo.AdminVO;
import com.last.common.vo.CalendarVO;

@Controller
public class AdminPage {
	
	@Autowired
	private AdminService adminService;

	@Autowired
	private AdminExamDAO adminExamDao;

	public void setAdminExamDao(AdminExamDAO adminExamDao) {
		this.adminExamDao = adminExamDao;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping("/admin/login/main2")
	public String adminmain(HttpSession session){
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String admin = user.getUsername();

		AdminVO vo = null;
		try {
			vo = adminService.selectAdmin(admin);
			session.setAttribute("admin", vo.getManager_dep());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "admin/ad_main";
	}

	@RequestMapping("/admin/exam")
	public String exam() {
		return "admin/exam/ad_exam";
	}


	@RequestMapping("/admin/examsch")
	public String examsch(HttpServletRequest request) {
		List<CalendarVO> calList = null;

		try {
			calList = adminExamDao.selectList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("calList", calList);

		return "admin/exam/ad_exam_schedule";
	}

	@RequestMapping("/admin/examschd")
	public String examschd() {
		return "admin/exam/ad_exam_schedule_detail";
	}

	@RequestMapping("/admin/examde1")
	public String examde1() {
		return "admin/exam/ad_exam_detail1";
	}

	@RequestMapping("/admin/examde2")
	public String examde2() {
		return "admin/exam/ad_exam_detail2";
	}

	@RequestMapping("/admin/examde3")
	public String examde3() {
		return "admin/exam/ad_exam_detail3";
	}

	@RequestMapping("/admin/examin1")
	public String examin1() {
		return "admin/exam/ad_exam_insert1";
	}

	@RequestMapping("/admin/examin2")
	public String examin2() {
		return "admin/exam/ad_exam_insert2";
	}

	@RequestMapping("/admin/examin3")
	public String examdin3() {
		return "admin/exam/ad_exam_insert3";
	}

	@RequestMapping("/admin/mem")
	public String mem() {
		return "admin/mem/ad_mem";
	}

	@RequestMapping("/admin/memde")
	public String memde() {
		return "admin/mem/ad_mem_detail";
	}

	@RequestMapping("/admin/smem")
	public String smem() {
		return "admin/mem/ad_stare_mem";
	}

	@RequestMapping("/admin/smemde")
	public String smemde() {
		return "admin/mem/ad_stare_mem_detail";
	}

}
