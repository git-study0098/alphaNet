package com.last.member.controller.wonseo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberWonseoController {
	
	//원서접수 안내
		@RequestMapping("/wonseoInfo")
		public String wonseoInfo(){
			return "member/wonseo/wonseoInfo";
		}
		
		//원서접수 현황
		@RequestMapping("/wonseo_ing")
		public String wonseo_ing(){
			return "member/wonseo/wonseo_ing";
		}
		
		//원서접수 상세현황
		@RequestMapping("/wonseo_ing2")
		public String wonseo_ing2(){
			return "member/wonseo/wonseo_ing2";
		}
		
		//장애 유형별 편의사항
		@RequestMapping("/wonseoDisabled")
		public String wonseoDisabled(){
			return "member/wonseo/wonseoDisabled";
		}
		
		//합격자 발표조회
		@RequestMapping("/wonseoPassSearch")
		public String wonseoPassSearch(){
			return "member/wonseo/wonseo_pass_search";
		}
		
		//가답안/확정답안
		@RequestMapping("/wonseoAnswer")
		public String wonseoAnswer(){
			return "member/wonseo/wonseo_answer";
		}
		
		//달력은 exam폴더 ExamCalendarController에 있습니다.
			
		//국가 기술자격 시험안내
		@RequestMapping("/wonseoExamDate")
		public String wonseoExamDate(){
			return "member/wonseo/wonseo_exam_date";
		}	
		
		//필기시험접수 안내
		@RequestMapping("/wonseoWriterInfo")
		public String wonseoWriterInfo(){
			return "member/wonseo/wonseo_writer_info";
		}
		
		//필기시험 수수료 검색창 있는부분
		@RequestMapping("/wonseoWriterPrice1")
		public String wonseoWriterPrice1(){
			return "member/wonseo/wonseo_writer_price1";
		}
		
		//필기시험 수수료 검색 결과 뿌려주는 부분
		@RequestMapping("/wonseoWriterPrice2")
		public String wonseoWriterPrice2(){
			return "member/wonseo/wonseo_writer_price2";
		}
		
		//실기시험 접수안내
		@RequestMapping("/wonseoFuncInfo")
		public String wonseoFuncInfo(){
			return "member/wonseo/wonseo_func_info";
		}
		
		//실기시험 종목별 시험방법
		@RequestMapping("/wonseoJonmokTestInfo")
		public String wonseoJonmokTestInfo(){
			return "member/wonseo/wonseo_jonmok_testInfo";
		}
		
		//실기시험 일정 변경 기준
		@RequestMapping("/wonseoFuncChangDate")
		public String wonseoFuncChangDate(){
			return "member/wonseo/wonseo_func_changDate";
		}
		
		//실기시험 일정 변경 기준
		@RequestMapping("/wonseoFuncPlace")
		public String wonseoFuncPlace(){
			return "member/wonseo/wonseo_func_place";
		}
		
		//꺽은선 차트
		@RequestMapping("/chart")
		public String chart(){
			return "member/wonseo/graph/chart";
		}
		
		//3d 차트
		@RequestMapping("/chart2")
		public String chart2(){
			return "member/wonseo/graph/chart2";
		}

}
