package com.last.common.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.CalendarVO;
import com.last.common.vo.MemberVo;


public abstract class MemberDAO{
	
	protected static SqlMapClient client;
	
	public void setClient(SqlMapClient client){		
		this.client=client;
	}
	
	 public static SqlMapClient getSqlMapInstance(){
	      return client;
	  }
	 
//	public void insert(MongoVO mongo);
//	
//	MongoVO getMongoVO(MongoVO mvo);

	public abstract int idCheck(String userId) throws SQLException;
	public abstract int insert(MemberVo vo) throws SQLException ;
	public abstract List<CalendarVO> calendarInfo() throws SQLException ;

}