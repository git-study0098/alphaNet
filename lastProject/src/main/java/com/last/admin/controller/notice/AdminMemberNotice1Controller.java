package com.last.admin.controller.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.AdminMem1Service;
import com.last.common.service.ServiceException;
import com.last.common.vo.MemPagingVO;
import com.last.common.vo.MemberVo;

@Controller
public class AdminMemberNotice1Controller {
	
	@Autowired
	public AdminMem1Service adminMem1Service;
	
	public void setAdminMem1Service(AdminMem1Service adminMem1Service) {
		this.adminMem1Service = adminMem1Service;
	}
	
	// 휴면회원 조회
	@RequestMapping("/admin/inmem")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model)
//			@RequestParam(value = "notice_code", defaultValue = "imem0001") String notice_code)
			throws SQLException, ServiceException {
		MemPagingVO viewData = null;
		try {
			viewData = adminMem1Service.selectNotice1List(pageNumber);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminMem1Service.selectNotice1List(pageNumber);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "admin/mem/ad_inactive_mem";
	}

	// 상세보기
	@RequestMapping("/admin/memDetail")
	public String boardUpdate(
			@RequestParam(value = "id") String id, Model model) {
		String url = "admin/mem/ad_mem_detail";

		MemberVo vo = null;
		try {
			vo = adminMem1Service.selectAllMemberList(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);
		System.out.println("사진"+vo.getMem_photo());

		return url;
	}



	

}
