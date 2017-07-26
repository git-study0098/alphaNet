package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.MemberVo;
import com.last.common.vo.Notice1VO;

public class AdminMem1DAO {
		
	private SqlMapClient client;
		
		public void setClient(SqlMapClient client) {
			this.client = client;
		}
		/**
		 * 게시판 분류번호
		 * @return
		 * @throws SQLException
		 */
		public List<String> selectNoticeCode()throws SQLException{
			List<String> selectNoticeCode = (ArrayList<String>)client.queryForList("selectClientNoticeCode");
			System.out.println("셀렉트 게시판 코드 잘라서 가져오는거");
			return selectNoticeCode;
		}
		
		
		/**
		 * 휴면 회원 전체 리스트
		 * @param firstRow,endRow,notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
//		public List<MemberVo> selectNotice1List(int firstRow, int endRow) throws SQLException{
//			List<MemberVo> selectNotice1List = (ArrayList<MemberVo>)client.queryForList("selectAdminMemList",firstRow-1 , endRow-firstRow+1);
//			System.out.println("멤버첫번째 아이디"+selectNotice1List.get(0).getId());
//			return selectNotice1List;
//		}
		
		/**
		 * 휴면 회원 전체 리스트
		 * @param firstRow,endRow,notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public List<MemberVo> selectMember1List(int firstRow, int endRow) throws SQLException{
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("endRow", endRow);
			map.put("firstRow", firstRow);
			List<MemberVo> selectNotice1List = (ArrayList<MemberVo>)client.queryForList("selectAdminMemList",map);
			return selectNotice1List;
		}
		
		/**
		 * 전체 회원 전체 리스트
		 * @param firstRow,endRow,notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public List<MemberVo> selectAllMember1List(int firstRow, int endRow) throws SQLException{
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			List<MemberVo> selectNotice1List = (ArrayList<MemberVo>)client.queryForList("selectAllMember1List",firstRow-1,endRow-firstRow+1);
			System.out.println("멤버첫번째 아이디"+selectNotice1List.get(0).getId());
			System.out.println("멤버첫번째 아이디"+selectNotice1List.get(0).getMem_lately_log_date());
			return selectNotice1List;
		}
		/**
		 * 휴면회원 총 개수 페이지 수 처리
		 * @param notice_code
		 * @return result
		 * @throws SQLException
		 */
		public int selectNotice1Count() throws SQLException{
			int result = (Integer) client.queryForObject("selectMemCount");
			System.out.println("셀렉트 회원 게시클 카운트"+result);	
			return result;
		}
		
		/**
		 * 전체 회원 총 개수 페이지 수 처리
		 * @param notice_code
		 * @return result
		 * @throws SQLException
		 */
		public int selectAllMemberCount() throws SQLException{
			int result = (Integer) client.queryForObject("selectAllMemListCount");
			return result;
		}
		/**
		 * 해당 회원의 상세보기
		 * @param notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public MemberVo selectNotice1(String id) throws SQLException{
			MemberVo selectNotice1List = (MemberVo) client.queryForObject("selectAllMemberDetail",id);
			System.out.println("회원 한행 상세보기");
			return selectNotice1List;
		}
		
		/**
		 * 게시글 업데이트
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int updateNotice1(MemberVo memberVO) throws SQLException{
			int result = (Integer) client.update("updateClientNotice1",memberVO);
			return result;
		}
		/**
		 * 게시글 삭제
		 * @param noticeCode
		 * @return result
		 * @throws SQLException
		 */
		public int deleteNotice1(String noticeCode) throws SQLException{
			int result = (Integer) client.update("deleteClientNotice1",noticeCode);
			return result;
		}
		
		//member로 옮길거야
		public List<MemberVo> searchNoticeList(int firstRow, int endRow,String schType, String schText) throws SQLException{
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("schType", schType);
			map.put("schText", schText);
			System.out.println(schType);
			System.out.println(schText);
			List<MemberVo> searchNoticeList = (ArrayList<MemberVo>)client.queryForList("searchInMemberList",map,firstRow-1 , endRow-firstRow+1);
			return searchNoticeList;
		}
		
		//전체 회원 검색 리스트 가져오기
		public List<MemberVo> searchAllMemberList(int firstRow, int endRow,String schType, String schText) throws SQLException{
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("schType", schType);
			map.put("schText", schText);
			List<MemberVo> searchNoticeList = (ArrayList<MemberVo>)client.queryForList("searchAllMemSearchList",map,firstRow-1 , endRow-firstRow+1);
			System.out.println(searchNoticeList.get(0).getName());
			return searchNoticeList;
		}
		
		/**
		 * 후면계정 검색 개수 가져오기
		 * @param notice_code
		 * @param schType
		 * @param schText
		 * @return
		 * @throws SQLException
		 */
		public int selectCount(String schType, String schText) throws SQLException{
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("schType", schType);
			map.put("schText", schText);
			int result = (Integer) client.queryForObject("selectAdminMemCount",map);
			return result;
			
		}
		
		/**
		 * 전체 회원 검색 개수
		 * @param notice_code
		 * @param schType
		 * @param schText
		 * @return
		 * @throws SQLException
		 */
		public int selectAllCount(String schType, String schText) throws SQLException{
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("schType", schType);
			map.put("schText", schText);
			int result = (Integer) client.queryForObject("selectAllMemCount",map);
			return result;
			
		}
		
}
