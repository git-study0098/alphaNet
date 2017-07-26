package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.CalendarVO;
import com.last.common.vo.EmPlaceVO;
import com.last.common.vo.ExkindVO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.WonseoInfoVo;

public class AdminExamDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public int insertExkind(ExkindVO vo) throws SQLException{
		
		int result=0;
		result = client.update("insertExkind",vo);
		return result;
	}
	
	public int insertWSubj(String subj_nm, String exkind_code) throws SQLException{
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("subj_nm", subj_nm);
		map.put("exkind_code", exkind_code);
		
		int result=0;
		result = client.update("insertWSubj",map);
		return result;
	}
	
	public int insertPSubj(String subj_nm, String exkind_code) throws SQLException{
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("subj_nm", subj_nm);
		map.put("exkind_code", exkind_code);
		
		int result=0;
		result = client.update("insertPSubj",map);
		return result;
	}
	
	public List<CalendarVO> selectList() throws SQLException{
		List<CalendarVO> calList = client.queryForList("selectCalendar",null);
		return calList;
	}
	
	/**
	 * numgcode 맥스값 불러오는 메소드
	 * @return
	 * @throws SQLException
	 */
	public String selectMaxNumgCode() throws SQLException{
		String numg_code = (String) client.queryForObject("selectMaxNumgCode");
		return numg_code;
	}
	
	
	/**
	 * placecode 리스트 불러오는거
	 * @return
	 * @throws SQLException
	 */
	public List<EmPlaceVO> selectPlaceCode() throws SQLException{
		List<EmPlaceVO> selectPlaceCode = (ArrayList<EmPlaceVO>)client.queryForList("selectPlaceCode");
		return selectPlaceCode;
	}
	
	/**
	 * Numg 인서트문
	 * @param vo
	 * @return
	 * @throws SQLException
	 */
	public int insertNumg(WonseoInfoVo vo) throws SQLException{
		int result = client.update("insertNumg",vo);
		return result;
	}
	
	/**
	 * Eminfo 인서트문
	 * @param vo
	 * @return
	 * @throws SQLException
	 */
	public int insertEminfo(WonseoInfoVo vo) throws SQLException{
		int result = client.update("insertEminfo",vo);
		return result;
	}
	
	/**
	 * EmPlace 인서트문
	 * @param vo
	 * @return
	 * @throws SQLException
	 */
	public int insertEmplace(EmPlaceVO vo) throws SQLException{
		int result = client.update("insertEmplace",vo);
		return result;
	}

	public String selectExkind(String exkind_nm) throws SQLException{
		String exkind_code = (String) client.queryForObject("selectExkind",exkind_nm);
		return exkind_code;
	}
	
	public int selectExkindPr(String exkind_code) throws SQLException{
		int pr = (Integer) client.queryForObject("selectExkind_pr",exkind_code);
		return pr;
	}
	
	public int selectExkindWr(String exkind_code) throws SQLException{
		int pr = (Integer) client.queryForObject("selectExkind_wr",exkind_code);
		return pr;
	}
	
	
	public List<ExkindVO> selectExkindAll() throws SQLException{
		
		List<ExkindVO> list = client.queryForList("selectExkindAll");
		
		return list;
	}
	
	public List<CalendarVO> selectNumgList(int firstRow, int endRow) throws SQLException{
		List<CalendarVO> numgList = (ArrayList<CalendarVO>)client.queryForList("numgList",firstRow-1 , endRow-firstRow+1);
		
		return numgList;
	}
	
	public int selectNumgCount()throws SQLException{
		int count = (Integer) client.queryForObject("numgCount");
		
		return count;
	}
	
	public CalendarVO selectNumg(String numg_code)throws SQLException{
		
		CalendarVO vo = (CalendarVO) client.queryForObject("selectNumg",numg_code);
		
		return vo;
		
	}
	
	public int updateNumg(CalendarVO vo) throws SQLException{
		
		int result = client.update("updateNumg",vo);
		
		return result;
	}
	public int updateEmNm(String em_nm , String numg_code) throws SQLException{
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("em_nm", em_nm);
		map.put("numg_code", numg_code);
		
		int result = client.update("updateNumg",map);
		
		return result;
	}
	
	
}
