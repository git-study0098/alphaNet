package com.last.common.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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
	public MemPagingVO selectNotice1List(int pageNumber)throws ServiceException {

		int currentPageNumber = pageNumber;
		System.out.println("휴먼회원서비스 리스트 "+pageNumber);
		try {
			
			int notice1TotalCount = adminMemDao.selectNotice1Count();
			System.out.println("휴면계정회원 카운트서비스"+notice1TotalCount);

			List<MemberVo> notice1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (notice1TotalCount > 0) {
				firstRow = (pageNumber - 1) * MEMBER_COUNT_PER_PAGE + 1; //첫번째 행
				endRow = firstRow + MEMBER_COUNT_PER_PAGE - 1;
//				notice1List = adminMemDao.selectNotice1List(firstRow, endRow);
				notice1List = adminMemDao.selectMember1List(firstRow,endRow);
			} else {
				currentPageNumber = 0;
				notice1List = Collections.emptyList();
			}
//			MemberVo vo = new MemberVo();
//			vo.setId(id);
//			vo.setName(name);
//			vo.setMem_lately_log_date(mem_lately_log_date);
			
			MemPagingVO vo = new MemPagingVO(notice1List, notice1TotalCount, currentPageNumber, MEMBER_COUNT_PER_PAGE, firstRow, endRow);
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

	// 게시판 기본코드 설정
//	public String registNotice(String notice) {
//		int noticeNumber = 0;
//		String compare = "";
//		String code = "";
//		List<String> temp = null;
//		List<String> codeList = new ArrayList<String>();
//		try {
//			temp = adminMemDao.selectNoticeCode();
//			for (int i = 0; i < temp.size(); i++) {
//				code = temp.get(i);
//				compare = code.substring(0, 5);
//				if (notice.equals(compare)) {
//					codeList.add(code);
//				}
//			}
//
//			if (codeList.size() == 0) {
//				notice += 1000000001 + "";
//			} else {
//				String noticeCode = codeList.get(codeList.size() - 1);
//				compare = noticeCode.substring(0, 5);
//
//				if (notice.equals(compare)) {
//					noticeNumber = Integer
//							.parseInt(noticeCode.substring(5, 15)) + 1;
//					notice = compare + noticeNumber + "";
//				}
//			}
//		} catch (NumberFormatException | SQLException e) {
//			e.printStackTrace();
//		}
//		return notice;
//	}

	public MemberVo selectNoticeCodeList(String id)
			throws SQLException {
		MemberVo vo = adminMemDao.selectNotice1(id);
		return vo;

	}
		public int selectCount(String schType, String schText)throws SQLException{
		int result = adminMemDao.selectCount(schType,schText);
		return result;
	}

	public void updateNotice1(MemberVo memberVO) throws SQLException {
		adminMemDao.updateNotice1(memberVO);
	}

	public void deleteNotice1(String noticeCode) throws SQLException {
		adminMemDao.deleteNotice1(noticeCode);
	}

//	public int insertNotice1(MemberVo notice1VO) throws SQLException {
//
//		int result = adminMemDao.insertNotice1(notice1VO);
//
//		return result;
//	}

	
	public MemPagingVO searchNoticeList(int pageNumber,String schType, String schText) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         
	         int notice1TotalCount = adminMemDao.selectCount(schType, schText);
	         System.out.println(schType+"타입 서비스");
	         System.out.println(schText+"텍스트 서비스");
	         List<MemberVo> notice1List = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (notice1TotalCount > 0) {
	            firstRow = (pageNumber - 1) * MEMBER_COUNT_PER_PAGE + 1;
	            endRow = firstRow + MEMBER_COUNT_PER_PAGE - 1;
	            notice1List = adminMemDao.searchNoticeList(firstRow, endRow, schType, schText);
	         } else {
	            currentPageNumber = 0;
	            notice1List = Collections.emptyList();
	         }
	         return new MemPagingVO(notice1List, notice1TotalCount,
	               currentPageNumber, MEMBER_COUNT_PER_PAGE, firstRow, endRow);
	      } catch (Exception e) {
	    	  throw new ServiceException("게시판 리스트 구하기 실패!",e);
	      } 
	   }
	
//	/**
//	 * 휴면 회원의 전체 리스트를 불러오는 메서드 
//	 * @return
//	 */
//	public MemberVo selectMemberList() {
//		MemberVo vo = new MemberVo();
//		vo = adminMemDao.selectNotice1();
//		
//		return null;
//	}
	   
}
