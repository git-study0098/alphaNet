package com.last.client.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.ClientVO;
import com.last.common.vo.Notice1VO;

public class ClientDao {

	protected static SqlMapClient client;

	public void setClient(SqlMapClient client) {
		this.client = client;
	}

	public static SqlMapClient getSqlMapInstance() {
		return client;
	}
	
	
	public int insertQna(ClientVO vo) throws SQLException {
		int result=-1;
		try{
			result=client.update("insertClient",vo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return result;
	}

	//insert를 위해서 코드를 꺼내옴
	public List<String> selectClientCode() throws SQLException {
		List<String> selectClientCode = (ArrayList<String>)client.queryForList("selectClientCode");
		return selectClientCode;
	}
	
	public List<ClientVO> selectClient1List(int firstRow, int endRow,String client_code) throws SQLException{
		List<ClientVO> selectClient1List = (ArrayList<ClientVO>)client.queryForList("selectClient1List",client_code,firstRow-1 , endRow-firstRow+1);
		return selectClient1List;
	}
	
	public int selectClient1Count(String client_code) throws SQLException{
		int result = (Integer) client.queryForObject("selectClient1_Count",client_code);
		return result;
	}
	
	public ClientVO selectClient1(String client_code) throws SQLException{
		ClientVO selectClient1List = (ClientVO) client.queryForObject("selectClient1",client_code);
		return selectClient1List;
	}
	
	public List<ClientVO> selectClientAll(int firstRow, int endRow) throws SQLException{
		List<ClientVO> selectClientAllList = (ArrayList<ClientVO>)client.queryForList("selectClientAll",firstRow-1 , endRow-firstRow+1);
		return selectClientAllList;
	}
	
	public int selectAllCount() throws SQLException{
		int result = (Integer) client.queryForObject("selectAll_Count");
		return result;
	}
	
	
	public List<ClientVO> selecteSearch(String client_code ,String start_date,String end_date,String word) throws SQLException{
		Map<String, String> param = new HashMap<String, String>();
		param.put("client_code", client_code);
		param.put("start_date", start_date);
		param.put("end_date", end_date);
		param.put("word", word);
		List<ClientVO> searchList = client.queryForList("selectsearch" ,param);
	 return searchList;
	}

	
	
	//고객의소리 공지사항 페이징
	public int selectNoticeCount(String notice_code) throws SQLException{
		int result = (Integer) client.queryForObject("selectNoticeCount",notice_code);
		return result;
	}
	
	//리스트
	public List<Notice1VO> selectNoticeList(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectNoticeList = (ArrayList<Notice1VO>)client.queryForList("selectNotice",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectNoticeList;
	}
	
	
	
	
}
