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
}
