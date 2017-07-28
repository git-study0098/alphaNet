package com.last.admin.controller.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.AdminClientVoiceService;
import com.last.common.service.ServiceException;
import com.last.common.vo.ClientVO;
import com.last.common.vo.VoicePagingVO;

@Controller
public class AdminClient2Controller {

	@Autowired
	private AdminClientVoiceService voiceService;

	public void setAdminClientVoiceService(AdminClientVoiceService voiceService) {
		this.voiceService = voiceService;
	}

	//고객의 소리
	@RequestMapping("/admin/client2")
	public String listNotice(
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model)
			throws SQLException, ServiceException {
		VoicePagingVO viewData = null;
		viewData = voiceService.selectVoiceList(pageNumber);
		if (viewData.getVoiceList().isEmpty()) {
			pageNumber--;
			if (pageNumber <= 0)
				pageNumber = 1;
			viewData = voiceService.selectVoiceList(pageNumber);
		}

		model.addAttribute("viewData", viewData);
		model.addAttribute("pageNumber", pageNumber);
		return "admin/board/client/admin_client2";
	}

	// 상세보기
	@RequestMapping("/admin/clientUpdateForm2")
	public String voiceDetail(
			@RequestParam(value = "client_code") String client_code, Model model) throws SQLException {
		String url = "admin/board/client/admin_client_2_update";

		ClientVO vo = null;
		try{
		vo = voiceService.selectVoiceDetailList(client_code);
		} catch(SQLException e){
			e.printStackTrace();
		}
		model.addAttribute("vo", vo);

		return url;
	}

	// 수정 실행시켜주는 화면
	@RequestMapping(value ="/admin/clientUpdate2")
	public String voiceUpdate(HttpServletRequest request, Model model) 
			throws SQLException {
		String url = "redirect:client2";
		
		ClientVO vo = new ClientVO();
		vo.setClient_code(request.getParameter("clientCode"));
		vo.setAdmin_code(request.getParameter("adminCode"));
		vo.setReply_state("Y");
		vo.setClient_consulting_content(request.getParameter("client_consulting_content"));
		vo.setClient_reply_content(request.getParameter("client_reply_content"));
		
		model.addAttribute(vo);

		voiceService.updateVoice(vo);
		
		return url;
	}



}
