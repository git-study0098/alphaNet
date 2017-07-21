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
import com.last.common.vo.WonseoInfoVo;

@Controller
public class MainController {
	@Autowired
	private MainService mainService;

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("/main")
	public String listNotice1(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice01") String notice_code)
			throws SQLException {
		PagingVO viewData = null;
		List<WonseoInfoVo> viewData2 = null;

		try {
			viewData2 = mainService.selectWonseoList();
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);

		return "1main";
	}
	
	//상세보기
	@RequestMapping("detailNotice")
	public String boardDetail(@RequestParam(value="notice_code") String notice_code,Model model){
		String url ="member/board/notice/notice_detail";
		
		Notice1VO vo = null;
		try {
			vo = mainService.detailNotice(notice_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);
		
		return url;
	}

	@RequestMapping("/mainNotice2")
	public String listNotice2(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice02") String notice_code)
			throws SQLException {
		PagingVO viewData = null;
		try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		model.addAttribute("viewData", viewData);

		return "2main";
	}

	@RequestMapping("/mainNotice3")
	public String listNotice3(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice03") String notice_code)
			throws SQLException {
		PagingVO viewData = null;
		try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		model.addAttribute("viewData", viewData);

		return "3main";
	}

	@RequestMapping("/mainNotice4")
	public String listNotice4(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice04") String notice_code)
			throws SQLException {
		PagingVO viewData = null;
		try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		model.addAttribute("viewData", viewData);

		return "4main";
	}

	@RequestMapping("/mainNotice5")
	public String listNotice5(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice05") String notice_code)
			throws SQLException {
		PagingVO viewData = null;
		try {
			viewData = mainService.selectNotice1List(pageNumber, notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		model.addAttribute("viewData", viewData);

		return "5main";
	}

}
