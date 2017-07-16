package com.last.admin.controller.notice;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

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

	public void setAdminUseInfo1Service(AdminUseInfo1Service adminUseInfo1Service) {
		this.adminUseInfo1Service = adminUseInfo1Service;
	}
	
	@RequestMapping("/adminUseInfoRegist")
	   public String listUseInfoRegist(){
		      return "admin/board/useinfo/useInfo1_registry";
		   }
	
	@RequestMapping("/useInfo")
	public String listUseInfo(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model)throws SQLException, ServiceException{
		PagingVO viewData=null;
	      try {
	          viewData= adminUseInfo1Service.selectUseInfo1List(pageNumber);
	      } catch (ServiceException e) {
	         e.printStackTrace();
	      }
	      
	      if(viewData.getNotice1List().isEmpty()){
	         pageNumber--;
	         if(pageNumber<=0) pageNumber=1;
	         try {
	            viewData = adminUseInfo1Service.selectUseInfo1List(pageNumber);
	         } catch (ServiceException e) {
	            e.printStackTrace();
	         }
	      }
	      
	      
	      model.addAttribute("viewData",viewData);
	      model.addAttribute("pageNumber",pageNumber);
	      return "/member/board/useinfo/useInfo";
	}
	
	
	@RequestMapping(value="/useInfoInsert",headers=("content-type=multipart/*"),method=RequestMethod.POST)
	public String useInfoInsert(HttpServletRequest request,Model model,@RequestParam("f") MultipartFile multipartFile){
		
		 String upload=request.getSession().getServletContext().getRealPath("upload");
		 String url ="redirect:useInfo";
	      if(!multipartFile.isEmpty()){
	         File file= new File(upload, multipartFile.getOriginalFilename()+"$$"+System.currentTimeMillis());
	         
	         try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         
	      }
		
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setEnroll_date(new Date(12));
		vo.setNotice_code("useinfo10000000002");
		vo.setNotice_content(request.getParameter("noticeContent"));
		vo.setAttach_file(request.getParameter("attach_file"));
//		vo.setRegist_date(new Date(12));
		vo.setTitle(request.getParameter("title"));
		
		model.addAttribute(vo);
		
		int result=0;
		try {
			result=adminUseInfo1Service.insertUseInfo1(vo);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}
	
	@RequestMapping("/useInfoUpdateForm")
	public String useInfoUpdate(@RequestParam(value="notice_code") String noticeCode,Model model){
		String url ="admin/board/useinfo/useInfo1_update";
		
		Notice1VO vo = null;
		try {
			vo = adminUseInfo1Service.selectUseInfoCodeList(noticeCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);
		
		return url;
	}
	
	@RequestMapping("/useInfoUpdate")
	public String useInfoUpdate(HttpServletRequest request,Model model){
		String url ="redirect:useInfo";
		System.out.println("성공");
		Notice1VO vo = new Notice1VO();
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setNotice_code(request.getParameter("noticeCode"));
		vo.setEnroll_date(new Date(1000000));
		vo.setNotice_content(request.getParameter("noticeContent"));
//		vo.setRegist_date(new Date(1000000));
		vo.setTitle(request.getParameter("title"));
		
		model.addAttribute(vo);
		
		try {
			adminUseInfo1Service.updateUseInfo1(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}
		
}
