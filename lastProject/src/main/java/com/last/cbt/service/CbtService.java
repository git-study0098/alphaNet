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
	
	//cbt 시험 리스트 가져오는것(관리자)
	public List<CbtVo> selectAllCBTList() throws SQLException {
		return dao.selectExamList();
		
	}
	
	//cbt문제 삭제(관리자)
	public int deleteCBT(String id) throws SQLException {
		return dao.deleteCBT(id);
	}

	
}
