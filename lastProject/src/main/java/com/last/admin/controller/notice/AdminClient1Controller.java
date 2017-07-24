package com.last.admin.controller.notice;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.last.common.dao.AdminExamDAO;
import com.last.common.service.AdminClient1Service;
import com.last.common.service.AdminNotice1Service;
import com.last.common.service.AdminService;
import com.last.common.service.ServiceException;
import com.last.common.vo.AdminVO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class AdminClient1Controller {

	@Autowired
	private AdminClient1Service adminClient1Service;

	public void setAdminClient1Service(AdminClient1Service adminClient1Service) {
		this.adminClient1Service = adminClient1Service;
	}

	@RequestMapping("/admin/clientRegist")
	public String listRegist() {
		return "admin/board/client/admin_client_1_registry";
	}

	// FAQ
	@RequestMapping("/admin/client")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "cn001") String notice_code)
			throws SQLException, ServiceException {
		PagingVO viewData = null;
		try {
			viewData = adminClient1Service.selectNotice1List(pageNumber,
					notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminClient1Service.selectNotice1List(pageNumber,
						notice_code);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData", viewData);
		System.out.println("faq 첫행"+viewData.getFirstRow());
		System.out.println("faq 마지막행"+viewData.getEndRow());
		model.addAttribute("pageNumber", pageNumber);
		return "admin/board/client/admin_client1";
	}

	// 검색
	@RequestMapping("/admin/client/search")
	public String listNotice1(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "cn001") String notice_code,
			HttpServletRequest request) throws SQLException, ServiceException {
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		PagingVO viewData2=null;
		int count = 0;
	      try {
	    	  count = adminClient1Service.selectCount(notice_code,schType,schText);
	          viewData2= adminClient1Service.searchNoticeList(pageNumber, notice_code, schType,schText);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData2.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData2 = adminClient1Service.searchNoticeList(pageNumber, notice_code, schType,schText);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      model.addAttribute("viewData2",viewData2);
	      model.addAttribute("pageNumber",pageNumber);
	      model.addAttribute("count",count);

		return "admin/board/client/admin_client1_search";
	}

	@RequestMapping(value = "/admin/clientInsert", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String boardInsert(
			HttpServletRequest request,
			Model model,
			@RequestParam("f") MultipartFile multipartFile,
			@RequestParam(value = "notice_code", defaultValue = "cn001") String notice) {

		String upload = "C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
		String url = "redirect:client";

		String str = multipartFile.getOriginalFilename();

		StringTokenizer tokens = new StringTokenizer(str, ".");
		String[] fileName = { "1", "txt" };
		int i = 0;
		while (tokens.hasMoreTokens()) {
			fileName[i] = tokens.nextToken();
			i++;
		}

		if (!multipartFile.isEmpty()) {
			File file = new File(upload, fileName[0] + "." + fileName[1]);
			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code("ADM001");
		vo.setManager_dep(request.getParameter(vo.getManager_dep()));
		// vo.setAdmin_code(request.getParameter(vo.getAdmin_code()));
		vo.setNotice_code(adminClient1Service.registNotice(notice));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(fileName[0] + "." + fileName[1]);
		vo.setRegist_date(new Date(12));
		vo.setTitle(request.getParameter("title"));

		model.addAttribute(vo);

		int result = 0;
		try {
			result = adminClient1Service.insertNotice1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

	// 상세보기
	@RequestMapping("/admin/clientUpdateForm")
	public String boardUpdate(
			@RequestParam(value = "notice_code") String noticeCode, Model model) {
		String url = "admin/board/client/admin_client_1_update";

		Notice1VO vo = null;
		try {
			vo = adminClient1Service.selectNoticeCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	// 수정 실행시켜주는 화면
	@RequestMapping(value ="/admin/clientUpdate", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String boardUpdate(HttpServletRequest request, Model model,
			@RequestParam("f") MultipartFile multipartFile) {
		String url = "redirect:client";

		String upload = "C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
		String str = multipartFile.getOriginalFilename();

		StringTokenizer tokens = new StringTokenizer(str, ".");
		String[] fileName = { "1", "txt" };
		int i = 0;
		while (tokens.hasMoreTokens()) {
			fileName[i] = tokens.nextToken();
			i++;
		}

		if (!multipartFile.isEmpty()) {
			File file = new File(upload, fileName[0] + "." + fileName[1]);
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
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setEnroll_date(new Date(1000000));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setRegist_date(new Date(1000000));
		vo.setTitle(request.getParameter("title"));
		vo.setAttach_file(fileName[0] + "." + fileName[1]);
		
		model.addAttribute(vo);

		try {
			adminClient1Service.updateNotice1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	// 삭제 실행시켜주는 화면
	@RequestMapping("/admin/clientDelete")
	public String boardDelete(
			@RequestParam(value = "notice_code") String noticeCode) {
		String url = "redirect:client";
		System.out.println(noticeCode);
		System.out.println("삭제");
		Notice1VO vo = new Notice1VO();
		System.out.println(vo.getNotice_code());
		try {
			adminClient1Service.deleteNotice1(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
