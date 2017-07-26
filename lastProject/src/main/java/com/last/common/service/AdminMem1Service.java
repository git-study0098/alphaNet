package com.last.common.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.last.common.dao.AdminMem1DAO;
import com.last.common.vo.MemPagingVO;
import com.last.common.vo.MemberVo;
import com.last.common.vo.PagingVO;

public class AdminMem1Service {

	private AdminMem1DAO adminMemDao;

	public void setAdminMem1DAO(AdminMem1DAO adminMemDao) {
		this.adminMemDao = adminMemDao;
	}

	private static final int MEMBER_COUNT_PER_PAGE = 10;

	/*
	 * 휴면회원 조회 리스트
	 */
	public MemPagingVO selectNotice1List(int pageNumber)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		System.out.println("휴먼회원서비스 리스트 " + pageNumber);
		try {

			int notice1TotalCount = adminMemDao.selectNotice1Count();
			System.out.println("휴면계정회원 카운트서비스" + notice1TotalCount);

			List<MemberVo> notice1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1TotalCount > 0) {
				firstRow = (pageNumber - 1) * MEMBER_COUNT_PER_PAGE + 1; // 첫번째
																			// 행
				endRow = firstRow + MEMBER_COUNT_PER_PAGE - 1;
				// notice1List = adminMemDao.selectNotice1List(firstRow,
				// endRow);
				notice1List = adminMemDao.selectMember1List(firstRow, endRow);
			} else {
				currentPageNumber = 0;
				notice1List = Collections.emptyList();
			}
			// MemberVo vo = new MemberVo();
			// vo.setId(id);
			// vo.setName(name);
			// vo.setMem_lately_log_date(mem_lately_log_date);

			MemPagingVO vo = new MemPagingVO(notice1List, notice1TotalCount,
					currentPageNumber, MEMBER_COUNT_PER_PAGE, firstRow, endRow);
			vo.setNotice1List(notice1List);
			vo.setNotice1TotalCount(notice1TotalCount);
			vo.setCurrentPageNumber(currentPageNumber);
			vo.setNotice1CountPerPage(MEMBER_COUNT_PER_PAGE);
			vo.setFirstRow(firstRow);
			vo.setEndRow(endRow);

			return vo;

		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	/*
	 * 전체회원 조회 리스트
	 */
	public MemPagingVO selectAllMemberList(int pageNumber)
			throws ServiceException {
		int currentPageNumber = pageNumber;
		try {

			int notice1TotalCount = adminMemDao.selectAllMemberCount();
			System.out.println("전체계정회원 카운트서비스" + notice1TotalCount);

			List<MemberVo> notice1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1TotalCount > 0) {
				firstRow = (pageNumber - 1) * MEMBER_COUNT_PER_PAGE + 1; // 첫번째
																			// 행
				endRow = firstRow + MEMBER_COUNT_PER_PAGE - 1;
				// notice1List = adminMemDao.selectNotice1List(firstRow,
				// endRow);
				notice1List = adminMemDao
						.selectAllMember1List(firstRow, endRow);
			} else {
				currentPageNumber = 0;
				notice1List = Collections.emptyList();
			}

			MemPagingVO vo = new MemPagingVO(notice1List, notice1TotalCount,
					currentPageNumber, MEMBER_COUNT_PER_PAGE, firstRow, endRow);
			vo.setNotice1List(notice1List);
			vo.setNotice1TotalCount(notice1TotalCount);
			vo.setCurrentPageNumber(currentPageNumber);
			vo.setNotice1CountPerPage(MEMBER_COUNT_PER_PAGE);
			vo.setFirstRow(firstRow);
			vo.setEndRow(endRow);
			return vo;

		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}

	}

	/**
	 * 휴면회원계정상세조회
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public MemberVo selectAllMemberList(String id) throws SQLException {
		MemberVo vo = adminMemDao.selectNotice1(id);
		return vo;
	}

	// 휴면 계정 검색된 개수
	public int selectCount(String schType, String schText) throws SQLException {
		int result = adminMemDao.selectCount(schType, schText);
		return result;
	}

	//전체회원 검색된 개수
	public int selectAllMemberCount(String schType, String schText) throws SQLException {
		int result = adminMemDao.selectAllCount(schType, schText);
	
		return result;
	}

	public void updateNotice1(MemberVo memberVO) throws SQLException {
		adminMemDao.updateNotice1(memberVO);
	}

	public void deleteNotice1(String noticeCode) throws SQLException {
		adminMemDao.deleteNotice1(noticeCode);
	}

	// 휴면회원 검색
	public MemPagingVO searchNoticeList(int pageNumber, String schType,
			String schText) throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice1TotalCount = adminMemDao.selectCount(schType, schText);
			
			List<MemberVo> notice1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1TotalCount > 0) {
				firstRow = (pageNumber - 1) * MEMBER_COUNT_PER_PAGE + 1;
				endRow = firstRow + MEMBER_COUNT_PER_PAGE - 1;
				notice1List = adminMemDao.searchNoticeList(firstRow, endRow,
						schType, schText);
			} else {
				currentPageNumber = 0;
				notice1List = Collections.emptyList();
			}
			return new MemPagingVO(notice1List, notice1TotalCount,
					currentPageNumber, MEMBER_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	// 전체회원 검색
	public MemPagingVO searchAllMemberList(int pageNumber, String schType,
			String schText) throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int notice1TotalCount = adminMemDao
					.selectAllCount(schType, schText);
			System.out.println("검색된숫자 서비스"+notice1TotalCount);
			List<MemberVo> notice1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1TotalCount > 0) {
				firstRow = (pageNumber - 1) * MEMBER_COUNT_PER_PAGE + 1;
				endRow = firstRow + MEMBER_COUNT_PER_PAGE - 1;
				notice1List = adminMemDao.searchAllMemberList(firstRow, endRow,
						schType, schText);
				System.out.println("검색서비스"+schType);
				System.out.println("검색서비스"+notice1List.get(0).getId());
			} else {
				currentPageNumber = 0;
				notice1List = Collections.emptyList();
			}
			return new MemPagingVO(notice1List, notice1TotalCount,
					currentPageNumber, MEMBER_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

}
