package com.last.common.service;

import java.sql.SQLException;
import java.util.List;

import com.last.common.dao.AdminExamDAO;
import com.last.common.vo.CalendarVO;
import com.last.common.vo.EmPlaceVO;
import com.last.common.vo.ExkindVO;
import com.last.common.vo.WonseoInfoVo;
import com.mongodb.gridfs.CLI;

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
	
	public List<CalendarVO> selectList() throws SQLException{
		List<CalendarVO> calList = adminExamDao.selectList();
		return calList;
	}
	
	public String selectMaxNumgCode() throws SQLException{
		String numg_code = adminExamDao.selectMaxNumgCode();
		return numg_code;
	}
	
	public List<EmPlaceVO> selectPlaceCode() throws SQLException{
		List<EmPlaceVO> list = adminExamDao.selectPlaceCode();
		return list;
	}
	
	public int insertNumg(WonseoInfoVo vo) throws SQLException{
		int result = adminExamDao.insertNumg(vo);
		return result;
	}
	
	public int insertEminfo(WonseoInfoVo vo) throws SQLException{
		int result = adminExamDao.insertEminfo(vo);
		return result;
	}
	
	public int insertEmplace(EmPlaceVO vo) throws SQLException{
		int result = adminExamDao.insertEmplace(vo);
		return result;
	}

	public String selectExkind(String exkind_nm) throws SQLException {
		String exkind_code = adminExamDao.selectExkind(exkind_nm);
		return exkind_code;
	}

	public int selectExkindWr(String exkind_code) throws SQLException{
		int pr = adminExamDao.selectExkindWr(exkind_code);
		return pr;
	}
	
	public int selectExkindPr(String exkind_code) throws SQLException{
		int pr = adminExamDao.selectExkindPr(exkind_code);
		return pr;
	}
	
	public List<ExkindVO> selectExkindAll() throws SQLException{
		
		List<ExkindVO> list = adminExamDao.selectExkindAll();
		
		return list;
	}
	
	
	
	
	

	
}
