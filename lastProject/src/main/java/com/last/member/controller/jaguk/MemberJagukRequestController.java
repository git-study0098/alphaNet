package com.last.member.controller.jaguk;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.AdminQualifiService;
import com.last.common.service.ServiceException;
import com.last.common.vo.QualifiCertiVO;
import com.last.common.vo.QualifiMemberVO;
import com.last.common.vo.QualifiPagingVO;

@Controller
public class MemberJagukRequestController {

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
	public String jagukRequest2(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model)
			throws SQLException{
		
		QualifiPagingVO viewData = null;
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String mem_code = user.getUsername();
		
		try {
			viewData = adminService.selectQualifiCertiList(pageNumber, mem_code);
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
	public String jagukRequest3(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model, HttpSession session,
			@RequestParam(value="mem_code") String mem_code,HttpServletRequest request,@RequestParam(value="choice") String choice)
			throws SQLException{
		QualifiPagingVO viewData = null;
		
		String[] choiceArray = choice.split(",");
		ArrayList<String> idList = new ArrayList<String>();
		for(int i=0; i<choiceArray.length; i++){
			idList.add(choiceArray[i]);
		}
		
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>();
		List<String> qualifi_certi_codeList = new ArrayList<String>();
		
		for(int i=0; i<idList.size(); i++){
			String qualifi_certi_code = idList.get(i);	
			qualifi_certi_codeList.add(qualifi_certi_code);
			viewData2.add(adminService.selectQualifiPriceList(qualifi_certi_code));			
		}
		
		session.setAttribute("qualifi_certi_codeList", qualifi_certi_codeList);
		
		model.addAttribute("choice", choice);
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		model.addAttribute("pageNumber", pageNumber);
		return "member/jaguk/jaguk_request3";
	}
	
	@RequestMapping("/member/request4")
	public String jagukRequest4(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,
			@RequestParam(value="mem_code") String mem_code,HttpServletRequest request,@RequestParam(value="qualifi_certi_code",defaultValue="") String qualifi_certi_code,String choice)
			throws SQLException{
		QualifiMemberVO viewData = null;
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>(); //자격증 코드
		String[] choiceArray = choice.split(",");
		ArrayList<String> idList = new ArrayList<String>();
		int price = 0;
		for(int i=0; i<choiceArray.length; i++){
			idList.add(choiceArray[i]);
			price += adminService.selectCertiPrice(choiceArray[i]);
		}
		
		//회원 정보 가져오는 부분
		viewData = adminService.selectMemberInfoList(mem_code); 
		
		for(int i=0; i<idList.size(); i++){
			String qualifi_certi_code1 = idList.get(i);
			viewData2.add(adminService.selectQualifiPriceList(qualifi_certi_code1));			
		}
		
		model.addAttribute("choice", choice);
		model.addAttribute("price", price);
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		model.addAttribute("pageNumber", pageNumber);
		return "member/jaguk/jaguk_request4";
	}
	
	@RequestMapping("/member/request5")
	public String jagukrequest5(Model model,@RequestParam(value="mem_code") String mem_code,@RequestParam(value="mem_nm") String mem_nm,
			@RequestParam(value="reg_num1") String reg_num1,HttpServletRequest request)
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
			}
		}
		QualifiMemberVO viewData = null;
		viewData = adminService.selectMemAuth(mem_code);		
		
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		
		//자식창으로 데이터 가져가자
		model.addAttribute("getName",mem_nm);
		model.addAttribute("getBir",reg_num1);
		
		return "member/jaguk/jaguk_request5";
	}
	
	
	
	@RequestMapping("/member/request6")
	public String jagukRequest6(HttpServletRequest request,Model model,@RequestParam(value="mem_code") String mem_code,
			@RequestParam(value="choice") String choice, String dlvrHhCautionMatt, HttpSession session){
		String url = "member/jaguk/jaguk_request6";
		
		int price=0;
		List<QualifiCertiVO> viewData2 = new ArrayList<QualifiCertiVO>();
		
		List<String> qualifi_certi_codeList = (ArrayList<String>) session.getAttribute("qualifi_certi_codeList");
		
		try {
			for(int i = 0; i<qualifi_certi_codeList.size(); i++){
				viewData2.add(adminService.selectQualifiPriceList(qualifi_certi_codeList.get(i)));		//자격증 정보 리스트
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		QualifiMemberVO viewData = null;
		try {
			viewData = adminService.selectMemberInfoList(mem_code);		//해당 회원정보 리스트
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		for(int i=0; i<viewData2.size(); i++){
			price += viewData2.get(i).getQualifi_certi_iss_pr();
		}
		
		System.out.println(viewData.toString());
		
		int count = viewData2.size();
		
		viewData.setMem_code(mem_code);
		model.addAttribute("dlvrHhCautionMatt",dlvrHhCautionMatt);
		model.addAttribute("price", price);
		model.addAttribute("count", count);
		model.addAttribute("viewData", viewData);
		model.addAttribute("viewData2", viewData2);
		
		return url;
	}
	
	@RequestMapping("/member/jagukPayment")
	public String jagukPayment(@RequestParam(value="mem_code")String mem_code,Model model, HttpSession session,
			@RequestParam(value="qualifi_certi_iss_pr")String qualifi_certi_iss_pr){
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		String id = user.getUsername();
		List<String> qualifi_certi_codeList = (List<String>) session.getAttribute("qualifi_certi_codeList");
		int result =0;
		System.out.println(id+"컨트");
		
		QualifiMemberVO qualifiMember = null;
		try {
			qualifiMember = adminService.selectMemberInfoList(mem_code);
			for(int i=0; i<qualifi_certi_codeList.size(); i++){
				System.out.println(qualifi_certi_codeList.get(i));
				QualifiCertiVO vo = new QualifiCertiVO();
				vo.setMem_code(mem_code);
				vo.setQualifi_certi_code(qualifi_certi_codeList.get(i));
				List<String> qualifi_certi_iss_code = adminService.selectQualifiCertiIssCode(qualifi_certi_codeList.get(i));
				vo.setQualifi_certi_iss_code(adminService.createQualifiCertiIssCode(qualifi_certi_iss_code.get(i), id));
				vo.setReceive_way("우편수령");
				vo.setDr_state("배송중");
				
				result = adminService.insertQualifiCertiRequest(vo);
				System.out.println("컨트롤러 성공했는지");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("qualifiMember", qualifiMember);
		model.addAttribute("qualifi_certi_iss_pr",qualifi_certi_iss_pr);
		
		return "jagukPayment";
	}
	

	@RequestMapping("/juso3")
	public String juso_go(){
		return "member/jusoPopup3";
	}
	
	@RequestMapping("/member/jagukRequestSearch")
	public String jagukRequestSearch(Model model){
		String url = "member/jaguk/jaguk_request_search";
		String mem_code = "";
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mem_code =user.getUsername();
		
		List<QualifiCertiVO> viewData = null;
		
		try {
			viewData = adminService.selectQualifiCertiRequest(mem_code);
			System.out.println(viewData.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("viewData", viewData);
		
		return url;
	}
}
