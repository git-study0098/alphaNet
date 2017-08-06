package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.StareCertifiVO;
import com.last.common.vo.StareVO;
import com.last.common.vo.SubjectVo;

public class MypageDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	/**
	 * 해당회원의 접수내역
	 * @param stare_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectStareList(String mem_code)throws SQLException{
		List<StareVO> selectStareList= (ArrayList<StareVO>) client.queryForList("selectStareList",mem_code);
		return selectStareList;
	}
	/**
	 * 해당회원의 시험결과 조회
	 * @param mem_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectResultCheck(String mem_code)throws SQLException{
		List<StareVO> selectResultCheck = client.queryForList("selectResultCheck",mem_code);
		return selectResultCheck;
	}
	/**
	 * 해당 회원의 학적 조회
	 * @param mem_code
	 * @return List<StareCertifiVO>
	 * @throws SQLException
	 */
	public List<StareCertifiVO> selectSchoolCerti(String mem_code)throws SQLException{
		List<StareCertifiVO> selectSchoolCerti = (ArrayList<StareCertifiVO>) client.queryForList("selectSchoolCerti", mem_code);
		return selectSchoolCerti;
	}
	
	/**
	 * 해당 회원의 경력 조회
	 * @param mem_code
	 * @return List<StareCertifiVO>
	 * @throws SQLException
	 */
	public List<StareCertifiVO> selectCareerCerti(String mem_code)throws SQLException{
		List<StareCertifiVO> vo = (ArrayList<StareCertifiVO>) client.queryForList("selectCareerCerti", mem_code);
		return vo;
	}
	
	/**
	 * 경력정보 입력시 회원 경력 상태 업데이트
	 * @param mem_code
	 * @return int
	 * @throws SQLException
	 */
	public int updateMemberCareer(StareCertifiVO stareCertifiVO)throws SQLException{
		int updateMemberCareer = client.update("updateMemberCareer", stareCertifiVO);
		return updateMemberCareer;
	}
	
	/**
	 * 회원 경력
	 * @param mem_code
	 * @return
	 * @throws SQLException
	 */
	public StareCertifiVO selectMemberCareer(String mem_code)throws SQLException{
		StareCertifiVO stareCertifiVO = (StareCertifiVO) client.queryForObject("selectMemberCareer", mem_code);
		return stareCertifiVO;
	}

	/**
	 * 회원이 제출한 서류 정보 입력하는 메서드
	 * @param vo
	 * @throws SQLException
	 */
	public void insertDocument(SubjectVo vo) throws SQLException{
		client.update("insertDocument", vo);
	}
	
	/**
	 * 자격증 제출 서류 기본키 생성위한 전체글 갯수 가져오는 메서드
	 * @return int
	 * @throws SQLException
	 */
	public int countDocument() throws SQLException{
		int count = (int) client.queryForObject("countDocument");
		return count;
	}

	public List<String> selectApproveAt(String mem_code) throws SQLException{
		List<String> result = (List<String>) client.queryForList("selectApproveAt", mem_code);
		return result;
	}
}
