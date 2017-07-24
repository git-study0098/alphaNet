package com.last.admin.controller.notice;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.StringTokenizer;

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
import com.last.common.vo.UseInfoVO;

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
		UseInfoVO viewData = null;
		try {
			viewData = adminUseInfo1Service.selectUseInfo1List(pageNumber,
					notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminUseInfo1Service.selectUseInfo1List(pageNumber,
						notice_code);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "/admin/board/useinfo/useInfo1_notice";
	}

	// 검색
	@RequestMapping("/admin/useInfo/search")
	public String listNotice1(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			@RequestParam(value = "notice_code", defaultValue = "notice01") String notice_code,
			HttpServletRequest request) throws SQLException, ServiceException {
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		UseInfoVO viewData2 = null;
		int count = 0;
		try {
			count = adminUseInfo1Service.selectCount(notice_code, schType,
					schText);
			viewData2 = adminUseInfo1Service.searchNoticeList(pageNumber,
					notice_code, schType, schText);
		} catch (ServiceException e) {
			e.printStackTrace();
		}

		if (viewData2.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData2 = adminUseInfo1Service.searchNoticeList(pageNumber,
						notice_code, schType, schText);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("viewData2", viewData2);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("count", count);

		return "admin/board/useinfo/useInfo1_notice_search";
	}

	@RequestMapping(value = "/admin/useInfoInsert", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String useInfoInsert(
			HttpServletRequest request,
			Model model,
			@RequestParam("f") MultipartFile multipartFile,
			@RequestParam(value = "notice_code", defaultValue = "useinfo01") String useinfo) {
		String upload = "C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
		String url = "redirect:useInfo";

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
		// vo.setAdmin_code(request.getParameter("adminCode"));
		// vo.setEnroll_date(new Date(12));
		vo.setRegist_date(new Date(12));
		vo.setNotice_code(adminUseInfo1Service.registNotice(useinfo));
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(fileName[0] + "." + fileName[1]);
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
	public String useInfoUpdate(HttpServletRequest request, Model model,
			@RequestParam("f") MultipartFile multipartFile) {
		String url = "redirect:useInfo";

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
		vo.setTitle(request.getParameter("title"));
		vo.setAttach_file(fileName[0] + "." + fileName[1]);

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
