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
	      System.out.println();
	      model.addAttribute("viewData",viewData);
	      model.addAttribute("pageNumber",pageNumber);
	      
	      return "member/board/notice/notice";
	}
	
	@RequestMapping("/memberNotice2")
	public String listNotice2(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice02" )String notice_code,
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
		System.out.println();
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
		return "member/board/notice/notice2";
	}
	@RequestMapping("/memberNotice3")
	public String listNotice3(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice03" )String notice_code,
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
		System.out.println();
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
		return "member/board/notice/notice3";
	}
	@RequestMapping("/memberNotice4")
	public String listNotice4(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice04" )String notice_code,
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
		System.out.println();
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
		return "member/board/notice/notice4";
	}
	@RequestMapping("/memberNotice5")
	public String listNotice5(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice05" )String notice_code,
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
		System.out.println();
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
		return "member/board/notice/notice5";
	}
	
	@RequestMapping("/useInfo")
	public String useInfo(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="useinfo0" )String notice_code,
			 HttpServletRequest request )throws SQLException, ServiceException{
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		PagingVO viewData=null;
		try {
			viewData = adminNotice1Service.searchNoticeList(pageNumber,
					notice_code, schType, schText);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		if(viewData.getNotice1List().isEmpty()){
			pageNumber--;
			if(pageNumber<=0) pageNumber=1;
			try {
				viewData = adminNotice1Service.searchNoticeList(pageNumber,
						notice_code, schType, schText);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
		return "member/board/useinfo/useInfo";
	}
	
	@RequestMapping("/pdsList")
	public String pdsList(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="pds01100" )String notice_code,
			 HttpServletRequest request )throws SQLException, ServiceException{
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		PagingVO viewData=null;
		try {
			viewData = adminNotice1Service.searchNoticeList(pageNumber,
					notice_code, schType, schText);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		if(viewData.getNotice1List().isEmpty()){
			pageNumber--;
			if(pageNumber<=0) pageNumber=1;
			try {
				viewData = adminNotice1Service.searchNoticeList(pageNumber,
						notice_code, schType, schText);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
		return "member/board/pds/pds";
	}
	@RequestMapping("/change")
	public String change(){
		return "member/board/change/change1";
	}
	@RequestMapping("/notice/getJob")
	public String customize1(){
		return "member/board/customize/customize1";
	}
	@RequestMapping("/notice/college")
	public String customize2(){
		return "member/board/customize/customize2";
	}
}
