package com.last.common.dao;

import java.sql.SQLException;
import java.util.List;


import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.ClientVO;

public class AdminClientVoiceDAO {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client){
		this.client = client;
	}

	//고객의 소리 전체 게시글 개수 
	public int selectVoiceCount() throws SQLException {
		int result = (Integer) client.queryForObject("selectAll_Count");
		return result;
	}
	
	//고객의 소리 전체 게시글 리스트 
	public List<ClientVO> selectVoiceList(int firstRow, int endRow) throws SQLException {
		List<ClientVO> list = (List<ClientVO>)client.queryForList("selectClientAll");
		return list;
	}
	
	//고객의 소리 상세보기
	public ClientVO selectVoiceDetail(String client_code) throws SQLException {
		ClientVO vo = (ClientVO)client.queryForObject("selectClientDetail",client_code);
		return vo;
	}
	
	//고객의 소리 답글 업데이트 처리완료
	public int updateVoice(ClientVO vo) throws SQLException {
		int result = (Integer) client.update("updateVoice", vo);
		System.out.println("업데이트 다오"+vo.getReply_state());
		System.out.println("업데이트 다오"+vo.getClient_reply_content());
		return result;
	}
	
	
	
	

}
