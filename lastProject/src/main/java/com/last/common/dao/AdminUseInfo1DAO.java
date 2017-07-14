package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;

public class AdminUseInfo1DAO {
		
	private SqlMapClient client;
		
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	
	public List<Notice1VO> selectUseInfo1List(int firstRow, int endRow) throws SQLException{
		List<Notice1VO> selectUseInfo1List = (ArrayList<Notice1VO>)client.queryForList("selectUseInfo1List",firstRow-1 , endRow-firstRow+1);
		return selectUseInfo1List;
	}
	
	public int selectUseInfo1Count() throws SQLException{
		int result = (Integer) client.queryForObject("selectUseInfo1_Count");
		return result;
	}
	
	public Notice1VO selectUseInfo1(String notice_code) throws SQLException{
		Notice1VO selectUseInfo1List = (Notice1VO) client.queryForObject("selectUseInfo1",notice_code);
		return selectUseInfo1List;
	}
	
	public int updateUseInfo1(Notice1VO notice1VO) throws SQLException{
		int result = (Integer) client.update("updateUseInfo1",notice1VO);
		return result;
	}
	public int deleteUseInfo1(String noticeCode) throws SQLException{
		int result = (Integer) client.update("deleteUseInfo1",noticeCode);
		return result;
	}
	public int insertUseInfo1(Notice1VO notice1VO) throws SQLException{
		int result = (Integer) client.update("insertUseInfo1",notice1VO);
		return result;
	}
	
	/////////////////////
}
