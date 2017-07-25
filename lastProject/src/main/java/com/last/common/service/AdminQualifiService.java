package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminQualifiDAO;
import com.last.common.vo.QualifiCertiVO;
import com.last.common.vo.QualifiMemberVO;
import com.last.common.vo.QualifiPagingVO;


public class AdminQualifiService {
	private AdminQualifiDAO adminQualifiDao;

	public void setAdminDao(AdminQualifiDAO adminQualifiDao) {
		this.adminQualifiDao = adminQualifiDao;
	}
	
	private static final int QUALIFI_COUNT_PER_PAGE = 5;
	
	/**
	 * 페이징 처리 서비스 메서드
	 * @param pageNumber
	 * @param mem_code
	 * @return QualifiPagingVO
	 * @throws ServiceException
	 */
	public QualifiPagingVO selectQualifiCertiList(int pageNumber,String mem_code) throws ServiceException {

	      int currentPageNumber = pageNumber;
	      try {
	         int qualifiCertiCount = adminQualifiDao.qualifiCertiCount(mem_code);

	         List<QualifiCertiVO> qualifiCertiList = null;
	         int firstRow = 0;
	         int endRow = 0;
	         if (qualifiCertiCount > 0) {
	            firstRow = (pageNumber - 1) * QUALIFI_COUNT_PER_PAGE + 1;
	            endRow = firstRow + QUALIFI_COUNT_PER_PAGE - 1;
	            qualifiCertiList = adminQualifiDao.selectQualifiCertiCount(firstRow, endRow, mem_code);
	         } else {
	            currentPageNumber = 0;
	            qualifiCertiList = Collections.emptyList();
	         }
	         return new QualifiPagingVO(qualifiCertiCount, qualifiCertiList, QUALIFI_COUNT_PER_PAGE, currentPageNumber, firstRow, endRow);
	      } catch (Exception e) {
	    	  e.printStackTrace();
	    	  throw new ServiceException("자격증 페이징 처리 실패",e);
	    	  
      } 
   }
	
	/**
	 * 해당 회원의 자격증 리스트
	 * @param mem_code
	 * @return List<QualifiCertiVO>
	 * @throws SQLException
	 */
	public List<QualifiCertiVO> selectQualifiCertiList(String mem_code) throws SQLException{
		List<QualifiCertiVO> vo = adminQualifiDao.selectQualifiCertiList(mem_code);
		return vo;
	}
	
	/**
	 * 자격증 발급 수수료 리스트
	 * @param qualifi_certi_code
	 * @return QualifiCertiVO
	 * @throws SQLException
	 */
	public QualifiCertiVO selectQualifiPriceList(String qualifi_certi_code) throws SQLException{
		QualifiCertiVO vo = adminQualifiDao.selectQualifiPriceList(qualifi_certi_code);
		return vo;
	}
	
	/**
	 * 자격증 발급 시 회원 정보 리스트 불러오는 메서드
	 * @param mem_code
	 * @return
	 * @throws SQLException
	 */
	public QualifiMemberVO selectMemberInfoList(String mem_code) throws SQLException{
		QualifiMemberVO vo = adminQualifiDao.selectMemberInfoList(mem_code);
		return vo;
	}
	
	/**
	 * 회원 기본 인증 메서드
	 * @param mem_code
	 * @return QualifiMemberVO
	 * @throws SQLException
	 */
	public QualifiMemberVO selectMemAuth(String mem_code) throws SQLException{
		QualifiMemberVO vo = adminQualifiDao.selectMemAuth(mem_code);
		return vo;
	}
	
	public int selectCertiPrice(String qualifi_certi_code)throws SQLException{
		int result = adminQualifiDao.selectCertiPrice(qualifi_certi_code);
		return result;
	}
	
	/**
	 * 회원이 발급 신청한 자격증 내역 조회 메서드
	 * @param mem_code
	 * @return List<QualifiCertiVO>
	 * @throws SQLException
	 */
	public List<QualifiCertiVO> selectQualifiCertiRequest(String mem_code) throws SQLException{
		List<QualifiCertiVO> vo = adminQualifiDao.selectQualifiCertiRequest(mem_code);
		return vo;
	}
	
	public List<String> selectQualifiCertiIssCode(String qualifi_certi_code) throws SQLException{
		List<String> vo = adminQualifiDao.selectQualifiCertiIssCode(qualifi_certi_code);
		return vo;
	}
	
	/**
	 * 자격증 발급 시 발급 내역 리스트에 추가하는 메서드
	 * @param qualifi_certi_iss_code
	 * @return int
	 * @throws SQLException
	 */
	public int insertQualifiCertiRequest(QualifiCertiVO vo) throws SQLException{
		int result = 0;
		result = adminQualifiDao.insertQualifiCertiRequest(vo);
		return result;
	}
	

	/**
	 * Qualifi_Certi_Iss_Code 생성 메서드
	 * @return
	 */
	public String createQualifiCertiIssCode(String qualifi_certi_code, String mem_code) throws SQLException{
		String qualifi_code = ""; //중복코드 걸러내려만든 변수
		int qualifi_code_num = 0; //중복코드 걸러내려만든 변수 시퀀스부분
		String qualifiCertiIssCode = ""; //최종 생성되는 코드 리스트
		
		String selectMaxQualifiCertiIssCode = adminQualifiDao.selectMaxQualifiCertiIssCode(mem_code);
		System.out.println(selectMaxQualifiCertiIssCode+"서비스");
		
		qualifi_code = qualifi_certi_code.substring(0,8);
		qualifi_code_num = Integer.parseInt(selectMaxQualifiCertiIssCode.substring(8,15));	
		
		int num = qualifi_code_num+1;
		
		qualifiCertiIssCode = qualifi_code + num;
		
		return qualifiCertiIssCode;
	}
}
