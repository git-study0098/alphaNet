package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;

public class AdminNotice1DAO {
		
	private SqlMapClient client;
		
		public void setClient(SqlMapClient client) {
			this.client = client;
		}
		
		//노티스코드를 꺼내옴
		public List<String> selectNoticeCode()throws SQLException{
			List<String> selectNoticeCode = (ArrayList<String>)client.queryForList("selectNoticeCode");
			return selectNoticeCode;
		}
		public int selectCount(String notice_code, String schType, String schText) throws SQLException{
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("notice_code", notice_code);
			map.put("schType", schType);
			map.put("schText", schText);
			int result = (Integer) client.queryForObject("selectCount",map);
			return result;
		}
		
		public List<Notice1VO> selectNotice1List(int firstRow, int endRow,String notice_code) throws SQLException{
			List<Notice1VO> selectNotice1List = (ArrayList<Notice1VO>)client.queryForList("selectNotice1List",notice_code,firstRow-1 , endRow-firstRow+1);
			return selectNotice1List;
		}
		
		public int selectNotice1Count(String notice_code) throws SQLException{
			int result = (Integer) client.queryForObject("selectNotice1_Count",notice_code);
			return result;
		}
		
		public Notice1VO selectNotice1(String notice_code) throws SQLException{
			Notice1VO selectNotice1List = (Notice1VO) client.queryForObject("selectNotice1",notice_code);
			return selectNotice1List;
		}
		
		public int updateNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("updateNotice1",notice1VO);
			return result;
		}
		public int deleteNotice1(String noticeCode) throws SQLException{
			int result = (Integer) client.update("deleteNotice1",noticeCode);
			return result;
		}
		public int insertNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("insertNotice1",notice1VO);
			return result;
		}
		
		/////////////////////
		//member로 옮길거야
		public List<Notice1VO> searchNoticeList(int firstRow, int endRow,String notice_code,String schType, String schText) throws SQLException{
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("notice_code", notice_code);
			map.put("schType", schType);
			map.put("schText", schText);
			List<Notice1VO> searchNoticeList = (ArrayList<Notice1VO>)client.queryForList("searchNoticeList",map,firstRow-1 , endRow-firstRow+1);
			return searchNoticeList;
		}
		
		
}
