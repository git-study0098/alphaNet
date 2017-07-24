package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.MainDAO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;
import com.last.common.vo.WonseoInfoVo;

public class MainService {

	private MainDAO mainDao;

	public void setMainDao(MainDAO mainDao) {
		this.mainDao = mainDao;
	}
	
	private static final int NOTICE_COUNT_PER_PAGE=7;
	
	public PagingVO selectNotice1List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice1MainTotalCount = 7;

			List<Notice1VO> notice1MainList = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1MainTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				notice1MainList = mainDao.selectMainNotice1(firstRow, endRow, notice_code);
			} else {
				currentPageNumber = 0;
				notice1MainList = Collections.emptyList();
			}
			return new PagingVO(notice1MainList, notice1MainTotalCount,	currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}


	public PagingVO selectNotice2List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice2MainTotalCount = 7;

			List<Notice1VO> notice2MainList = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice2MainTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				notice2MainList = mainDao.selectMainNotice1(firstRow, endRow, notice_code);
			} else {
				currentPageNumber = 0;
				notice2MainList = Collections.emptyList();
			}
			return new PagingVO(notice2MainList, notice2MainTotalCount,	currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}
	
	public PagingVO selectNotice3List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice3MainTotalCount = 7;

			List<Notice1VO> notice3MainList = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice3MainTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				notice3MainList = mainDao.selectMainNotice1(firstRow, endRow, notice_code);
			} else {
				currentPageNumber = 0;
				notice3MainList = Collections.emptyList();
			}
			return new PagingVO(notice3MainList, notice3MainTotalCount,	currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}
	
	public PagingVO selectNotice4List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice4MainTotalCount = 7;

			List<Notice1VO> notice4MainList = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice4MainTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				notice4MainList = mainDao.selectMainNotice1(firstRow, endRow, notice_code);
			} else {
				currentPageNumber = 0;
				notice4MainList = Collections.emptyList();
			}
			return new PagingVO(notice4MainList, notice4MainTotalCount,	currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}
	
	public PagingVO selectNotice5List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice5MainTotalCount = 7;

			List<Notice1VO> notice5MainList = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice5MainTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				notice5MainList = mainDao.selectMainNotice1(firstRow, endRow, notice_code);
			} else {
				currentPageNumber = 0;
				notice5MainList = Collections.emptyList();
			}
			return new PagingVO(notice5MainList, notice5MainTotalCount,	currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}
	
	/**
	 * 원서접수 중인 시험 불러오는 서비스 메서드
	 * @return
	 * @throws SQLException
	 */
	public List<WonseoInfoVo> selectWonseoList() throws SQLException{
		List<WonseoInfoVo> wonseoList = null;
		
		wonseoList = mainDao.selectWonseoList();
		
		return wonseoList;
	}
	
	public Notice1VO detailNotice(String notice_code) throws SQLException{
		Notice1VO vo = null;
		vo = mainDao.detailNotice(notice_code);
		return vo;
	}
}
