package com.last.admin.controller.exam;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.dao.MemberDAOImpl;
import com.last.common.vo.CalendarVO;

@Controller
public class ExamCalendarController {

	@Autowired
	private MemberDAOImpl memDao;
	
	public void setMemDao(MemberDAOImpl memDao) {
		this.memDao = memDao;
	}

	@RequestMapping("/calender")
	public String im(Model model){
		List<CalendarVO> calList = null;
		try {
			calList = memDao.calendarInfo();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("event" , calList);
		
		
		return "member/wonseo/examCalender";
	}	
	
	
}
