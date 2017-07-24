package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;

public class AdminUseInfo1DAO {
		
	private SqlMapClient client;
		
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	//게시판에서 코드 가져오기
	public List<String> selectNoticeCode()throws SQLException{
		List<String> selectNoticeCode = (ArrayList<String>)client.queryForList("selectUseInfo1Code");
		return selectNoticeCode;
	}
	
	public List<Notice1VO> selectUseInfo1List(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectUseInfo1List = (ArrayList<Notice1VO>)client.queryForList("selectUseInfo1List",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectUseInfo1List;
	}
	
	public int selectUseInfo1Count(String notice_code) throws SQLException{
		int result = (Integer) client.queryForObject("selectUseInfo1_Count",notice_code);
		return result;
	}
	
	public Notice1VO selectUseInfo1(String notice_code) throws SQLException{
		Notice1VO selectUseInfo1List = (Notice1VO) client.queryForObject("selectUseInfo1",notice_code);
		return selectUseInfo1List;
	}
	
	public int updateUseInfo1(Notice1VO notice1VO) throws SQLException{
		int result = (Integer) client.update("updateUseInfo1",notice1VO);
		return result;
	}
	public int deleteUseInfo1(String noticeCode) throws SQLException{
		int result = (Integer) client.update("deleteUseInfo1",noticeCode);
		return result;
	}
	public int insertUseInfo1(Notice1VO notice1VO) throws SQLException{
		int result = (Integer) client.update("insertUseInfo1",notice1VO);
		return result;
	}
	
	/////////////////////
	/**
	 * 검색 글 개수
	 * @param notice_code
	 * @param schType
	 * @param schText
	 * @return
	 * @throws SQLException
	 */
	public int selectCount(String notice_code, String schType, String schText) throws SQLException{
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("notice_code", notice_code);
		map.put("schType", schType);
		map.put("schText", schText);
		int result = (Integer) client.queryForObject("selectUseInfoSearchCount",map);
		return result;
	}
	
	/**
	 * 검색 
	 * @param firstRow
	 * @param endRow
	 * @param notice_code
	 * @param schType
	 * @param schText
	 * @return
	 * @throws SQLException
	 */
	public List<Notice1VO> searchNoticeList(int firstRow, int endRow,String notice_code,String schType, String schText) throws SQLException{
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("notice_code", notice_code);
		map.put("schType", schType);
		map.put("schText", schText);
		List<Notice1VO> searchNoticeList = (ArrayList<Notice1VO>)client.queryForList("searchUseInfoList",map,firstRow-1 , endRow-firstRow+1);
		return searchNoticeList;
	}
	


}
