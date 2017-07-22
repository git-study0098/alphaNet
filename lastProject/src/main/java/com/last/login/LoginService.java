package com.last.login;

import java.sql.SQLException;

import com.last.common.vo.MemberVo;

public class LoginService {

	private LoginDao loginDao;

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}
	
	public void getLogin(MemberVo memberVo){
		try {
			loginDao.selectLogin(memberVo);
		} catch (SQLException e) {
			System.out.println("service!!");
			e.printStackTrace();
		}
	}

	public MemberVo selectFindIdPwd(MemberVo member) throws SQLException {
		MemberVo vo = null;
		vo = loginDao.selectFindIdPwd(member);
		return vo; 
	}

	public int selectCorrect(MemberVo vo) throws SQLException{
		
		int result = 0;
		
		MemberVo member = loginDao.selectCorrect(vo);
		
		if(member==null || member.equals("")){
			result = -1;
		}else{
			result = 1;
		}
		
		return result;
	}

	public int updatePwd(String id, String newPw) throws SQLException{
		return loginDao.updatePwd(id, newPw);
	}
}
