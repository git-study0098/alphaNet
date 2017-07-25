package com.last.member.controller.wonseo;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.WonseoService;
import com.last.common.vo.MemberVo;
import com.last.common.vo.PlaceVO;
import com.last.common.vo.WonseoInfoVo;


@Controller
public class MemberWonseoRequestController {

	@Autowired
	protected WonseoService wonseoService;

	public void setWonseoService(WonseoService wonseoService) {
		this.wonseoService = wonseoService;
	}
	
	//원서접수신청 처음 페이지
	@RequestMapping("/member/wonseoReq")
	public String wonseoRequest1(Model model){
		String url = "member/wonseo/wonseo_request1";
		List<WonseoInfoVo> viewData2 = null;
		
		try {
			viewData2 = wonseoService.selectWonseoList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("numgInfo",viewData2);
		
		return url;
	}
	
	@RequestMapping("/member/wonseoReq2")
	public String wonseoRequest2(@RequestParam(value="em_nm")String em_nm,@RequestParam(value="em_info_code")String em_info_code, Model model){
		String url = "member/wonseo/wonseo_request2";
		//해당회원의 정보 저장할 VO
		MemberVo memberVo = new MemberVo();
		
		//로그인한 회원 id,pw
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		String id = user.getUsername();
		
		//회원정보 가져오기
		try {
			memberVo = wonseoService.selectMemberData(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(memberVo.getMem_phone());
		
		model.addAttribute("memberVo",memberVo);
		model.addAttribute("em_nm",em_nm);
		model.addAttribute("em_info_code",em_info_code);
		
		
		return url;
	}
	
	@RequestMapping("/member/wonseoReq3")
	public String wonseonRequest3(@RequestParam(value="em_nm")String em_nm,@RequestParam(value="em_info_code")String em_info_code,Model model){
		String url="member/wonseo/wonseo_request3";
		
		//시험 이름 넘기는거
		String[] a = em_nm.split(" ");
		String[] b = a[1].split("차");
		String c = b[0].substring(0, b[0].length()-1);
		
		String exam = c;
		String exam2 = b[1];
		
		//멤버정보 가져오기
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		String id = user.getUsername();
		MemberVo memberVo= null;
		try {
			 memberVo = wonseoService.selectMemberData(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("memberVo",memberVo);
		model.addAttribute("exam",exam);
		model.addAttribute("exam2",exam2);
		model.addAttribute("em_info_code",em_info_code);
		
		
		return url;
	}
	@RequestMapping("/member/wonseoReq4")
	public String wonseonRequest4(Model model,@RequestParam(value="exam")String exam, @RequestParam(value="exam2")String exam2,
								  @RequestParam(value="em_info_code")String em_info_code){
		String url="member/wonseo/wonseo_request4";
		
		// 모든 PLACE를 뽑자
		List<PlaceVO> daejeonList=null;
		List<PlaceVO> seoulList=null;
		List<PlaceVO> busanList=null;
		List<PlaceVO> gangwonList=null;
		List<PlaceVO> gwangjuList=null;
		List<PlaceVO> ulsanList=null;
		List<PlaceVO> incheonList=null;
		List<PlaceVO> jejuList=null;
		List<PlaceVO> gyunggiList=null;
		List<PlaceVO> placepList=null;
		try {
			daejeonList = wonseoService.selectPlaceList("대전광역시");
			seoulList = wonseoService.selectPlaceList("서울특별시");
			busanList = wonseoService.selectPlaceList("부산광역시");
			gangwonList = wonseoService.selectPlaceList("강원도");
			gwangjuList = wonseoService.selectPlaceList("광주광역시");
			ulsanList = wonseoService.selectPlaceList("울산광역시");
			incheonList = wonseoService.selectPlaceList("인천광역시");
			jejuList = wonseoService.selectPlaceList("제주특별자치도");
			gyunggiList = wonseoService.selectPlaceList("경기도");
			
			placepList = wonseoService.selectPlacep();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("daejeonList", daejeonList);
		model.addAttribute("seoulList", seoulList);
		model.addAttribute("busanList", busanList);
		model.addAttribute("gangwonList", gangwonList);
		model.addAttribute("gwangjuList", gwangjuList);
		model.addAttribute("ulsanList", ulsanList);
		model.addAttribute("incheonList", incheonList);
		model.addAttribute("jejuList", jejuList);
		model.addAttribute("gyunggiList", gyunggiList);
		model.addAttribute("placepList", placepList);
		model.addAttribute("exam",exam);
		model.addAttribute("exam2",exam2);
		model.addAttribute("em_info_code",em_info_code);
		
		return url;
	}
	
	@RequestMapping(value="/member/wonseoReq4_1")
	public String wonseonRequest4_1(Model model,@RequestParam(value="si")String si, @RequestParam(value="gu")String gu,
								    @RequestParam(value="em_info_code")String em_info_code){
		String url="member/wonseo/wonseo_request4";
//		,@RequestParam(value="exam")String exam, @RequestParam(value="exam2")String exam2
		// 모든 PLACE를 뽑자
		List<PlaceVO> daejeonList=null;
		List<PlaceVO> seoulList=null;
		List<PlaceVO> busanList=null;
		List<PlaceVO> gangwonList=null;
		List<PlaceVO> gwangjuList=null;
		List<PlaceVO> ulsanList=null;
		List<PlaceVO> incheonList=null;
		List<PlaceVO> jejuList=null;
		List<PlaceVO> gyunggiList=null;
		List<PlaceVO> placepList=null;
		List<PlaceVO> examPlace=null;
		try {
			daejeonList = wonseoService.selectPlaceList("대전광역시");
			seoulList = wonseoService.selectPlaceList("서울특별시");
			busanList = wonseoService.selectPlaceList("부산광역시");
			gangwonList = wonseoService.selectPlaceList("강원도");
			gwangjuList = wonseoService.selectPlaceList("광주광역시");
			ulsanList = wonseoService.selectPlaceList("울산광역시");
			incheonList = wonseoService.selectPlaceList("인천광역시");
			jejuList = wonseoService.selectPlaceList("제주특별자치도");
			gyunggiList = wonseoService.selectPlaceList("경기도");
			
			placepList = wonseoService.selectPlacep();
			
			examPlace = wonseoService.selectExamPlace(em_info_code,si,gu);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("daejeonList", daejeonList);
		model.addAttribute("seoulList", seoulList);
		model.addAttribute("busanList", busanList);
		model.addAttribute("gangwonList", gangwonList);
		model.addAttribute("gwangjuList", gwangjuList);
		model.addAttribute("ulsanList", ulsanList);
		model.addAttribute("incheonList", incheonList);
		model.addAttribute("jejuList", jejuList);
		model.addAttribute("gyunggiList", gyunggiList);
		model.addAttribute("placepList", placepList);
		model.addAttribute("examPlace",examPlace);
		model.addAttribute("em_info_code",em_info_code);
//		model.addAttribute("exam",exam);
//		model.addAttribute("exam",exam2);
		
		return url;
	}
	
	@RequestMapping("/member/wonseoReq5")
	public String wonseonRequest5(@RequestParam(value="em_info_code") String em_info_code, 
			@RequestParam(value="place_nm") String place_nm, Model model ){
		String url="member/wonseo/wonseo_request5";
		
		WonseoInfoVo vo = null;
		try {
			vo = wonseoService.selectPlaceData(em_info_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("placeData",vo);
		model.addAttribute("placeNm",place_nm);
		model.addAttribute("em_info_code",em_info_code);
		
		return url;
	}
	
	@RequestMapping("/member/wonseoPayment")
	public String wonseoPayment(Model model, @RequestParam(value="placeNm")String placeNm
			, @RequestParam(value="em_pay_pr")String em_pay_pr){
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		String id = user.getUsername();
		
		
		
		MemberVo member = null;
		
		try {
			member = wonseoService.selectMemberData(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println();
		
		model.addAttribute("placeNm", placeNm);
		model.addAttribute("em_pay_pr", em_pay_pr);
		model.addAttribute("member", member);
		
		return "payment";
	}
	
	@RequestMapping("/member/wonseoReq6")
	public String wonseonRequest6(Model model,@RequestParam(value="em_info_code")String em_info_code,@RequestParam(value="placeNm")String placeNm){
		String url="member/wonseo/wonseo_request6";
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		String id = user.getUsername();
		
		MemberVo member = null;
		String stareDate = "";
		WonseoInfoVo vo = null;
		int result = 0;
		try {
			vo = wonseoService.selectPlaceData(em_info_code);
			member = wonseoService.selectMemberData(id);
			stareDate = wonseoService.selectStareDate(em_info_code);
			vo.setNumg_stare_date(stareDate);
			
			result = wonseoService.insertStare(id, stareDate, em_info_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		model.addAttribute("placeData",vo);
		model.addAttribute("member",member);
		model.addAttribute("placeNm",placeNm);
		model.addAttribute("stare_code",id+em_info_code);
		
		return url;
	}
}
