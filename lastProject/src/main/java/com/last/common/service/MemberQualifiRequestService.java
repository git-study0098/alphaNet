package com.last.common.service;

import java.sql.SQLException;
import java.util.List;

import com.last.common.dao.MemberQualifiRequestDAO;
import com.last.common.vo.QualifiRequestSearchVO;

public class MemberQualifiRequestService {
	private MemberQualifiRequestDAO memQualifiDao;

	public void setMemDao(MemberQualifiRequestDAO memQualifiDao) {
		this.memQualifiDao = memQualifiDao;
	}
	
	/**
	 * 회원이 발급 신청한 자격증 정보 가져오는 메서드
	 * @param mem_code
	 * @return
	 * @throws SQLException
	 */
	public List<QualifiRequestSearchVO> selectQualifiCertiList(String mem_code) throws SQLException{
		List<QualifiRequestSearchVO> vo = memQualifiDao.selectQualifiRequest(mem_code);
		return vo;
	}
}
