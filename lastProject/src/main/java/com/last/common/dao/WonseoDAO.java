package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.WonseoInfoVo;

public class WonseoDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public List<WonseoInfoVo> selectnumgList() throws SQLException{
		
		List<WonseoInfoVo> numgList = (ArrayList<WonseoInfoVo>)client.queryForList("selectNumgInfo");
		
		return numgList;
	}
}
