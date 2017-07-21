package com.last.common.service;

import java.sql.SQLException;

import com.last.common.dao.AdminExamDAO;
import com.last.common.vo.ExkindVO;

public class AdminExamService {
	
	private AdminExamDAO adminExamDao;

	public void setAdminExamDao(AdminExamDAO adminExamDao) {
		this.adminExamDao = adminExamDao;
	}
	
	public int insertExkind(ExkindVO vo) throws SQLException{
		int result=0;
		result = adminExamDao.insertExkind(vo);
		return result;
	}
	
	public int insertWSubj(String subj_nm, String exkind_code) throws SQLException{
		int result=0;
		result = adminExamDao.insertWSubj(subj_nm,exkind_code);
		return result;
	}
	
	public int insertPSubj(String subj_nm,String exkind_code) throws SQLException{
		int result=0;
		result = adminExamDao.insertPSubj(subj_nm,exkind_code);
		return result;
	}

	
}
