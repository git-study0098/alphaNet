package com.last.admin.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.MainService;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class MainController {
	@Autowired
	private MainService mainService;

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("/mainNotice1")
	public String listNotice1(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice01" )String notice_code)throws SQLException{
		  PagingVO viewData=null;
		  try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	      
	      model.addAttribute("viewData",viewData);
	      
	      return "1main";
	}
	
	@RequestMapping("/mainNotice2")
	public String listNotice2(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice02" )String notice_code)throws SQLException{
		  PagingVO viewData=null;
		  try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	      
	      model.addAttribute("viewData",viewData);
	      
	      return "2main";
	}
	
	
	@RequestMapping("/mainNotice3")
	public String listNotice3(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice03" )String notice_code)throws SQLException{
		  PagingVO viewData=null;
		  try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	      
	      model.addAttribute("viewData",viewData);
	      
	      return "3main";
	}
	
	@RequestMapping("/mainNotice4")
	public String listNotice4(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice04" )String notice_code)throws SQLException{
		  PagingVO viewData=null;
		  try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	      
	      model.addAttribute("viewData",viewData);
	      
	      return "4main";
	}
	
	@RequestMapping("/mainNotice5")
	public String listNotice5(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="notice05" )String notice_code)throws SQLException{
		  PagingVO viewData=null;
		  try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	      
	      model.addAttribute("viewData",viewData);
	      
	      return "5main";
	}
	
	
	
}
