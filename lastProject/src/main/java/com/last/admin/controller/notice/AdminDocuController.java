package com.last.admin.controller.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.AdminDocuService;
import com.last.common.service.ServiceException;
import com.last.common.vo.DocVO;
import com.last.common.vo.DocuPagingVO;

@Controller
public class AdminDocuController {
	
	@Autowired
	public AdminDocuService adminDocuService;
	
	public void setAdminMem1Service(AdminDocuService adminDocuService) {
		this.adminDocuService = adminDocuService;
	}
	// 승인 신청 서류 조회
	@RequestMapping("/admin/docu")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model)
			throws SQLException, ServiceException {
		DocuPagingVO viewData = null;
		try {
			viewData = adminDocuService.selectAllDocuList(pageNumber);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getdocuList().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminDocuService.selectAllDocuList(pageNumber);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "admin/mem/ad_docu_list";
	}

	// 상세보기
	@RequestMapping("/admin/docDetail")
	public String boardUpdate(
			@RequestParam(value = "id") String id, Model model) {
		String url = "admin/mem/ad_docu_detail";
		
		DocVO vo = null;
		
		try {
			vo = adminDocuService.selectDocuDetail(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	 //수정 실행시켜주는 화면
	@RequestMapping(value ="/admin/docUpdate", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String boardUpdate(HttpServletRequest request, Model model,
			@RequestParam(value = "sub_code") String sub_code) {
		String url = "redirect:docu";
		
		DocVO vo = new DocVO();
		vo.setSub_code(sub_code);
		
		String approve = request.getParameter("approve_at");
		//승인 
		if(approve.equals("N")){
			vo.setApprove_at("Y");
		}else{
			vo.setApprove_at("N");
		}
		
		model.addAttribute(vo);
		try {
			adminDocuService.updateAdminDoc(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}
	

	

}
