package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;

public class AdminNotice1DAO {
		
	private SqlMapClient client;
		
		public void setClient(SqlMapClient client) {
			this.client = client;
		}
		
		/**
		 * 게시판 분류코드
		 * @return selectNoticeCode
		 * @throws SQLException
		 */
		 
		public List<String> selectNoticeCode()throws SQLException{
			List<String> selectNoticeCode = (ArrayList<String>)client.queryForList("selectNoticeCode");
			return selectNoticeCode;
		}
		
		/**
		 * 해당 게시판 분류코드 별 리스트
		 * @param firstRow,endRow,notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public List<Notice1VO> selectNotice1List(int firstRow, int endRow,String notice_code) throws SQLException{
			List<Notice1VO> selectNotice1List = (ArrayList<Notice1VO>)client.queryForList("selectNotice1List",notice_code,firstRow-1 , endRow-firstRow+1);
			return selectNotice1List;
		}
		
		/**
		 * 해당 게시판 분류코드 별 페이지 수 처리
		 * @param notice_code
		 * @return result
		 * @throws SQLException
		 */
		
		public int selectNotice1Count(String notice_code) throws SQLException{
			int result = (Integer) client.queryForObject("selectNotice1_Count",notice_code);
			return result;
		}
		
		/**
		 * 해당 게시글의 상세보기
		 * @param notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public Notice1VO selectNotice1(String notice_code) throws SQLException{
			Notice1VO selectNotice1List = (Notice1VO) client.queryForObject("selectNotice1",notice_code);
			return selectNotice1List;
		}
		
		/**
		 * 게시글 업데이트
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int updateNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("updateNotice1",notice1VO);
			return result;
		}
		/**
		 * 게시글 삭제
		 * @param noticeCode
		 * @return result
		 * @throws SQLException
		 */
		public int deleteNotice1(String noticeCode) throws SQLException{
			int result = (Integer) client.update("deleteNotice1",noticeCode);
			return result;
		}
		/**
		 * 게시글 등록
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int insertNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("insertNotice1",notice1VO);
			return result;
		}
		
		/////////////////////
}
