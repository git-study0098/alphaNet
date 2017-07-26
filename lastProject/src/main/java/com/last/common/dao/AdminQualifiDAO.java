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
	
	public QualifiCertiVO selectQualifiPriceList(String qualifi_certi_code) throws SQLException{
		QualifiCertiVO selectQualifiPriceList = (QualifiCertiVO)client.queryForObject("selectQualifiPriceList", qualifi_certi_code);
		return selectQualifiPriceList;
	}
	
	public QualifiMemberVO selectMemberInfoList(String mem_code) throws SQLException{
		QualifiMemberVO selectMemberInfoList = (QualifiMemberVO)client.queryForObject("selectMemberInfoList", mem_code);
		return selectMemberInfoList;
	}
	
	public QualifiMemberVO selectMemAuth(String mem_code) throws SQLException{
		QualifiMemberVO selectMemAuth = (QualifiMemberVO)client.queryForObject("selectMemAuth", mem_code);
		return selectMemAuth;
	}
	
	public int selectCertiPrice(String qualifi_certi_code) throws SQLException{
		int result = (Integer)client.queryForObject("selectCertiPrice",qualifi_certi_code);
		return result;
	}
	
	public QualifiCertiVO checkQualifi(QualifiCertiVO vo) throws SQLException{
		
		QualifiCertiVO vo1 = (QualifiCertiVO) client.queryForObject("checkQualifi",vo);
		
		return vo1; 
	}
	
	
}
