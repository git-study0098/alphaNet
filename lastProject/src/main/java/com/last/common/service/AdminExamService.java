package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminExamDAO;
import com.last.common.vo.CalendarVO;
import com.last.common.vo.EmPlaceVO;
import com.last.common.vo.ExkindVO;
import com.last.common.vo.NumgPagingVO;
import com.last.common.vo.PagingVO;
import com.last.common.vo.WonseoInfoVo;

public class AdminExamService {
	
	private static final int NOTICE_COUNT_PER_PAGE = 10;
	
	private AdminExamDAO adminExamDao;

	public void setAdminExamDao(AdminExamDAO adminExamDao) {
		this.adminExamDao = adminExamDao;
	}
	
	public int insertExkind(ExkindVO vo) throws SQLException{
		int result=0;
		result = adminExamDao.insertExkind(vo);
		return result;
	}
	
	public int insertWSubj(String subj_nm, String exkind_code) throws SQLException{
		int result=0;
		result = adminExamDao.insertWSubj(subj_nm,exkind_code);
		return result;
	}
	
	public int insertPSubj(String subj_nm,String exkind_code) throws SQLException{
		int result=0;
		result = adminExamDao.insertPSubj(subj_nm,exkind_code);
		return result;
	}
	
	public List<CalendarVO> selectList() throws SQLException{
		List<CalendarVO> calList = adminExamDao.selectList();
		return calList;
	}
	
	public String selectMaxNumgCode() throws SQLException{
		String numg_code = adminExamDao.selectMaxNumgCode();
		return numg_code;
	}
	
	public List<EmPlaceVO> selectPlaceCode() throws SQLException{
		List<EmPlaceVO> list = adminExamDao.selectPlaceCode();
		return list;
	}
	
	public int insertNumg(WonseoInfoVo vo) throws SQLException{
		int result = adminExamDao.insertNumg(vo);
		return result;
	}
	
	public int insertEminfo(WonseoInfoVo vo) throws SQLException{
		int result = adminExamDao.insertEminfo(vo);
		return result;
	}
	
	public int insertEmplace(EmPlaceVO vo) throws SQLException{
		int result = adminExamDao.insertEmplace(vo);
		return result;
	}

	public String selectExkind(String exkind_nm) throws SQLException {
		String exkind_code = adminExamDao.selectExkind(exkind_nm);
		return exkind_code;
	}

	public int selectExkindWr(String exkind_code) throws SQLException{
		int pr = adminExamDao.selectExkindWr(exkind_code);
		return pr;
	}
	
	public int selectExkindPr(String exkind_code) throws SQLException{
		int pr = adminExamDao.selectExkindPr(exkind_code);
		return pr;
	}
	
	
	public List<ExkindVO> selectExkindAll() throws SQLException{
		
		List<ExkindVO> list = adminExamDao.selectExkindAll();
		
		return list;
	}
	
	public NumgPagingVO selectNumgList(int pageNumber)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int numgTotalCount = adminExamDao.selectNumgCount();

			List<CalendarVO> numgList = null;
			int firstRow = 0;
			int endRow = 0;
			if (numgTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1; //첫번째 행
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				numgList = adminExamDao.selectNumgList(firstRow, endRow);
						
			} else {
				currentPageNumber = 0;
				numgList = Collections.emptyList();
			}
			NumgPagingVO vo = new NumgPagingVO(numgList, numgTotalCount, currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
			vo.setNumgList(numgList);
			vo.setNumgTotalCount(numgTotalCount);
			vo.setCurrentPageNumber(currentPageNumber);
			vo.setNumgCountPerPage(NOTICE_COUNT_PER_PAGE);
			vo.setFirstRow(firstRow);
			vo.setEndRow(endRow);
			
			return vo;
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}
	
	public CalendarVO selectNumg(String numg_code)throws SQLException{
		
		CalendarVO vo = adminExamDao.selectNumg(numg_code);
		
		return vo;
	}
	
	public int updateNumg(CalendarVO vo) throws SQLException{
		
		int result = adminExamDao.updateNumg(vo);
		
		return result;
	}
	
	public int updateEmNm(String em_nm , String numg_code) throws SQLException{
		
		int result = adminExamDao.updateEmNm(em_nm, numg_code);
		
		return result;
	}
	

	
}
