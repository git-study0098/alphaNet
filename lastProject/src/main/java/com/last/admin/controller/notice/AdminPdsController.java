package com.last.admin.controller.notice;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.last.common.service.AdminPdsService;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class AdminPdsController {

	@Autowired
	private AdminPdsService adminPdsService;

	public void setadminPdsService(AdminPdsService adminPdsService) {
		this.adminPdsService = adminPdsService;
	}


	@RequestMapping("/admin/adminpdsRegist")
	public String listpdsRegist() {
		return "admin/board/pds/pds1_registry";
	}

	// 사이트이용안내 리스트
	@RequestMapping("/admin/pds")
	public String listpds(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "pds01") String notice_code)
			throws SQLException, ServiceException {
		PagingVO viewData = null;
		try {
			viewData = adminPdsService.selectNotice1List(pageNumber,notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminPdsService.selectNotice1List(pageNumber,notice_code);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "/admin/board/pds/pds1_notice";
	}

	@RequestMapping(value = "/admin/pdsInsert", headers=("content-type=multipart/*"), method = RequestMethod.POST)
	public String pdsInsert(HttpServletRequest request, Model model,
			@RequestParam("f") MultipartFile multipartFile ,
			@RequestParam(value="notice_code" , defaultValue="pds01")String pds){
		
		 String upload="C:/git/alpha_net/lastProject/src/main/webapp/resources/upload";
		 String url ="redirect:pds";
		 
		 
		 String str = multipartFile.getOriginalFilename();
		 
		 StringTokenizer tokens = new StringTokenizer( str, "." );
		 String[] fileName = {"1","txt"};
		 int i=0;
		 while(tokens.hasMoreTokens()){
			 fileName[i] = tokens.nextToken();
			 i++;
		 }
		 
		 UUID uuid = UUID.randomUUID();
		 
	      if(!multipartFile.isEmpty()){
	         File file= new File(upload, fileName[0]+uuid.toString()+"."+fileName[1]);
	         
	         try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	         
	      }

		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(adminPdsService.registNotice(pds));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(fileName[0]+uuid.toString()+"."+fileName[1]);
		vo.setTitle(request.getParameter("title"));
		vo.setEnroll_date(new Date(12));

		model.addAttribute(vo);

		int result = 0;
		try {
			result = adminPdsService.insertNotice1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	@RequestMapping("/admin/pdsUpdateForm")
	public String pdsUpdate(
			@RequestParam(value = "notice_code") String noticeCode, Model model) {
		String url = "admin/board/pds/pds1_update";

		Notice1VO vo = null;
		try {
			vo = adminPdsService.selectNoticeCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	@RequestMapping("/admin/pdsUpdate")
	public String pdsUpdate(HttpServletRequest request, Model model) {
		String url = "redirect:pds";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setTitle(request.getParameter("title"));

		model.addAttribute(vo);

		try {
			adminPdsService.updateNotice1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	// 삭제 실행시켜주는 화면
	@RequestMapping("/admin/pdsDelete")
	public String pdsDelete(
			@RequestParam(value = "notice_code") String noticeCode) {
		String url = "redirect:pds";
		System.out.println(noticeCode);
		System.out.println("삭제");
		Notice1VO vo = new Notice1VO();
		System.out.println(vo.getNotice_code());
		try {
			adminPdsService.deleteNotice1(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
