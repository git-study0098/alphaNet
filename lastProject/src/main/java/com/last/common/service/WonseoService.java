package com.last.common.service;

import java.sql.SQLException;
import java.util.List;

import com.last.common.dao.MainDAO;
import com.last.common.dao.WonseoDAO;
import com.last.common.vo.ExkindVO;
import com.last.common.vo.MemberVo;
import com.last.common.vo.PlaceVO;
import com.last.common.vo.WonseoInfoVo;

public class WonseoService {
	
	WonseoDAO wonseoDao;

	public void setWonseoDao(WonseoDAO wonseoDao) {
		this.wonseoDao = wonseoDao;
	}
	
	public List<WonseoInfoVo> selectWonseoList() throws SQLException{
		List<WonseoInfoVo> wonseoList = wonseoDao.selectWonseoList();
		return wonseoList;
	}

	public MemberVo selectMemberData(String id) throws SQLException {
		MemberVo result = wonseoDao.selectMemberData(id);
		return result;
	}

	public List<PlaceVO> selectPlaceList(String place_p) throws SQLException {
		List<PlaceVO> list = wonseoDao.selectPlaceList(place_p);
		return list;
	}

	public List<PlaceVO> selectPlacep() throws SQLException{
		List<PlaceVO> list = wonseoDao.selectPlacep();
		return list;
	}

	public List<PlaceVO> selectExamPlace( String em_info_code,String si, String gu) throws SQLException {
		List<PlaceVO> list = wonseoDao.selectExamPlace(em_info_code,si,gu);
		return list;
	}
	
	public WonseoInfoVo selectPlaceData(String em_info_code) throws SQLException{
		
		return wonseoDao.selectPlaceData(em_info_code);
	}
	
	public String selectStareDate(String em_info_code) throws SQLException{
		return wonseoDao.selectStareDate(em_info_code);
	}
	
	public int insertStare(String mem_code,String stare_date, String em_info_code, String em_nm) throws SQLException{
		int result =0;
		
		String[] em_nm1 = em_nm.split("차");
		if(em_nm1[1].equals("필기")){
			em_nm = "W";
		}else if(em_nm1[1].equals("실기")){
			em_nm = "P";
		}
		
		
		result = wonseoDao.insertStare(mem_code, stare_date, em_info_code,em_nm);
		
		return result;
	}
	
	public String selectEmNm(String em_info_code) throws SQLException{
		String em_nm = wonseoDao.selectEmNm(em_info_code);
		return em_nm;
	}
	
	public PlaceVO selectMap(String place_nm){
		PlaceVO vo = new PlaceVO();
		vo = wonseoDao.selectMap(place_nm);
		return vo;
	}
	
	public List<ExkindVO> selectExkindNm(String exkind_code)throws SQLException{
		
		List<ExkindVO> list = wonseoDao.selectExkindNm(exkind_code);
		return list;
 	}
}
