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
public class AdminAllMemberController {
	
	@Autowired
	public AdminMem1Service adminMem1Service;
	
	public void setAdminMem1Service(AdminMem1Service adminMem1Service) {
		this.adminMem1Service = adminMem1Service;
	}
	// 전체 회원 정보 조회
	@RequestMapping("/admin/allmem")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model)
			throws SQLException, ServiceException {
		MemPagingVO viewData = null;
		try {
			viewData = adminMem1Service.selectAllMemberList(pageNumber);
			System.out.println("전체회원 글개수"+viewData.getNotice1TotalCount());
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminMem1Service.selectAllMemberList(pageNumber);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "admin/mem/ad_mem_allList";
	}

	// 전체회원 검색
	@RequestMapping("/admin/allmem/search")
	public String listNotice1(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			HttpServletRequest request) throws SQLException, ServiceException {
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		
		MemPagingVO viewData2=null;
		int count = 0;
	      try {
	    	  count = adminMem1Service.selectAllMemberCount(schType,schText); //검색된 회원수 
	          viewData2= adminMem1Service.searchAllMemberList(pageNumber,schType,schText);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData2.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData2 = adminMem1Service.searchNoticeList(pageNumber,schType,schText);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      model.addAttribute("viewData2",viewData2);
	      model.addAttribute("pageNumber",pageNumber);
	      model.addAttribute("count",count);
	     
		return "admin/mem/ad_mem_allList_search";
	}

	// 상세보기
	@RequestMapping("/admin/allmemDetail")
	public String boardUpdate(
			@RequestParam(value = "id") String id, Model model) {
		String url = "admin/mem/ad_mem_allList_detail";

		MemberVo vo = null;
		try {
			vo = adminMem1Service.selectAllMemberList(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);
		 System.out.println("회원사진"+vo.getMem_photo());


		return url;
	}


	

}
