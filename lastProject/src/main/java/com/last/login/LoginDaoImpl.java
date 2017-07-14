package com.last.login;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.MemberVo;

public class LoginDaoImpl implements LoginDao {
	
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}

	@Override
	public String selectSearchId(String memberName, String email)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String selectSearchPw(String memberId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVo selectLogin(MemberVo memberVo) throws SQLException {
		MemberVo member = new MemberVo();
		member = (MemberVo) client.queryForObject("selectLoginMember",memberVo);
		System.out.println("daoImpl => "+member.getId());
		return member;
	}

	@Override
	public int selectConfirmId(String memberId) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMember(MemberVo memberVo) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
