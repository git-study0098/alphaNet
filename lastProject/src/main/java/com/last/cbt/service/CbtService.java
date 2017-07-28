package com.last.cbt.service;

import java.sql.SQLException;
import java.util.List;

import com.last.cbt.dao.CbtDao;
import com.last.common.vo.CbtVo;

public class CbtService {

	private CbtDao dao;

	public void setDao(CbtDao dao) {
		this.dao = dao;
	}

	public List<CbtVo> selectExamQuiz(String seVal, String startQuiz) throws SQLException{
		return dao.selectExamQuiz(seVal, startQuiz);
	}

	public List<CbtVo> selectExamData() throws SQLException {
		return dao.selectExamData();		
	}
	
	
}
