package com.last.common.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminPdsDAO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;

public class AdminPdsService {

	private AdminPdsDAO adminDao;

	public void setAdminDao(AdminPdsDAO adminDao) {
		this.adminDao = adminDao;
	}

	private static final int NOTICE_COUNT_PER_PAGE = 10;

	/*
	 * 관리자 서비스 메소드
	 */
	public PagingVO selectNotice1List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice1TotalCount = adminDao.selectNotice1Count(notice_code);

			List<Notice1VO> notice1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1TotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				notice1List = adminDao.selectNotice1List(firstRow, endRow,
						notice_code);
			} else {
				currentPageNumber = 0;
				notice1List = Collections.emptyList();
			}
			return new PagingVO(notice1List, notice1TotalCount,
					currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	// 게시판 기본코드 설정
	public String registNotice(String notice) {
		int noticeNumber = 0;
		String compare = "";
		String code = "";
		List<String> temp = null;
		List<String> codeList = new ArrayList<String>();
		try {
			temp = adminDao.selectNoticeCode();
			for (int i = 0; i < temp.size(); i++) {
				code = temp.get(i);
				compare = code.substring(0, 8);
				if (notice.equals(compare)) {
					codeList.add(code);
				}
			}

			if (codeList.size() == 0) {
				notice += 1000000001 + "";
			} else {
				String noticeCode = codeList.get(codeList.size() - 1);
				compare = noticeCode.substring(0, 8);

				if (notice.equals(compare)) {
					noticeNumber = Integer
							.parseInt(noticeCode.substring(8, 18)) + 1;
					notice = compare + noticeNumber + "";
				}
			}
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
		return notice;
	}

	public Notice1VO selectNoticeCodeList(String notice_code)
			throws SQLException {
		Notice1VO vo = adminDao.selectNotice1(notice_code);
		return vo;

	}
		public int selectCount(String notice_code, String schType, String schText)throws SQLException{
		int result = adminDao.selectCount(notice_code,schType,schText);
		return result;
	}

	public void updateNotice1(Notice1VO notice1VO) throws SQLException {
		adminDao.updateNotice1(notice1VO);
	}

	public void deleteNotice1(String noticeCode) throws SQLException {
		adminDao.deleteNotice1(noticeCode);
	}

	public int insertNotice1(Notice1VO notice1VO) throws SQLException {

		int result = adminDao.insertNotice1(notice1VO);

		return result;
	}

	
	public PagingVO searchNoticeList(int pageNumber,String notice_code,String schType, String schText) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         
	         int notice1TotalCount = adminDao.selectNotice1Count(notice_code);

	         List<Notice1VO> notice1List = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (notice1TotalCount > 0) {
	            firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
	            endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
	            notice1List = adminDao.searchNoticeList(firstRow, endRow,notice_code,schType, schText);
	         } else {
	            currentPageNumber = 0;
	            notice1List = Collections.emptyList();
	         }
	         return new PagingVO(notice1List, notice1TotalCount,
	               currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
	      } catch (Exception e) {
	    	  throw new ServiceException("게시판 리스트 구하기 실패!",e);
	      } 
	   }
}
