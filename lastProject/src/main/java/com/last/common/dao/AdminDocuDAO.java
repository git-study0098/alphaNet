package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.DocVO;

public class AdminDocuDAO {
		
	private SqlMapClient client;
		
		public void setClient(SqlMapClient client) {
			this.client = client;
		}
		/**
		 * 서류 전체 리스트
		 * @param firstRow,endRow,notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public List<DocVO> selectDocuList(int firstRow, int endRow) throws SQLException{
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("endRow", endRow);
			map.put("firstRow", firstRow);
			List<DocVO> selectDocuList = (ArrayList<DocVO>)client.queryForList("selectDocuList",map);
			return selectDocuList;
		}
		
		/**
		 * 서류 개수 페이지 수 처리
		 * @param notice_code
		 * @return result
		 * @throws SQLException
		 */
		public int selectDocuCount() throws SQLException{
			int result = (Integer) client.queryForObject("selectDocuCount");
			return result;
		}
		
		/**
		 * 서류신청내역 상세보기
		 * @param notice_code
		 * @return selectNotice1List
		 * @throws SQLException
		 */
		public DocVO selectDocuDetail(String id) throws SQLException{
			DocVO selectNotice1List = (DocVO) client.queryForObject("selectDocuDetail",id);
			return selectNotice1List;
		}
		
		/**
		 * 게시글 업데이트
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int updateAdminDoc(DocVO docuVO) throws SQLException{
			int result = (Integer) client.update("docUpdate",docuVO);
			System.out.println("다오"+docuVO.getSub_code());
			System.out.println("다오"+docuVO.getApprove_at());
			return result;
		}
		
		//전체 서류 검색 리스트 가져오기
		public List<DocVO> searchAllDocList(int firstRow, int endRow,String schType, String schText) throws SQLException{
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("schType", schType);
			map.put("schText", schText);
			List<DocVO> searchNoticeList = (ArrayList<DocVO>)client.queryForList("searchDocSearchList",map,firstRow-1 , endRow-firstRow+1);
			return searchNoticeList;
		}
		
		/**
		 * 서류 검색 개수 가져오기
		 * @param notice_code
		 * @param schType
		 * @param schText
		 * @return
		 * @throws SQLException
		 */
		public int selectSearchDocCount(String schType, String schText) throws SQLException{
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("schType", schType);
			map.put("schText", schText);
			int result = (Integer) client.queryForObject("selectDocCount",map);
			return result;
			
		}
		
		
}
