package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminDocuDAO;
import com.last.common.vo.DocVO;
import com.last.common.vo.DocuPagingVO;

public class AdminDocuService {

	private AdminDocuDAO adminDocuDao;

	public void setAdminDocuDAO(AdminDocuDAO adminDocuDao) {
		this.adminDocuDao = adminDocuDao;
	}

	private static final int DOCU_COUNT_PER_PAGE = 10;

	/*
	 * 서류 전체 리스트 조회
	 */
	public DocuPagingVO selectAllDocuList(int pageNumber)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int docuTotalCount = adminDocuDao.selectDocuCount();

			List<DocVO> docuList = null;
			int firstRow = 0;
			int endRow = 0;
			if (docuTotalCount > 0) {
				firstRow = (pageNumber - 1) * DOCU_COUNT_PER_PAGE + 1; // 첫번째
																			// 행
				endRow = firstRow + DOCU_COUNT_PER_PAGE - 1;
				docuList = adminDocuDao.selectDocuList(firstRow, endRow);
			} else {
				currentPageNumber = 0;
				docuList = Collections.emptyList();
			}
			DocuPagingVO vo = new DocuPagingVO(docuList, docuTotalCount,
					currentPageNumber, DOCU_COUNT_PER_PAGE, firstRow, endRow);
			vo.setdocuList(docuList);
			vo.setdocuTotalCount(docuTotalCount);
			vo.setCurrentPageNumber(currentPageNumber);
			vo.setdocuCountPerPage(DOCU_COUNT_PER_PAGE);
			vo.setFirstRow(firstRow);
			vo.setEndRow(endRow);

			return vo;

		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	/**
	 * 서류 상세조회
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public DocVO selectDocuDetail(String id) throws SQLException {
		DocVO vo = adminDocuDao.selectDocuDetail(id);
		return vo;
	}

	// 서류 검색된 개수
	public int selectCount(String schType, String schText) throws SQLException {
		int result = adminDocuDao.selectSearchDocCount(schType, schText);
		return result;
	}

	public void updateAdminDoc(DocVO docuVO) throws SQLException {
		adminDocuDao.updateAdminDoc(docuVO);
		System.out.println("서비스 "+ docuVO.getApprove_at());
	}


	// 서류 검색
	public DocuPagingVO searchNoticeList(int pageNumber, String schType,
			String schText) throws ServiceException {

		int currentPageNumber = pageNumber;
		try {
			int docuTotalCount = adminDocuDao.selectSearchDocCount(schType, schText);
			
			List<DocVO> docuList = null;
			int firstRow = 0;
			int endRow = 0;
			if (docuTotalCount > 0) {
				firstRow = (pageNumber - 1) * DOCU_COUNT_PER_PAGE + 1;
				endRow = firstRow + DOCU_COUNT_PER_PAGE - 1;
				docuList = adminDocuDao.searchAllDocList(firstRow, endRow,
						schType, schText);
			} else {
				currentPageNumber = 0;
				docuList = Collections.emptyList();
			}
			return new DocuPagingVO(docuList, docuTotalCount,
					currentPageNumber, DOCU_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}


}
