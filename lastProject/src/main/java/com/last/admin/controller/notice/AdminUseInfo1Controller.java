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

import com.last.common.service.AdminUseInfo1Service;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class AdminUseInfo1Controller {

	@Autowired
	private AdminUseInfo1Service adminUseInfo1Service;

	public void setAdminUseInfo1Service(
			AdminUseInfo1Service adminUseInfo1Service) {
		this.adminUseInfo1Service = adminUseInfo1Service;
	}


	@RequestMapping("/admin/adminUseInfoRegist")
	public String listUseInfoRegist() {
		return "admin/board/useinfo/useInfo1_registry";
	}

	// 사이트이용안내 리스트
	@RequestMapping("/admin/useInfo")
	public String listUseInfo(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "useinfo01") String notice_code)
			throws SQLException, ServiceException {
		PagingVO viewData = null;
		try {
			viewData = adminUseInfo1Service.selectUseInfo1List(pageNumber,notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminUseInfo1Service.selectUseInfo1List(pageNumber,notice_code);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "/admin/board/useinfo/useInfo1_notice";
	}

	@RequestMapping(value = "/admin/useInfoInsert", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String useInfoInsert(HttpServletRequest request, Model model,
			@RequestParam("f") MultipartFile multipartFile ,
			@RequestParam(value="notice_code" , defaultValue="useinfo01")String useinfo){
		String upload = request.getSession().getServletContext()
				.getRealPath("upload");
		String url = "redirect:useInfo";
		
		 
		 String str = multipartFile.getOriginalFilename();
		 
		 StringTokenizer tokens = new StringTokenizer( str, "." );
		 String[] fileName = {"1","txt"};
		 int i=0;
		 while(tokens.hasMoreTokens()){
			 fileName[i] = tokens.nextToken();
			 i++;
		 }
		 
		 UUID uuid = UUID.randomUUID();
	
		if (!multipartFile.isEmpty()) {
			File file = new File(upload, multipartFile.getOriginalFilename()
					+ "$$" + System.currentTimeMillis());

			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setEnroll_date(new Date(12));
		vo.setNotice_code(adminUseInfo1Service.registNotice(useinfo));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(request.getParameter(fileName[0]+uuid.toString()+"."+fileName[1]));
		// vo.setRegist_date(new Date(12));
		vo.setTitle(request.getParameter("title"));

		model.addAttribute(vo);

		int result = 0;
		try {
			result = adminUseInfo1Service.insertUseInfo1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	@RequestMapping("/admin/useInfoUpdateForm")
	public String useInfoUpdate(
			@RequestParam(value = "notice_code") String noticeCode, Model model) {
		String url = "admin/board/useinfo/useInfo1_update";

		Notice1VO vo = null;
		try {
			vo = adminUseInfo1Service.selectUseInfoCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	@RequestMapping("/admin/useInfoUpdate")
	public String useInfoUpdate(HttpServletRequest request, Model model) {
		String url = "redirect:useInfo";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setEnroll_date(new Date(1000000));
		vo.setNotice_content(request.getParameter("noticeContent"));
		// vo.setRegist_date(new Date(1000000));
		vo.setTitle(request.getParameter("title"));

		model.addAttribute(vo);

		try {
			adminUseInfo1Service.updateUseInfo1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	// 삭제 실행시켜주는 화면
	@RequestMapping("/admin/useInfoDelete")
	public String useInfoDelete(
			@RequestParam(value = "notice_code") String noticeCode) {
		String url = "redirect:useInfo";
		System.out.println(noticeCode);
		System.out.println("삭제");
		Notice1VO vo = new Notice1VO();
		System.out.println(vo.getNotice_code());
		try {
			adminUseInfo1Service.deleteUseInfo1(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
