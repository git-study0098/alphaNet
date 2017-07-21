package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;

public class AdminPdsDAO {
		
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
			List<String> selectNoticeCode = (ArrayList<String>)client.queryForList("selectPdsCode");
			System.out.println("셀렉트 게시판 코드 잘라서 가져오는거");
			return selectNoticeCode;
		}
		public int selectCount(String notice_code, String schType, String schText) throws SQLException{
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("notice_code", notice_code);
			map.put("schType", schType);
			map.put("schText", schText);
			int result = (Integer) client.queryForObject("selectPdsCount",map);
			return result;
		}
		
		/**
		 * 해당 게시판 분류코드 별 리스트
		 * @param firstRow,endRow,notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public List<Notice1VO> selectNotice1List(int firstRow, int endRow,String notice_code) throws SQLException{
			List<Notice1VO> selectNotice1List = (ArrayList<Notice1VO>)client.queryForList("selectPdsList",notice_code,firstRow-1 , endRow-firstRow+1);
			System.out.println("셀렉트 전체리스트");
			return selectNotice1List;
		}
		/**
		 * 해당 게시판 분류코드 별 페이지 수 처리
		 * @param notice_code
		 * @return result
		 * @throws SQLException
		 */
		public int selectNotice1Count(String notice_code) throws SQLException{
			int result = (Integer) client.queryForObject("selectPdsCount",notice_code);
			System.out.println("셀렉트 게시클 카운트");
			return result;
		}
		/**
		 * 해당 게시글의 상세보기
		 * @param notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public Notice1VO selectNotice1(String notice_code) throws SQLException{
			Notice1VO selectNotice1List = (Notice1VO) client.queryForObject("selectListPds",notice_code);
			System.out.println("셀렉트 한행 상세보기");
			return selectNotice1List;
		}
		
		/**
		 * 게시글 업데이트
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int updateNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("updatePds",notice1VO);
			return result;
		}
		/**
		 * 게시글 삭제
		 * @param noticeCode
		 * @return result
		 * @throws SQLException
		 */
		public int deleteNotice1(String noticeCode) throws SQLException{
			int result = (Integer) client.update("deletePds",noticeCode);
			return result;
		}
		/**
		 * 게시글 등록
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int insertNotice1(Notice1VO notice1VO) throws SQLException{
			int result = (Integer) client.update("insertPds",notice1VO);
			System.out.println("여기까지 들어오나 인서트");
			return result;
		}
		
		/////////////////////
		//member로 옮길거야
		public List<Notice1VO> searchNoticeList(int firstRow, int endRow,String notice_code,String schType, String schText) throws SQLException{
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("notice_code", notice_code);
			map.put("schType", schType);
			map.put("schText", schText);
			List<Notice1VO> searchNoticeList = (ArrayList<Notice1VO>)client.queryForList("searchPdsList",map,firstRow-1 , endRow-firstRow+1);
			return searchNoticeList;
		}
		
		
}
