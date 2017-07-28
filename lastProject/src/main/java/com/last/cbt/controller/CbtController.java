package com.last.cbt.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
	public String cbtMain(Model model){
		
		List<CbtVo> list = null;
		
		try {
			list = service.selectExamData();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("viewData", list);
		
		return "cbt/cbt_main";
	}
	
	@RequestMapping("/cbtChoice")
	public String cbtChoice(@RequestParam(value="seVal")String seVal, Model model, HttpSession session
			,@RequestParam(value="ansH",defaultValue="0")String ansH
			,@RequestParam(value="solH",defaultValue="0")String solH
			,@RequestParam(value="test",defaultValue="-1") String test
			,@RequestParam(value="startQuiz",defaultValue="-1") String startQuiz){
		
		if(test.equals("test")){
			int[] quizList1 = new int[5];
			session.setAttribute("quizList1", quizList1);
		}else{
			String[] aa = solH.split(",");  // 사람이 고른 답
			String[] bb = ansH.split(",");  // 정답
			String cc = "";
			int count=0;
			for(int i=0; i<aa.length; i++){
				if(aa[i].equals(bb[i])){
					count++;
					if(cc.equals("")){
						cc+=(i+1);
					}else{
						cc+=","+(i+1);
					}
				}
			}
			model.addAttribute("cc",cc);
			
			if(startQuiz.equals("1")){
				session.setAttribute("count1",count+"/");
			}else if(startQuiz.equals("21")){
				session.setAttribute("count2",count+"/");
			}else if(startQuiz.equals("41")){
				session.setAttribute("count3",count+"/");
			}else if(startQuiz.equals("61")){
				session.setAttribute("count4",count+"/");
			}else if(startQuiz.equals("81")){
				session.setAttribute("count5",count+"/");
			}else{
			}
		}
		session.setAttribute("seVal",seVal);
		model.addAttribute("solH",solH);
		model.addAttribute("ansH",ansH);
		
		return "cbt/cbt_choice";
	}
	
	@RequestMapping("/cbtDetail")
	public String cbtDetail(@RequestParam(value="startQuiz")String startQuiz,
			Model model, HttpSession session
			,@RequestParam(value="cc", defaultValue="0")String cc
			,@RequestParam(value="ansH",defaultValue="0")String ansH
			,@RequestParam(value="solH",defaultValue="0")String solH){

		String seVal = (String) session.getAttribute("seVal");
		List<CbtVo> examList = null;
		try {
			examList = service.selectExamQuiz(seVal, startQuiz);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("examList", examList);
		model.addAttribute("startQuiz", startQuiz);
		
		model.addAttribute("oQuiz", cc);
		model.addAttribute("ansH2", ansH);  // 정답
		model.addAttribute("solH2", solH);  // 고른답
		
		if(startQuiz.equals("1")){
			int[] quizList1 = (int[])session.getAttribute("quizList1");
			quizList1[0]++;
			session.setAttribute("quizList1", quizList1);			
		}else if(startQuiz.equals("21")){
			int[] quizList1 = (int[])session.getAttribute("quizList1");
			quizList1[1]++;
			session.setAttribute("quizList1", quizList1);			
		}else if(startQuiz.equals("41")){
			int[] quizList1 = (int[])session.getAttribute("quizList1");
			quizList1[2]++;
			session.setAttribute("quizList1", quizList1);			
		}else if(startQuiz.equals("61")){
			int[] quizList1 = (int[])session.getAttribute("quizList1");
			quizList1[3]++;
			session.setAttribute("quizList1", quizList1);			
		}else if(startQuiz.equals("81")){
			int[] quizList1 = (int[])session.getAttribute("quizList1");
			quizList1[4]++;
			session.setAttribute("quizList1", quizList1);			
		}
		return "cbt/cbt_detail";
	}
	
	@RequestMapping(value="result", method=RequestMethod.POST)
	@ResponseBody
	public Object cbtResult(Model model,@RequestParam(value="count", defaultValue="1")String count
			,HttpSession session){
		String seVal = (String) session.getAttribute("seVal");
		List<CbtVo> examList = null;
		try {
			examList = service.selectExamQuiz(seVal, count);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("examList", examList);
		
		Map<String, Object> abc = new HashMap<String, Object>();
		
		abc.put("examList", examList);
		return abc;
	}
	
}
