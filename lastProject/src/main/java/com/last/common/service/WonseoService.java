package com.last.common.service;

import java.sql.SQLException;
import java.util.List;

import com.last.common.dao.WonseoDAO;
import com.last.common.vo.WonseoInfoVo;

public class WonseoService {
	
	WonseoDAO wonseoDao;

	public void setWonseoDao(WonseoDAO wonseoDao) {
		this.wonseoDao = wonseoDao;
	}
	
public List<WonseoInfoVo> selectnumgList() throws SQLException{
		
		List<WonseoInfoVo> numgList = wonseoDao.selectnumgList();
		
		return numgList;
	}
}
