package com.last.login;

import java.sql.SQLException;

import com.last.common.vo.MemberVo;

public interface LoginDao {

	/**
	 * 아이디찾기
	 * @param memberName
	 * @param email
	 * @return
	 * @throws SQLException
	 */
	public String selectSearchId(String memberName, String email) throws SQLException;
	
	/**
	 * 비밀번호찾기
	 * @param memberId
	 * @return
	 * @throws SQLException
	 */
	public String selectSearchPw(String memberId) throws SQLException;
	
	/**
	 * 로그인처리
	 * @param memberId
	 * @param memberPw
	 * @return
	 * @throws SQLException
	 */
	public MemberVo selectLogin(MemberVo memberVo) throws SQLException;
	
	/**
	 * 아이디 중복확인
	 * @param memberId
	 * @return
	 * @throws SQLException
	 */
	public int selectConfirmId(String memberId) throws SQLException;

	/**
	 * 회원가입
	 * @param memberVo
	 * @return
	 * @throws SQLException
	 */
	public int insertMember(MemberVo memberVo) throws SQLException;
	
}
