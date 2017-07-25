package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.QualifiCertiVO;
import com.last.common.vo.QualifiMemberVO;

public class AdminQualifiDAO {
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	/**
	 * 해당 회원의 자격증 개수에 대한 페이징 처리
	 * @param firstRow
	 * @param endRow
	 * @param mem_code
	 * @return QualifiCertiVO
	 * @throws SQLException
	 */
	public List<QualifiCertiVO> selectQualifiCertiCount(int firstRow,int endRow,String mem_code)throws SQLException{
		List<QualifiCertiVO> vo = (ArrayList<QualifiCertiVO>)client.queryForList("selectQualifiCertiList",mem_code,firstRow-1,endRow-firstRow+1);
		return vo;
	}
	
	/**
	 * 해당 회원의 자격증 전체 리스트
	 * @param mem_code
	 * @return List<QualifiCertiVO>
	 * @throws SQLException
	 */
	public List<QualifiCertiVO> selectQualifiCertiList(String mem_code)throws SQLException{
		List<QualifiCertiVO> selectQualifiCertiList = (ArrayList<QualifiCertiVO>)client.queryForList("selectQualifiCertiList",mem_code);
		return selectQualifiCertiList;
	}
	
	/**
	 * 해당 회원의 총 자격증 개수
	 * @param mem_code
	 * @return int
	 * @throws SQLException
	 */
	public int qualifiCertiCount(String mem_code)throws SQLException{
		int result = (Integer)client.queryForObject("qualifiCertiCount",mem_code);
		return result;
	}
	
	/**
	 * 해당 회원의 자격증 결제 정보 메서드.
	 * @param qualifi_certi_code
	 * @return QualifiCertiVO
	 * @throws SQLException
	 */
	public QualifiCertiVO selectQualifiPriceList(String qualifi_certi_code) throws SQLException{
		QualifiCertiVO selectQualifiPriceList = (QualifiCertiVO)client.queryForObject("selectQualifiCertiList2", qualifi_certi_code);
		return selectQualifiPriceList;
	}
		
	/**
	 * 해당 회원의 정보 가져오는 메서드
	 * @param mem_code
	 * @return QualifiMemberVO
	 * @throws SQLException
	 */
	public QualifiMemberVO selectMemberInfoList(String mem_code) throws SQLException{
		QualifiMemberVO selectMemberInfoList = (QualifiMemberVO)client.queryForObject("selectMemberInfoList", mem_code);
		return selectMemberInfoList;
	}
	
	/**
	 * 자격증 발급 결제전 회원 정보 확인 메서드
	 * @param mem_code
	 * @return QualifiMemberVO
	 * @throws SQLException
	 */
	public QualifiMemberVO selectMemAuth(String mem_code) throws SQLException{
		QualifiMemberVO selectMemAuth = (QualifiMemberVO)client.queryForObject("selectMemAuth", mem_code);
		return selectMemAuth;
	}
	
	/**
	 * 발급 받으려는 자격증의 합계 금액
	 * @param qualifi_certi_code
	 * @return int
	 * @throws SQLException
	 */
	public int selectCertiPrice(String qualifi_certi_code) throws SQLException{
		int result = (Integer)client.queryForObject("selectCertiPrice",qualifi_certi_code);
		return result;
	}
	
	public String selectMaxQualifiCertiIssCode(String mem_code) throws SQLException{
		String selectMaxQualifiCertiIssCode = (String) client.queryForObject("selectMaxQualifiCertiIssCode", mem_code);
		return selectMaxQualifiCertiIssCode;
	}
	
	/**
	 * 자격증 발급 신청 내역 조회 메서드
	 * @param mem_code
	 * @return List<QualifiCertiVO>
	 * @throws SQLException
	 */
	public List<QualifiCertiVO> selectQualifiCertiRequest(String mem_code) throws SQLException{
		List<QualifiCertiVO> selectQualifiCertiRequest = (ArrayList<QualifiCertiVO>)client.queryForList("selectQualifiCertiRequest", mem_code);
		return selectQualifiCertiRequest;
	}
	
	//새로 발급받은 자격증 구분번호 생성위해 가져오는 메서드
	public List<String> selectQualifiCertiIssCode(String qualifi_certi_code) throws SQLException{
		List<String> selectQualifiCertiIssCode = (ArrayList<String>)client.queryForList("selectQualifiCertiIssCode", qualifi_certi_code);
		return selectQualifiCertiIssCode;
	}
	
	/**
	 * 새로 발급 받은 자격증을 추가하는 메서드
	 * @param vo
	 * @return int
	 * @throws SQLException
	 */
	public int insertQualifiCertiRequest(QualifiCertiVO vo) throws SQLException{
		QualifiCertiVO qualifi = (QualifiCertiVO) client.queryForObject("selectStareCode", vo);
		vo.setQualifi_certi_nm(qualifi.getQualifi_certi_nm());
		vo.setStare_code(qualifi.getStare_code());
		int result = client.update("insertQualifiCertiRequest", vo);
		return result;
	}
	
}
