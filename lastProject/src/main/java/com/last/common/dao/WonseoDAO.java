package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.ExkindVO;
import com.last.common.vo.MemberVo;
import com.last.common.vo.PlaceVO;
import com.last.common.vo.WonseoInfoVo;

public class WonseoDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	//시험에 대한 정보를 가져오는애
	public List<WonseoInfoVo> selectnumgList() throws SQLException{
		
		List<WonseoInfoVo> numgList = (ArrayList<WonseoInfoVo>)client.queryForList("selectNumgInfo");
		
		return numgList;
	}
	//로그인한 아이디에 대한 정보를 가져오는애
	public MemberVo selectMemberData(String id) throws SQLException {
		MemberVo result = null;
		
		result = (MemberVo) client.queryForObject("selectMember", id);
		
		return result;
	}

	//해당 시도에 맞는 정보가져오기
	public List<PlaceVO> selectPlaceList(String placep) throws SQLException {
		System.out.println(placep);
		List<PlaceVO> list = (ArrayList<PlaceVO>)client.queryForList("selectPlaceList",placep);
		return list;
	}

	
	//대전광역시 서울특별시 이런것만 가져오는애
	public List<PlaceVO> selectPlacep() throws SQLException{
		List<PlaceVO> list = (ArrayList<PlaceVO>)client.queryForList("selectPlacep");
		return list;
	}
	
	//시험장소에 대한 모든 정보를 가져오는애
	public List<PlaceVO> selectExamPlace(String em_info_code,String si, String gu) throws SQLException {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("em_info_code", em_info_code);
		map.put("place_p", si);
		map.put("place_add", gu);
		List<PlaceVO> list = (ArrayList<PlaceVO>)client.queryForList("selectExamPlace",map);
		return list;
	}

	//장소정보 얻는 거
	public WonseoInfoVo selectPlaceData(String em_info_code) throws SQLException {
		WonseoInfoVo vo = new WonseoInfoVo();
		vo = (WonseoInfoVo)client.queryForObject("selectPlaceData",em_info_code);
		return vo;
	}
	
	//응시일 가져오는 애
	public String selectStareDate(String em_info_code) throws SQLException{
		String stareDate = "";
		stareDate = (String) client.queryForObject("selectStareDate",em_info_code);
		return stareDate;
	}
	
	//원서접수 응시정보 등록
		public int insertStare(String mem_code,String stare_date, String em_info_code, String em_nm) throws SQLException{
			int result = 0;
			
			HashMap<String, String> map = new HashMap<String, String>();
			
			map.put("mem_code", mem_code);
			map.put("stare_date", stare_date);
			map.put("em_info_code", em_info_code);
			map.put("stare_code", mem_code+em_info_code+em_nm);
			
			result = client.update("insertStare",map);
			
			return result;
		}
	
	//시험장소 지도 보는거
	public PlaceVO selectMap(String place_nm){
		PlaceVO  place = new PlaceVO();
		try {
			place =(PlaceVO) client.queryForObject("selectAdd" ,place_nm);
		} catch (SQLException e) {
			e.printStackTrace();
	    }
		return place;
		
	}
	
	/**
	 * 원서접수 중인 시험 불러오는 다오 메서드
	 * @return
	 * @throws SQLException
	 */
	public List<WonseoInfoVo> selectWonseoList() throws SQLException{
		List<WonseoInfoVo> selectWonseoList = (ArrayList<WonseoInfoVo>)client.queryForList("selectWonseoList");
		return selectWonseoList;
	}
	
	public List<ExkindVO> selectExkindNm(String exkind_code) throws SQLException{
		List<ExkindVO> list = (ArrayList<ExkindVO>)client.queryForList("selectExkindNm",exkind_code);
		return list;
	}
	
	public String selectEmNm(String em_info_code) throws SQLException{
		String em_nm = (String)client.queryForObject("selectEmNm",em_info_code);
		return em_nm;
	}
}
