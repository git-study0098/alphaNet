package com.last.cbt.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.last.cbt.service.CbtService;
import com.last.common.vo.CbtVo;

@Controller
public class CbtController {

	@Autowired
	CbtService service;
	
	@RequestMapping("/cbt")
	public String cbtMain(){
		return "cbt/cbt_main";
	}
	
	@RequestMapping("/cbtChoice")
	public String cbtChoice(@RequestParam(value="seVal")String seVal, Model model){
		
//		int[] quizList1 = new int[21];
//		int[] quizList2 = new int[21];
//		int[] quizList3 = new int[21];
//		int[] quizList4 = new int[21];
//		int[] quizList5 = new int[21];
//		
		model.addAttribute("seVal",seVal);
//		model.addAttribute("quizList1",quizList1);
//		model.addAttribute("quizList2",quizList2);
//		model.addAttribute("quizList3",quizList3);
//		model.addAttribute("quizList4",quizList4);
//		model.addAttribute("quizList5",quizList5);
		
		return "cbt/cbt_choice";
	}
	
	@RequestMapping("/cbtDetail")
	public String cbtDetail(@RequestParam(value="startQuiz")String startQuiz,
			@RequestParam(value="seVal")String seVal, Model model){

		List<CbtVo> examList = null;
		try {
			examList = service.selectExamQuiz(seVal, startQuiz);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		model.addAttribute("examList", examList);
		model.addAttribute("startQuiz", startQuiz);
		
		return "cbt/cbt_detail";
	}
	
	@RequestMapping(value="result", method=RequestMethod.POST)
	@ResponseBody
	public Object cbtResult(Model model,@RequestParam(value="count", defaultValue="1")String count){
		
//		model.addAttribute("examList", examList);
		List<CbtVo> examList = null;
		try {
			System.out.println(count);
			examList = service.selectExamQuiz("a", count);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(examList.get(0).getCbt_em_quiz());
		
		model.addAttribute("examList", examList);
		
		Map<String, Object> abc = new HashMap<String, Object>();
		
		
		abc.put("examList", examList);
		
		return abc;
	}
	
}
