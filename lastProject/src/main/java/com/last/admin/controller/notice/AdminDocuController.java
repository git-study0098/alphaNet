package com.last.admin.controller.notice;

import java.io.File;
import java.io.IOException;
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

import com.last.common.service.AdminDocuService;
import com.last.common.service.ServiceException;
import com.last.common.vo.DocVO;
import com.last.common.vo.DocuPagingVO;

@Controller
public class AdminDocuController {
	
	@Autowired
	public AdminDocuService adminDocuService;
	
	public void setAdminMem1Service(AdminDocuService adminDocuService) {
		this.adminDocuService = adminDocuService;
	}
	// 승인 신청 서류 조회
	@RequestMapping("/admin/docu")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model)
			throws SQLException, ServiceException {
		DocuPagingVO viewData = null;
		try {
			viewData = adminDocuService.selectAllDocuList(pageNumber);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if (viewData.getdocuList().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			try {
				viewData = adminDocuService.selectAllDocuList(pageNumber);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "admin/mem/ad_docu_list";
	}

	// 검색
	@RequestMapping("/admin/doc/search")
	public String listNotice1(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model,
			HttpServletRequest request) throws SQLException, ServiceException {
		String schType = request.getParameter("schType");
		String schText = request.getParameter("schText");
		DocuPagingVO viewData2=null;
		int count = 0;
	      try {
	    	  count = adminDocuService.selectCount(schType,schText); //검색된 회원수 
	          viewData2= adminDocuService.searchNoticeList(pageNumber,schType,schText);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData2.getdocuList().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData2 = adminDocuService.searchNoticeList(pageNumber,schType,schText);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      model.addAttribute("viewData2",viewData2);
	      model.addAttribute("pageNumber",pageNumber);
	      model.addAttribute("count",count);

		return "admin/mem/ad_docu_list_search";
	}

	// 상세보기
	@RequestMapping("/admin/docDetail")
	public String boardUpdate(
			@RequestParam(value = "id") String id, Model model) {
		String url = "admin/mem/ad_docu_detail";

		DocVO vo = null;
		try {
			vo = adminDocuService.selectDocuDetail(id);
			System.out.println("컨트롤러 회원명"+vo.getMem_nm());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	 //수정 실행시켜주는 화면
	@RequestMapping(value ="/admin/docUpdate", headers = ("content-type=multipart/*"), method = RequestMethod.POST)
	public String boardUpdate(HttpServletRequest request, Model model,
			@RequestParam("f") MultipartFile multipartFile,
			@RequestParam(value = "sub_code") String sub_code) {
		String url = "redirect:docu";
		
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
		
		DocVO vo = new DocVO();
		vo.setSub_code(sub_code);
		System.out.println("컨트롤러 승인후 "+vo.getApprove_at());
		System.out.println("컨트롤러 승인후 코드 "+vo.getSub_code());
		
		String approve = request.getParameter("approve_at");
		
		
		if(approve.equals("N")){
			vo.setApprove_at("Y");
		}else{
			vo.setApprove_at("N");
		}
		
		model.addAttribute(vo);
		try {
			adminDocuService.updateAdminDoc(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("승인"+vo.getApprove_at());
		return url;
	}


	

}
