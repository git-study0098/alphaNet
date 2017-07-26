package com.last.common.service;

import java.sql.SQLException;
import java.util.List;

import com.last.common.dao.MypageDAO;
import com.last.common.vo.StareCertifiVO;
import com.last.common.vo.StareVO;

public class MypageService {
	
	
	private MypageDAO mypageDao;
	
	public void setMypageDao(MypageDAO mypageDao) {
		this.mypageDao = mypageDao;
	}



	/**
	 * 해당 회원의 접수내역조회
	 * @param stare_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectStareList(String mem_code)throws SQLException{ 
		List<StareVO> selectStareList = mypageDao.selectStareList(mem_code) ;
		return selectStareList;
	}
	/**
	 * 해당 회원의 시험결과 내역 조회
	 * @param mem_code
	 * @return List<StareVO>
	 * @throws SQLException
	 */
	public List<StareVO> selectResultCheck(String mem_code)throws SQLException{ 
		List<StareVO> selectResultCheck = mypageDao.selectResultCheck(mem_code) ;
		return selectResultCheck;
	}
	
	/**
	 * 해당 회원의 학적 사항 조회
	 * @param mem_code
	 * @return List<StareCertifiVO>
	 * @throws SQLException
	 */
	public List<StareCertifiVO> selectSchoolCerti(String mem_code)throws SQLException{ 
		List<StareCertifiVO> selectSchoolCerti = mypageDao.selectSchoolCerti(mem_code);
		return selectSchoolCerti;
	}
	
	/**
	 * 해당회원의 경력사항 조회
	 * @param mem_code
	 * @return List<StareCertifiVO>
	 * @throws SQLException
	 */
	public List<StareCertifiVO> selectCareerCerti(String mem_code)throws SQLException{ 
		List<StareCertifiVO> selectCareerCerti = mypageDao.selectCareerCerti(mem_code);
		return selectCareerCerti;
	}
	
	/**
	 * 해당 회원의 경력상태 업데이트
	 * @param stareCertifiVO
	 * @return int
	 * @throws SQLException
	 */
	public int updateMemberCareer(StareCertifiVO stareCertifiVO)throws SQLException{
		int updateMemberCareer = mypageDao.updateMemberCareer(stareCertifiVO);
		return updateMemberCareer;
	}
	
	public StareCertifiVO selectMemberCareer(String mem_code)throws SQLException{ 
		StareCertifiVO stareCertifiVO = mypageDao.selectMemberCareer(mem_code);
		return stareCertifiVO;
	}
	
}
