package com.last.common.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

public class JagukDAO {
	
	protected static SqlMapClient client;
	
	public void setClient(SqlMapClient client){		
		this.client=client;
	}
	
	
	
}
