package com.last.common.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.AdminVO;

public class AdminDAO {

	private SqlMapClient client;

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	/**
	 * 관리자의 코드를 가지고 담당부서 가져오는것
	 * @param admin_code
	 * @return
	 * @throws SQLException
	 */
	public AdminVO selectAdmin(String admin_code) throws SQLException{
		AdminVO selectAdmin = (AdminVO) client.queryForObject("selectAdmin",admin_code);
		return selectAdmin;
	}

}
