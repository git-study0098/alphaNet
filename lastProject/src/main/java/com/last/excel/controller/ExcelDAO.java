package com.last.excel.controller;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.CbtVo;

public class ExcelDAO {
	
	private SqlMapClient client;

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public int insertCbtQuestion(CbtVo vo) throws SQLException{
		int result = 0;
		result = client.update("insertCbtQuestion", vo);
		return result;
	}
}
