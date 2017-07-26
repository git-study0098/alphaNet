package com.last.member.controller.mypage;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.service.MypageService;
import com.last.common.vo.StareCertifiVO;

@Controller
//@RequestMapping("/member/mypage")
public class MypageRodlsController {

	@Autowired
	private MypageService mypageService;
	
	public void setMypageService(MypageService mypageService) {
		this.mypageService = mypageService;
	}
	
	@RequestMapping("/member/selfTest")
	public String selfTest(Model model){
		String mem_code = "";
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mem_code =user.getUsername();
		
		
		model.addAttribute("mem_code", mem_code);
		return "member/mypage/mypage_dmdtl1";
	}
	
	@RequestMapping("/member/selfTest2")
	public String stareMember2(@RequestParam(value="mem_code")String mem_code, Model model){
		List<StareCertifiVO> selectSchoolCerti = null; 
		
			try {
				selectSchoolCerti = mypageService.selectSchoolCerti(mem_code);
				System.out.println(selectSchoolCerti.toString());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("selectSchoolCerti", selectSchoolCerti);
		return "member/mypage/mypage_stareCertifi";
	}
	
	@RequestMapping("/member/selfTest3")
	public String stareMember3(Model model){
		String mem_code = "";
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mem_code =user.getUsername();
		List<StareCertifiVO> selectSchoolCerti = null; 
		try {
			selectSchoolCerti = mypageService.selectSchoolCerti(mem_code);
			System.out.println(selectSchoolCerti.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("mem_code", mem_code);
		model.addAttribute("selectSchoolCerti", selectSchoolCerti);
		return "member/mypage/mypage_stareCertifi2";
	}
	
	@RequestMapping("/member/selfTest4")
	public String stareMember4(@RequestParam(value="mem_code")String mem_code, Model model, HttpServletRequest request){
		boolean flag = false;
		boolean flag2 = false;
		
		try{
			String Ind_code = "";
			
			StareCertifiVO resultVO = new StareCertifiVO();
			List<StareCertifiVO> exkind_nm = null;
			if(mem_code != null) mem_code = mem_code.trim(); 
			
			resultVO = mypageService.selectMemberCareer(mem_code);
			exkind_nm = mypageService.selectSchoolCerti(mem_code);
			Ind_code = resultVO.getCareer_ind_code();
			System.out.println(resultVO.getSch_final());
			System.out.println(Ind_code);
			System.out.println(resultVO.getCa_work_bd());
			System.out.println(resultVO.getCa_work_ed());
			System.out.println(Integer.parseInt(resultVO.getCa_work_ed()) - Integer.parseInt(resultVO.getCa_work_bd()));
			//4년제냐
			if("4년제".equals(resultVO.getSch_final().trim())){
				System.out.println("4년제이시네여");
				flag = true;
			//4년제가 아니냐"
			}else{
				
				System.out.println("2년제이시네요");
				//경력이 2년이 넘음
				if(("2".equals(Ind_code) || "3".equals(Ind_code)) && Integer.parseInt(resultVO.getCareer_during()) > 730){
					System.out.println("경력이 2년이 넘네영");
					flag2 = true;
				//안넘음
				}else{
					System.out.println("경력이 2년 안됩니다");
					
				}
				
			}
			model.addAttribute("exkind_nm", exkind_nm);
			model.addAttribute("flag", flag);
			model.addAttribute("flag2", flag2);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "member/mypage/mypage_stareCertifi3";
	}
	
	@RequestMapping("/member/carrerUpdate")
	public String carrerUpdate(@ModelAttribute("stareCertifiVO")StareCertifiVO stareCertifiVO,Model model){
		boolean flag = false;
		boolean flag2 = false;
		
		int dday = 0;
		try{
			String mem_code = "";
			String Ind_code = "";
			
			if(stareCertifiVO.getMem_code() != null) mem_code = stareCertifiVO.getMem_code().trim(); 
			if(stareCertifiVO.getInd_code() != null) Ind_code = stareCertifiVO.getInd_code().trim(); 
			
			mypageService.updateMemberCareer(stareCertifiVO);
			StareCertifiVO resultVO = new StareCertifiVO();
			resultVO = mypageService.selectMemberCareer(mem_code);
			System.out.println(resultVO.toString());
			
			StareCertifiVO vo = new StareCertifiVO();
			vo = mypageService.selectMemberCareer(mem_code);
			dday = Integer.parseInt(vo.getCareer_during());
			//4년제냐
			if("4년제".equals(resultVO.getSch_final().trim())){
				System.out.println("4년제이시네여");
				flag = true;
			//4년제가 아니냐"
			}else{
				
				System.out.println("2년제이시네요");
				//경력이 2년이 넘음
				if(("2".equals(Ind_code) || "3".equals(Ind_code)) && dday > 730){
					System.out.println("경력이 2년이 넘네요");
					System.out.println(dday+"근무기간");
					flag2 = true;
				//안넘음
				}else{
					System.out.println("경력이 2년 안되네요");
					
				}
				
			}
			
			
			model.addAttribute("flag", flag);
			model.addAttribute("flag2", flag2);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "member/mypage/mypage_stareCertifi3";
//		return "member/mypage/mypage_stareCertifi2";
	}
	
	
	
	
	
	@RequestMapping("/member/subCheck")
	public String subCheck(){
		return "member/mypage/mypage_dmdtl2";
	}
	@RequestMapping("/member/docCheck")
	public String docCheck(){
		return "member/mypage/mypage_dmdtl3";
	}
	@RequestMapping("/member/docSubmit")
	public String docSubmit(){
		return "member/mypage/mypage_dmdtl4";
	}
	
}
