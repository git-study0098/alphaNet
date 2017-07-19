package com.last.member.controller.notice;

import java.sql.SQLException;

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
	public String listNotice(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice01" )String notice_code)throws SQLException, ServiceException{
		PagingVO viewData=null;
	      try {
	          viewData= adminNotice1Service.selectNotice1List(pageNumber,notice_code);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData = adminNotice1Service.selectNotice1List(pageNumber,notice_code);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      model.addAttribute("viewData",viewData);
	      model.addAttribute("pageNumber",pageNumber);
	      
	      return "member/board/notice/notice";
	}
	
	@RequestMapping("/searchNotice1")
	public String searchNotice(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,
							   @RequestParam(value="notice_code", defaultValue="notice01" )String notice_code,
							   @RequestParam(value="searchValue")String searchValue)throws SQLException, ServiceException{
		PagingVO viewData=null;
	      try {
	          viewData= adminNotice1Service.selectNotice1List(pageNumber,notice_code);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData = adminNotice1Service.selectNotice1List(pageNumber,notice_code);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      model.addAttribute("viewData",viewData);
	      model.addAttribute("pageNumber",pageNumber);
	      
	      return "member/board/notice/notice";
	}
	

	
	
}
