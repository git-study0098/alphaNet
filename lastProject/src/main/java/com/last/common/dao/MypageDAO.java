package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
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
}
