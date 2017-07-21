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

import com.last.common.service.AdminClientService;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class AdminClient1Controller {

	@Autowired
	private AdminClientService adminClientService;

	public void setAdminClientService(AdminClientService adminClientService) {
		this.adminClientService = adminClientService;
	}

	@RequestMapping("/admin/clientRegist")
	public String listclientRegist() {
		return "admin/board/client/client1_registry";
	}

	// 사이트이용안내 리스트
	@RequestMapping("/admin/client")
	public String listclient(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "client01") String notice_code)
			throws SQLException, ServiceException {
		PagingVO viewData = null;
		try {
			viewData = adminClientService.selectNotice1List(pageNumber,notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminClientService.selectNotice1List(pageNumber,notice_code);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "/admin/board/client/client1_notice";
	}

	@RequestMapping(value = "/admin/clientInsert", headers=("content-type=multipart/*"), method = RequestMethod.POST)
	public String clientInsert(HttpServletRequest request, Model model,
			@RequestParam("f") MultipartFile multipartFile ,
			@RequestParam(value="notice_code" , defaultValue="clinet01")String client){
		
		 String upload="C:/git/alpha_net/lastProject/src/main/webapp/resources/upload";
		 String url ="redirect:client";
		 
		 
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
		vo.setNotice_code(adminClientService.registNotice(client));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(fileName[0]+uuid.toString()+"."+fileName[1]);
		vo.setTitle(request.getParameter("title"));
		vo.setEnroll_date(new Date(12));

		model.addAttribute(vo);

		int result = 0;
		try {
			result = adminClientService.insertNotice1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	@RequestMapping("/admin/clientUpdateForm")
	public String clientUpdate(
			@RequestParam(value = "notice_code") String noticeCode, Model model) {
		String url = "admin/board/client/client1_update";

		Notice1VO vo = null;
		try {
			vo = adminClientService.selectNoticeCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	@RequestMapping("/admin/clientUpdate")
	public String clientUpdate(HttpServletRequest request, Model model) {
		String url = "redirect:client";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setTitle(request.getParameter("title"));
		vo.setNotice_kind(request.getParameter("notice_kind"));

		model.addAttribute(vo);

		try {
			adminClientService.updateNotice1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	// 삭제 실행시켜주는 화면
	@RequestMapping("/admin/clientDelete")
	public String clientDelete(
			@RequestParam(value = "notice_code") String noticeCode) {
		String url = "redirect:client";
		System.out.println(noticeCode);
		System.out.println("삭제");
		Notice1VO vo = new Notice1VO();
		System.out.println(vo.getNotice_code());
		try {
			adminClientService.deleteNotice1(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
