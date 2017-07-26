package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.QualifiRequestSearchVO;

public class MemberQualifiRequestDAO {
private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	/**
	 * 회원이 발급 신청한 자격증 정보 가져오는 메서드
	 * @param mem_code
	 * @return List<QualifiRequestSearchVO>
	 * @throws SQLException
	 */
	public List<QualifiRequestSearchVO> selectQualifiRequest(String mem_code) throws SQLException{
		List<QualifiRequestSearchVO> selectQualifiRequest = (ArrayList<QualifiRequestSearchVO>)client.queryForList("selectQualifiRequest",mem_code);
		return selectQualifiRequest;
	}
	
//	public void insertQualifiRequest(String )
	
	
}
