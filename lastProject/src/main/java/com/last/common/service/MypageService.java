package com.last.common.service;

import java.sql.SQLException;
import java.util.List;

import com.last.common.dao.MypageDAO;
import com.last.common.vo.StareVO;

public class MypageService {
	
	
	private MypageDAO mypageDao;
	
	public void setMypageDao(MypageDAO mypageDao) {
		this.mypageDao = mypageDao;
	}



	/**
	 * 해당 회원의 접수내역조회
	 * @param stare_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectStareList(String mem_code)throws SQLException{ 
		List<StareVO> selectStareList = mypageDao.selectStareList(mem_code) ;
		return selectStareList;
	}
}
