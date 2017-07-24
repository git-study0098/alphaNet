package com.last.sound;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.avalon.framework.service.ServiceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.client.service.ClientService;
import com.last.common.vo.ClientVO;
import com.last.common.vo.Paging2VO;
import com.last.common.vo.PagingVO;




@Controller
public class noticecontroller {

	@Autowired
	private ClientService clientService;

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}

	@RequestMapping("/client/notice")
	public String listNotice(@RequestParam(value="page",defaultValue="1") int pageNumber,Model model,@RequestParam(value="notice_code", defaultValue="cn001" )String notice_code)throws SQLException, ServiceException{
	PagingVO viewData = null;
	try {
		viewData =clientService.selectNotice1List(pageNumber,notice_code);
	} catch (ServiceException e) {
		e.printStackTrace();
	}
	if (viewData.getNotice1List().isEmpty()) {
		pageNumber--;
		if (pageNumber <= 0)
			pageNumber = 1;
		try {
			viewData = clientService.selectNotice1List(pageNumber,notice_code);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}
	System.out.println(viewData.getNotice1TotalCount());
	model.addAttribute("viewData", viewData);
	model.addAttribute("pageNumber", pageNumber);
		
		return "client/notice";
	}
	
	@RequestMapping("/client/notice2")
	public String notice2(){
		return "client/notice2";
	}
	
	@RequestMapping("/client/notice3")
	public String notice3(){
		return "client/notice3";
	}
	
	@RequestMapping("/client/clientSound")
	public String sound(@RequestParam(value="page",defaultValue="1")int pageNumber,Model model) throws SQLException, ServiceException{
		Paging2VO viewData=null;
		viewData = clientService.selectClientAll(pageNumber);
		
		
		if(viewData.getClientList().isEmpty()){
			pageNumber--;
			if(pageNumber<=0) pageNumber=1;
			viewData = clientService.selectClientAll(pageNumber);
		}

		System.out.println(viewData.getPageTotalCount());
		
		model.addAttribute("viewData",viewData);
		model.addAttribute("pageNumber",pageNumber);
		
	    return "client/soundOfClient";
	}
	
	@RequestMapping("/client/searchSound")
	public String search(HttpServletRequest request ,ClientVO vo) throws ServiceException, SQLException{
		
		System.out.println("검색컨투로로서 들어오니");

		String clientCode ="";
		String word =request.getParameter("searchWord");
		String startDate = request.getParameter("start_Date");
		String endDate = request.getParameter("end_Date");
		String searchGb2 = request.getParameter("searchGb2");
		switch (searchGb2) {
		case "1":
			clientCode ="client01";
			break;
		case "2":
			clientCode ="client02";
			break;
		case "3":
			clientCode ="client03";
			break;
		case "4":
			clientCode ="client04";
			break;			
		case "5":
			clientCode ="client05";
			break;
		case "6":
			clientCode ="client06";
			break;
		case "7":
			clientCode ="client07";
			break;
		case "8":
			clientCode ="client08";
			break;
		case "9":
			clientCode ="client09";
			break;
		case "10":
			clientCode ="client10";
			break;
		case "11":
			clientCode ="client11";
			break;
		}
		
		System.out.println(startDate);
		System.out.println(endDate);
		System.out.println(clientCode);
		System.out.println(word);
		List<ClientVO> searchList =clientService.searchList(clientCode, startDate, endDate,word);
		System.out.println(searchList);
		System.out.println(searchList.get(0).getClient_title());
		System.out.println("넘어와라");
		request.setAttribute("searchList", searchList);
		return "client/soundOfClient";
		
	}
	
	@RequestMapping("/client/myPage")
	public String myPage(){
		return "client/myPage";
	}
	
}
