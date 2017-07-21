package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.StareCertifiVO;
import com.last.common.vo.StareVO;

public class MypageDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	/**
	 * 해당회원의 접수내역
	 * @param stare_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectStareList(String mem_code)throws SQLException{
		List<StareVO> selectStareList= (ArrayList<StareVO>) client.queryForList("selectStareList",mem_code);
		return selectStareList;
	}
	/**
	 * 해당회원의 시험결과 조회
	 * @param mem_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectResultCheck(String mem_code)throws SQLException{
		List<StareVO> selectResultCheck = client.queryForList("selectResultCheck",mem_code);
		return selectResultCheck;
	}
	/**
	 * 해당 회원의 학적 조회
	 * @param mem_code
	 * @return List<StareCertifiVO>
	 * @throws SQLException
	 */
	public List<StareCertifiVO> selectSchoolCerti(String mem_code)throws SQLException{
		List<StareCertifiVO> selectSchoolCerti = (ArrayList<StareCertifiVO>) client.queryForObject("selectSchoolCerti", mem_code);
		return selectSchoolCerti;
	}
	
	/**
	 * 해당 회원의 경력 조회
	 * @param mem_code
	 * @return List<StareCertifiVO>
	 * @throws SQLException
	 */
	public List<StareCertifiVO> selectCareerCerti(String mem_code)throws SQLException{
		List<StareCertifiVO> vo = (ArrayList<StareCertifiVO>) client.queryForObject("selectCareerCerti", mem_code);
		return vo;
	}
}
