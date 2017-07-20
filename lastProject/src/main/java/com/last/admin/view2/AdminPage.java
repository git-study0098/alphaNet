package com.last.admin.view2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminPage {

	@RequestMapping("/admin/login/main2")
	public String adminmain(){
		return "admin/ad_main";
	}
	
	@RequestMapping("/admin/exam")
	public String exam(){
		return "admin/exam/ad_exam";
	}
	@RequestMapping("/admin/exam_list")
	public String examlist(){
		return "admin/exam/ad_exam_list";
	}
	@RequestMapping("/admin/examsch")
	public String examsch(){
		return "admin/exam/ad_exam_schedule";
	}
	@RequestMapping("/admin/examschd")
	public String examschd(){
		return "admin/exam/ad_exam_schedule_detail";
	}
	@RequestMapping("/admin/examde1")
	public String examde1(){
		return "admin/exam/ad_exam_detail1";
	}
	@RequestMapping("/admin/examde2")
	public String examde2(){
		return "admin/exam/ad_exam_detail2";
	}
	@RequestMapping("/admin/examde3")
	public String examde3(){
		return "admin/exam/ad_exam_detail3";
	}
	@RequestMapping("/admin/examin1")
	public String examin1(){
		return "admin/exam/ad_exam_insert1";
	}
	@RequestMapping("/admin/examin2")
	public String examin2(){
		return "admin/exam/ad_exam_insert2";
	}
	@RequestMapping("/admin/examin3")
	public String examdin3(){
		return "admin/exam/ad_exam_insert3";
	}
	
	
	@RequestMapping("/admin/mem")
	public String mem(){
		return "admin/mem/ad_mem";
	}
	@RequestMapping("/admin/inmem")
	public String inmem(){
		return "admin/mem/ad_inactive_mem";
	}
	@RequestMapping("/admin/memlist")
	public String memlist(){
		return "admin/mem/ad_mem_list";
	}
	@RequestMapping("/admin/memde")
	public String memde(){
		return "admin/mem/ad_mem_detail";
	}
	@RequestMapping("/admin/smem")
	public String smem(){
		return "admin/mem/ad_stare_mem";
	}
	@RequestMapping("/admin/smemde")
	public String smemde(){
		return "admin/mem/ad_stare_mem_detail";
	}
	
	
	
//	@RequestMapping("/admin/notice1")
//	public String notice1(){
//		return "admin/notice/ad_notice_1_list";
//	}
//	@RequestMapping("/admin/notice1_re")
//	public String notice1re(){
//		return "admin/notice/ad_notice_1_registry";
//	}
//	@RequestMapping("/admin/notice2")
//	public String notice2(){
//		return "admin/notice/ad_notice_2_list";
//	}
//	@RequestMapping("/admin/notice2_re")
//	public String notice2re(){
//		return "admin/notice/ad_notice_2_registry";
//	}
//	@RequestMapping("/admin/notice3")
//	public String notice3(){
//		return "admin/notice/ad_notice_3_list";
//	}
//	@RequestMapping("/admin/notice3_re")
//	public String notice3re(){
//		return "admin/notice/ad_notice_3_registry";
//	}
//	@RequestMapping("/admin/notice4")
//	public String notice4(){
//		return "admin/notice/ad_notice_4_list";
//	}
//	@RequestMapping("/admin/notice4_re")
//	public String notice4re(){
//		return "admin/notice/ad_notice_4_registry";
//	}
//	@RequestMapping("/admin/notice5")
//	public String notice5(){
//		return "admin/notice/ad_notice_5_list";
//	}
//	@RequestMapping("/admin/notice5_re")
//	public String notice5re(){
//		return "admin/notice/ad_notice_5_registry";
//	}
	
	
//	@RequestMapping("/admin/client")
//	public String notice6(){
//		return "admin/notice/ad_notice_6_list";
//	}
//	@RequestMapping("/admin/client")
//	public String notice6re(){
//		return "admin/notice/ad_notice_6_registry";
//	}
	
	
	@RequestMapping("/admin/cbt")
	public String cbt(){
		return "admin/cbt/ad_cbt";
	}
	

}
