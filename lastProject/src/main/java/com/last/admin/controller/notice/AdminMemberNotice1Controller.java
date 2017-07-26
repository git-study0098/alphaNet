package com.last.admin.controller.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.AdminMem1Service;
import com.last.common.service.ServiceException;
import com.last.common.vo.MemPagingVO;
import com.last.common.vo.MemberVo;

@Controller
public class AdminMemberNotice1Controller {
	
	@Autowired
	public AdminMem1Service adminMem1Service;
	
	public void setAdminMem1Service(AdminMem1Service adminMem1Service) {
		this.adminMem1Service = adminMem1Service;
	}
	
	// 휴면회원 조회
	@RequestMapping("/admin/inmem")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model)
//			@RequestParam(value = "notice_code", defaultValue = "imem0001") String notice_code)
			throws SQLException, ServiceException {
		MemPagingVO viewData = null;
		try {
			viewData = adminMem1Service.selectNotice1List(pageNumber);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getNotice1List().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminMem1Service.selectNotice1List(pageNumber);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData", viewData);
		System.out.println("휴면고객의 총페이지수"+viewData.getPageTotalCount());
		model.addAttribute("pageNumber", pageNumber);
		return "admin/mem/ad_inactive_mem";
	}

	// 검색
	@RequestMapping("/admin/mem/search")
	public String listNotice1(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
//			@RequestParam(value = "notice_code", defaultValue = "imem0001") String notice_code,
			HttpServletRequest request) throws SQLException, ServiceException {
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		MemPagingVO viewData2=null;
		int count = 0;
	      try {
	    	  count = adminMem1Service.selectCount(schType,schText); //검색된 회원수 
	          viewData2= adminMem1Service.searchNoticeList(pageNumber,schType,schText);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData2.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData2 = adminMem1Service.searchNoticeList(pageNumber,schType,schText);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      model.addAttribute("viewData2",viewData2);
	      model.addAttribute("pageNumber",pageNumber);
	      model.addAttribute("count",count);

		return "admin/mem/ad_inactive_mem_search";
	}

//	@RequestMapping(value = "/admin/boardInsert", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
//	public String boardInsert(
//			HttpServletRequest request,
//			Model model,
//			@RequestParam("f") MultipartFile multipartFile,
//			@RequestParam(value = "notice_code", defaultValue = "imem0001") String notice) {
//
//		String upload = "C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
//		String url = "redirect:notice";
//
//		String str = multipartFile.getOriginalFilename();
//
//		StringTokenizer tokens = new StringTokenizer(str, ".");
//		String[] fileName = { "1", "txt" };
//		int i = 0;
//		while (tokens.hasMoreTokens()) {
//			fileName[i] = tokens.nextToken();
//			i++;
//		}
//
//		if (!multipartFile.isEmpty()) {
//			File file = new File(upload, fileName[0] + "." + fileName[1]);
//			try {
//				multipartFile.transferTo(file);
//			} catch (IllegalStateException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//
//		}
//
//		Notice1VO vo = new Notice1VO();
//		vo.setAdmin_code("ADM001");
//		vo.setManager_dep(request.getParameter(vo.getManager_dep()));
//		// vo.setAdmin_code(request.getParameter(vo.getAdmin_code()));
//		vo.setNotice_code(adminMem1Service.registNotice(notice));
//		vo.setNotice_content(request.getParameter("noticeContent"));
//		vo.setAttach_file(fileName[0] + "." + fileName[1]);
//		vo.setRegist_date(new Date(12));
//		vo.setTitle(request.getParameter("title"));
//
//		model.addAttribute(vo);
//
//		int result = 0;
//		try {
//			result = adminMem1Service.insertNotice1(vo);
//			System.out.println(result);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return url;
//	}

	// 상세보기
	@RequestMapping("/admin/memDetail")
	public String boardUpdate(
			@RequestParam(value = "id") String id, Model model) {
		String url = "admin/mem/ad_mem_detail";

		MemberVo vo = null;
		try {
			vo = adminMem1Service.selectAllMemberList(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	// 수정 실행시켜주는 화면
//	@RequestMapping(value ="/admin/boardUpdate", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
//	public String boardUpdate(HttpServletRequest request, Model model,
//			@RequestParam("f") MultipartFile multipartFile) {
//		String url = "redirect:notice";
//
//		String upload = "C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
//		String str = multipartFile.getOriginalFilename();
//
//		StringTokenizer tokens = new StringTokenizer(str, ".");
//		String[] fileName = { "1", "txt" };
//		int i = 0;
//		while (tokens.hasMoreTokens()) {
//			fileName[i] = tokens.nextToken();
//			i++;
//		}
//
//		if (!multipartFile.isEmpty()) {
//			File file = new File(upload, fileName[0] + "." + fileName[1]);
//			try {
//				multipartFile.transferTo(file);
//			} catch (IllegalStateException e) {
//				e.printStackTrace();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
//		
//		Notice1VO vo = new Notice1VO();
//		vo.setAdmin_code(request.getParameter("adminCode"));
//		vo.setNotice_code(request.getParameter("noticeCode"));
//		vo.setEnroll_date(new Date(1000000));
//		vo.setNotice_content(request.getParameter("noticeContent"));
//		vo.setRegist_date(new Date(1000000));
//		vo.setTitle(request.getParameter("title"));
//		vo.setAttach_file(fileName[0] + "." + fileName[1]);
//		
//		model.addAttribute(vo);
//
//		try {
//			adminMem1Service.updateNotice1(vo);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return url;
//	}

//	// 삭제 실행시켜주는 화면
//	@RequestMapping("/admin/boardDelete")
//	public String boardDelete(
//			@RequestParam(value = "notice_code") String noticeCode) {
//		String url = "redirect:notice";
//		System.out.println(noticeCode);
//		System.out.println("삭제");
//		Notice1VO vo = new Notice1VO();
//		System.out.println(vo.getNotice_code());
//		try {
//			adminMem1Service.deleteNotice1(noticeCode);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return url;
//	}

	

}
