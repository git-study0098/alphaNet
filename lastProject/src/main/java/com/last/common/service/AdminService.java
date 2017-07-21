package com.last.common.service;

import java.sql.SQLException;

import com.last.common.dao.AdminDAO;
import com.last.common.vo.AdminVO;

public class AdminService {

	private AdminDAO adminDao;

	public void setAdminDao(AdminDAO adminDao) {
		this.adminDao = adminDao;
	}
	
	public AdminVO selectAdmin(String admin_code) throws SQLException {
		AdminVO vo  = adminDao.selectAdmin(admin_code); 
		return vo;
	}
	

}
