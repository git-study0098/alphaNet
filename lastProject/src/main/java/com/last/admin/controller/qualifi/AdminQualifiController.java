package com.last.admin.controller.qualifi;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.last.common.service.AdminQualifiService;
import com.last.common.service.ServiceException;
import com.last.common.vo.QualifiCertiVO;
import com.last.common.vo.QualifiMemberVO;
import com.last.common.vo.QualifiPagingVO;

@Controller
//@RequestMapping("/jaguk")
public class AdminQualifiController {

	@Autowired
	private AdminQualifiService adminService;
	
	
	public void setAdminService(AdminQualifiService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping("/request1")
	public String jagukRequest1(){
		return "member/jaguk/jaguk_request1";
	}
	
	
	@RequestMapping("/member/request2")
	public String jagukRequest2(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,
			@RequestParam(value="mem_code") String mem_code)
			throws SQLException{
		
		QualifiPagingVO viewData = null;
		
		try {
			viewData = adminService.selectQualifiCertiList(pageNumber, mem_code);
			System.out.println(viewData);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		if(viewData.getQualifiList().isEmpty()){
			pageNumber --;
			if(pageNumber <= 0){
				pageNumber = 1;
			}
			try {
				viewData = adminService.selectQualifiCertiList(pageNumber, mem_code);
				
			} catch (ServiceException e) {
				e.printStackTrace();
			}
		}
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		
		return "member/jaguk/jaguk_request2";
	}
	
	@RequestMapping("/member/request3")
	public String jagukRequest3(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,
			@RequestParam(value="mem_code") String mem_code,HttpServletRequest request)
			throws SQLException{
		QualifiPagingVO viewData = null;
		
		
		Enumeration<String> paramNames = request.getParameterNames();
		ArrayList<String> paramNameList = new ArrayList<String>();
		while (paramNames.hasMoreElements()) {
			paramNameList.add((String) paramNames.nextElement());
		}
		
		ArrayList<String> idList = new ArrayList<String>();
		for (int i = 0; i < paramNameList.size(); i++) {
			if (paramNameList.get(i).contains("choice")) {
				idList.add(request.getParameter(paramNameList.get(i)));
				System.out.println(idList);
			}
		}
		
		
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>();
		
		for(int i=0; i<idList.size(); i++){
			String qualifi_certi_code = idList.get(i);
			System.out.println(qualifi_certi_code+"서티코드");
			viewData2.add(adminService.selectQualifiPriceList(qualifi_certi_code));			
		}
		
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		model.addAttribute("pageNumber", pageNumber);
		return "member/jaguk/jaguk_request3";
	}
	
	@RequestMapping("/member/request4")
	public String jagukRequest4(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,
			@RequestParam(value="mem_code") String mem_code,HttpServletRequest request,String qualifi_certi_code)
			throws SQLException{
		QualifiMemberVO viewData = null;
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>(); //자격증 코드
		int price = adminService.selectCertiPrice(qualifi_certi_code);
		//자격증 코드 가져오는 메서드
		Enumeration<String> paramNames = request.getParameterNames();
		ArrayList<String> paramNameList = new ArrayList<String>();
		while (paramNames.hasMoreElements()) {
			paramNameList.add((String) paramNames.nextElement());
		}
		//자격증 코드 가져오는 메서드		
		ArrayList<String> idList = new ArrayList<String>();
		for (int i = 0; i < paramNameList.size(); i++) {
			if (paramNameList.get(i).contains("choice")) {
				idList.add(request.getParameter(paramNameList.get(i)));
				System.out.println(idList);
			}
		}		
		
		//회원 정보 가져오는 부분
		viewData = adminService.selectMemberInfoList(mem_code); 
		System.out.println(viewData.getMem_nm());
		
		
		for(int i=0; i<idList.size(); i++){
			String qualifi_certi_code1 = idList.get(i);
			System.out.println(qualifi_certi_code+"서티코드");
			viewData2.add(adminService.selectQualifiPriceList(qualifi_certi_code1));			
		}
		
		model.addAttribute("price", price);
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		model.addAttribute("pageNumber", pageNumber);
		return "member/jaguk/jaguk_request4";
	}
	
	@RequestMapping("/member/request5")
	public String jagukrequest5(Model model,@RequestParam(value="mem_code") String mem_code,@RequestParam(value="mem_nm") String mem_nm,
			@RequestParam(value="reg_num1") String reg_num1,HttpServletRequest request,@RequestParam(value="qualifi_certi_code") String qualifi_certi_code)
			throws SQLException{
		
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>(); //자격증 코드
		
		//자격증 코드 가져오는 메서드
		Enumeration<String> paramNames = request.getParameterNames();
		ArrayList<String> paramNameList = new ArrayList<String>();
		while (paramNames.hasMoreElements()) {
			paramNameList.add((String) paramNames.nextElement());
		}
		//자격증 코드 가져오는 메서드		
		ArrayList<String> idList = new ArrayList<String>();
		for (int i = 0; i < paramNameList.size(); i++) {
			if (paramNameList.get(i).contains("choice")) {
				idList.add(request.getParameter(paramNameList.get(i)));
				System.out.println(idList);
			}
		}
		QualifiMemberVO viewData = null;
		viewData = adminService.selectMemAuth(mem_code);		//
		
		model.addAttribute("qualifi_certi_code", qualifi_certi_code);
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		System.out.println(viewData.toString());
		
		
		//자식창으로 데이터 가져가자
		model.addAttribute("getName",mem_nm);
		model.addAttribute("getBir",reg_num1);
		
		
		
		return "member/jaguk/jaguk_request5";
	}
	
	
	
	@RequestMapping("/member/request6")
	public String jagukRequest6(HttpServletRequest request,Model model,@RequestParam(value="mem_code") String mem_code){
		String url = "member/jaguk/jaguk_request6";
		
		
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>(); // 자격증
																			// 코드

		// 자격증 코드 가져오는 메서드
		Enumeration<String> paramNames = request.getParameterNames();
		ArrayList<String> paramNameList = new ArrayList<String>();
		while (paramNames.hasMoreElements()) {
			paramNameList.add((String) paramNames.nextElement());
		}
		// 자격증 코드 가져오는 메서드
		ArrayList<String> idList = new ArrayList<String>();
		for (int i = 0; i < paramNameList.size(); i++) {
			if (paramNameList.get(i).contains("choice")) {
				idList.add(request.getParameter(paramNameList.get(i)));
				System.out.println(idList);
			}
		}
		QualifiMemberVO viewData = null;
		try {
			viewData = adminService.selectMemberInfoList(mem_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		
		return url;
	}
	

	@RequestMapping("/juso3")
	public String juso_go(){
		return "member/jusoPopup3";
	}
	
	
}
