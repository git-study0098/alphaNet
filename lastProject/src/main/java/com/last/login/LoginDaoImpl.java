package com.last.login;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

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

	@Override
	public MemberVo selectFindIdPwd(MemberVo member) throws SQLException {
		MemberVo vo = null;
		vo = (MemberVo) client.queryForObject("selectFindIdPwd", member);
		return vo;
	}

	@Override
	public MemberVo selectCorrect(MemberVo vo) throws SQLException {
		return (MemberVo)client.queryForObject("selectFindIdPwd",vo);
	}

	@Override
	public int updatePwd(String id, String newPw) throws SQLException {

		int result = 0;
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("mem_code", id);
		map.put("mem_pwd", newPw);
		System.out.println(map.get("mem_code") + " 플러스 "+map.get("mem_pwd"));
		result = (int)client.update("updatePwd",map);
		System.out.println("다오 나옴");
		
		return result;
	}

}
