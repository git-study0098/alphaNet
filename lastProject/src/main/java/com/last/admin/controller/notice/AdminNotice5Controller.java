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

import com.last.common.service.AdminNotice1Service;
import com.last.common.service.ServiceException;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

@Controller
public class AdminNotice5Controller {

	@Autowired
	private AdminNotice1Service adminNotice1Service;

	public void setAdminNotice1Service(AdminNotice1Service adminNotice1Service) {
		this.adminNotice1Service = adminNotice1Service;
	}

	@RequestMapping("/admin/adminRegist5")
	public String listRegist() {
		return "admin/board/notice/notice_5_registry";
	}

	@RequestMapping("/admin/notice5")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice05") String notice_code)
			throws SQLException, ServiceException {
		PagingVO viewData = null;
		try {
			viewData = adminNotice1Service.selectNotice1List(pageNumber,
					notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminNotice1Service.selectNotice1List(pageNumber,
						notice_code);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);

		return "admin/board/notice/admin_notice5";
	}

	@RequestMapping(value = "/admin/boardInsert5", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String boardInsert(
			HttpServletRequest request,
			Model model,
			@RequestParam("f") MultipartFile multipartFile,
			@RequestParam(value = "notice_code", defaultValue = "notice05") String notice) {

		String upload = "C:/git/alpha_net/lastProject/src/main/webapp/resources/upload";
		String url = "redirect:notice5";

		String str = multipartFile.getOriginalFilename();

		StringTokenizer tokens = new StringTokenizer(str, ".");
		String[] fileName = { "1", "txt" };
		int i = 0;
		while (tokens.hasMoreTokens()) {
			fileName[i] = tokens.nextToken();
			i++;
		}

		UUID uuid = UUID.randomUUID();

		if (!multipartFile.isEmpty()) {
			File file = new File(upload, fileName[0] + uuid.toString() + "."
					+ fileName[1]);

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
		vo.setNotice_code(adminNotice1Service.registNotice(notice));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(fileName[0]+uuid.toString()+"."+fileName[1]);
		vo.setRegist_date(new Date(12));
		vo.setTitle(request.getParameter("title"));

		model.addAttribute(vo);

		int result = 0;
		try {
			result = adminNotice1Service.insertNotice1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping("/admin/boardUpdateForm5")
	public String boardUpdate(
			@RequestParam(value = "notice_code") String noticeCode, Model model) {
		String url = "admin/board/notice/notice_5_update";

		Notice1VO vo = null;
		try {
			vo = adminNotice1Service.selectNoticeCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	@RequestMapping("/admin/boardUpdate5")
	public String boardUpdate(HttpServletRequest request, Model model) {
		String url = "redirect:notice5";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setEnroll_date(new Date(1000000));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setRegist_date(new Date(1000000));
		vo.setTitle(request.getParameter("title"));

		model.addAttribute(vo);

		try {
			adminNotice1Service.updateNotice1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	// 삭제 실행시켜주는 화면
	@RequestMapping("/admin/boardDelete5")
	public String boardDelete(
			@RequestParam(value = "notice_code") String noticeCode) {
		String url = "redirect:notice5";
		System.out.println(noticeCode);
		System.out.println("삭제");
		Notice1VO vo = new Notice1VO();
		System.out.println(vo.getNotice_code());
		try {
			adminNotice1Service.deleteNotice1(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
