package com.last.client.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.NoInitialContextException;

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
	
	
	//고객의 소리 ㄷ검색 리스트
	public List<ClientVO> searchClientList(int firstRow, int endRow,String schType, String schText,String startDate ,String endDate) throws SQLException{
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("schType", schType);
		map.put("schText", schText);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		System.out.println(schType);
		System.out.println(schText);
		List<ClientVO> searchClientList = (ArrayList<ClientVO>)client.queryForList("searchClientList",map,firstRow-1 , endRow-firstRow+1);
		return searchClientList;
	}
	//검색
	public int selectClientCount(String schType, String schText,String startDate ,String endDate) throws SQLException{
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("schType", schType);
		map.put("schText", schText);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		int result = (Integer) client.queryForObject("searchClientCount",map);
		System.out.println("검색 몇개 됨? "+result);
		return result;
		
	}
	//상세보기
	public ClientVO selectClientDe(String client_code) throws SQLException{
		ClientVO selectclientDeList = (ClientVO) client.queryForObject("selectClientDetail",client_code);
		System.out.println("셀렉트 한행 상세보기");
		return selectclientDeList;
	}
	//마이페이지
	public List<ClientVO> selectMyPage(String email ,int firstRow, int endRow) throws SQLException{
		List<ClientVO> mypageList = client.queryForList("selectMyPage",email,firstRow-1 , endRow-firstRow+1);
		System.out.println("다오"+mypageList.get(0).getClient_nm());
		return mypageList;
	}
	public int selectMyPageCount(String email) throws SQLException{
		int result=-1;
		result = (int) client.queryForObject("selectMyPageCount",email);
		System.out.println("다오 먗개?"+result);
		return result;
	}
	
	//공지사항 검색
		public int selectadNoticeCount(String schType, String schText,String startDate ,String endDate,String notice_code) throws SQLException{
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("schType", schType);
			map.put("schText", schText);
			map.put("startDate", startDate);
			map.put("endDate", endDate);
			map.put("notice_code", notice_code);
			int result = (Integer) client.queryForObject("searchadNoticeCount",map);
			System.out.println("검색 몇개 됨? "+result);
			return result;
			
		}
		
	//공지사항 검색 리스트
		public List<Notice1VO> searchadNoticeList(int firstRow, int endRow,String schType, String schText,String startDate ,String endDate,String notice_code) throws SQLException{
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("schType", schType);
			map.put("schText", schText);
			map.put("startDate", startDate);
			map.put("endDate", endDate);
			System.out.println(schType);
			System.out.println(schText);
			map.put("notice_code", notice_code);
			List<Notice1VO> searchadNoticeList = (ArrayList<Notice1VO>)client.queryForList("searchadNoticeList",map,firstRow-1 , endRow-firstRow+1);
			return searchadNoticeList;
		}
		
		public Notice1VO selectadNoticeDe(String notice_code) throws SQLException{
			Notice1VO selectadNoticeDeList = (Notice1VO) client.queryForObject("adNoticeDetail",notice_code);
			System.out.println("셀렉트 한행 상세보기");
			return selectadNoticeDeList;
		}
		
		//메인 최신글 5개
		public List<Notice1VO> fiveNotice(String notice_code ) throws SQLException{
			 List<Notice1VO> fiveNoticeList = ( List<Notice1VO>) client.queryForList("fiveNotice" ,notice_code);
			return fiveNoticeList;
		}

	
}
