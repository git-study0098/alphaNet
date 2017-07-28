package com.last.excel.controller;

import java.sql.SQLException;

import com.last.common.vo.CbtVo;

public class ExcelService {
	private ExcelDAO excelDao;

	public void setExcelDao(ExcelDAO excelDao) {
		this.excelDao = excelDao;
	}
	
	public int insertCbtQuestion(CbtVo vo) throws SQLException{
		int result = 0;
		result = excelDao.insertCbtQuestion(vo);
		return result;
	}
}
