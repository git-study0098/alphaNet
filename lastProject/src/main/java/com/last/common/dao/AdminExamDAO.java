package com.last.common.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.CalendarVO;
import com.last.common.vo.ExkindVO;

public class AdminExamDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public int insertExkind(ExkindVO vo) throws SQLException{
		
		int result=0;
		result = client.update("insertExkind",vo);
		return result;
	}
	
	public int insertWSubj(String subj_nm, String exkind_code) throws SQLException{
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("subj_nm", subj_nm);
		map.put("exkind_code", exkind_code);
		
		int result=0;
		result = client.update("insertWSubj",map);
		return result;
	}
	
	public int insertPSubj(String subj_nm, String exkind_code) throws SQLException{
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("subj_nm", subj_nm);
		map.put("exkind_code", exkind_code);
		
		int result=0;
		result = client.update("insertPSubj",map);
		return result;
	}
	
	public List<CalendarVO> selectList() throws SQLException{
		List<CalendarVO> calList = client.queryForList("selectCalendar",null);
		return calList;
	}

	
}
