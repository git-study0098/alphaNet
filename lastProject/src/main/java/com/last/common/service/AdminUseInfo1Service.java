package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminUseInfo1DAO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

public class AdminUseInfo1Service {
	
	private AdminUseInfo1DAO adminDao;
	
	public void setAdminDao(AdminUseInfo1DAO adminDao) {
		this.adminDao = adminDao;
	}
	
	private static final int USEINFO_COUNT_PER_PAGE=10;
	/*
	    * 관리자 서비스 메소드
	    */
	   public PagingVO selectUseInfo1List(int pageNumber) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         
	         int useInfo1TotalCount = adminDao.selectUseInfo1Count();

	         List<Notice1VO> useInfo1List = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (useInfo1TotalCount > 0) {
	            firstRow = (pageNumber - 1) * USEINFO_COUNT_PER_PAGE + 1;
	            endRow = firstRow + USEINFO_COUNT_PER_PAGE - 1;
	            useInfo1List = adminDao.selectUseInfo1List(firstRow, endRow);
	         } else {
	            currentPageNumber = 0;
	            useInfo1List = Collections.emptyList();
	         }
	         return new PagingVO(useInfo1List, useInfo1TotalCount,
	               currentPageNumber, USEINFO_COUNT_PER_PAGE, firstRow, endRow);
	      } catch (Exception e) {
	    	  throw new ServiceException("게시판 리스트 구하기 실패!",e);
	      } 
	   }
	   
	public Notice1VO selectUseInfoCodeList(String notice_code) throws SQLException{
		Notice1VO vo = adminDao.selectUseInfo1(notice_code);
		return vo;
		
	}
	
	public void updateUseInfo1(Notice1VO notice1VO) throws SQLException{
		adminDao.updateUseInfo1(notice1VO);
	}
	
	public void deleteUseInfo1(String noticeCode) throws SQLException{
		adminDao.deleteUseInfo1(noticeCode);
	}
	
	public int insertUseInfo1(Notice1VO notice1VO) throws SQLException{
		
		int result=adminDao.insertUseInfo1(notice1VO);
		
		return result;
	}
}
