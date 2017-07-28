package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
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
			List<DocVO> selectDocuList = (ArrayList<DocVO>)client.queryForList("selectDocuList");
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
		 * 서류 업데이트
		 * @param notice1VO
		 * @return result
		 * @throws SQLException
		 */
		public int updateAdminDoc(DocVO docuVO) throws SQLException{
			int result = client.update("docUpdate",docuVO);
			return result;
		}
		
}
