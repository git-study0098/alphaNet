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
	
	
	
	@RequestMapping("/admin/notice")
	public String notice(){
		return "admin/notice/ad_notice";
	}
	
	
	@RequestMapping("/admin/cbt")
	public String cbt(){
		return "admin/cbt/ad_cbt";
	}
	

}
