package com.last.member.controller.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.AdminNotice1Service;
import com.last.common.service.ServiceException;
import com.last.common.vo.PagingVO;

@Controller
public class MemberNoticeController {
	
	@Autowired
	private AdminNotice1Service adminNotice1Service;
	
	public void setAdminNotice1Service(AdminNotice1Service adminNotice1Service) {
		this.adminNotice1Service = adminNotice1Service;
	}
	
	@RequestMapping("/memberNotice1")
	public String listNotice(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice01" )String notice_code,
							 HttpServletRequest request )throws SQLException, ServiceException{
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		PagingVO viewData=null;
	      try {
	          viewData= adminNotice1Service.searchNoticeList(pageNumber, notice_code, schType,schText);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData = adminNotice1Service.searchNoticeList(pageNumber, notice_code, schType,schText);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      model.addAttribute("viewData",viewData);
	      model.addAttribute("pageNumber",pageNumber);
	      
	      return "member/board/notice/notice";
	}
	
	@RequestMapping("/memberNotice2")
	public String listNotice1(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice01" )String notice_code,
							 HttpServletRequest request )throws SQLException, ServiceException{
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		PagingVO viewData2=null;
		int count = 0;
	      try {
	    	  count = adminNotice1Service.selectCount(notice_code,schType,schText);
	          viewData2= adminNotice1Service.searchNoticeList(pageNumber, notice_code, schType,schText);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData2.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData2 = adminNotice1Service.searchNoticeList(pageNumber, notice_code, schType,schText);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      model.addAttribute("viewData2",viewData2);
	      model.addAttribute("pageNumber",pageNumber);
	      model.addAttribute("count",count);
	      
	      return "member/board/notice/notice_search";
	}
	
	
	
}
