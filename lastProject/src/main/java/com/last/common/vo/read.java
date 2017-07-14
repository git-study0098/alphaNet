package com.last.common.vo;

public class read {

	/**
	 * Board: 게시판
	 * Cbt: cbt
	 * Doc: 서류
	 * Exam: 시험
	 * Member: 회원
	 * Paper: 확인서
	 * Pay: 결제
	 * QualifiRestrict: 자격제한
	 * Qualifi: 자격
	 * Stare: 응시
	 * Subject: 과목
	 * 
	 * dataSource,root는 oracle, mysqlDataSource,mysqlRoot는 mysql
	 * 
	 * dao에서 client, session 만들떄 변수명 client, session으로 할것 == oracle
	 * dao에서 client, session 만들떄 변수명 mysqlClient, mysqlSession으로 할것 == mysql
	 * root-context.xml에서 dao나service id 줄때 시작 소문자로 할것
	 * 
	 * **mybatis**
	 * .xml에서..
	 * mybatis는 ibatis에서 #id#로 쓰는걸 #{id}로 쓴다.
	 * mybatis는 ibatis에서 parameterClass, resultClass 같은 거를 parameterType, resultType로 쓴다.
	 * dao에서..
	 * mybatis는 ibatis에서 queryForObject,queryForList를 select, selectList로 쓴다.  
	 */
}
