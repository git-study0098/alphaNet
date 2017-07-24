package com.last.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.PagingVO;
import com.last.common.vo.WonseoInfoVo;

public class MainDAO {
	private SqlMapClient client;
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	/**
	 * 메인페이지 공지사항 게시글 리스트
	 * @param firstRow, endRow, notice_code
	 * @return List<Notice1VO>
	 * @throws SQLException
	 */
	public List<Notice1VO> selectMainNotice1(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectMainNotice1List = (ArrayList<Notice1VO>)client.queryForList("selectMainNotice1",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectMainNotice1List;
	}
	
	/**
	 * 메인페이지 자격제도 게시글 리스트
	 * @param firstRow, endRow, notice_code
	 * @return List<Notice1VO>
	 * @throws SQLException
	 */
	public List<Notice1VO> selectMainNotice2(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectMainNotice2List = (ArrayList<Notice1VO>)client.queryForList("selectMainNotice2",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectMainNotice2List;
	}
	
	/**
	 * 메인페이지 시행 게시글 리스트
	 * @param firstRow, endRow, notice_code
	 * @return List<Notice1VO>
	 * @throws SQLException
	 */
	public List<Notice1VO> selectMainNotice3(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectMainNotice3List = (ArrayList<Notice1VO>)client.queryForList("selectMainNotice3",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectMainNotice3List;
	}
	
	/**
	 * 메인페이지 출제 게시글 리스트
	 * @param firstRow, endRow, notice_code
	 * @return List<Notice1VO>
	 * @throws SQLException
	 */
	public List<Notice1VO> selectMainNotice4(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectMainNotice4List = (ArrayList<Notice1VO>)client.queryForList("selectMainNotice4",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectMainNotice4List;
	}
	
	/**
	 * 메인페이지 서비스개선 게시글 리스트
	 * @param firstRow, endRow, notice_code
	 * @return List<Notice1VO>
	 * @throws SQLException
	 */
	public List<Notice1VO> selectMainNotice5(int firstRow, int endRow,String notice_code) throws SQLException{
		List<Notice1VO> selectMainNotice5List = (ArrayList<Notice1VO>)client.queryForList("selectMainNotice5",notice_code,firstRow-1 , endRow-firstRow+1);
		return selectMainNotice5List;
	}

	/**
	 * 원서접수 중인 시험 불러오는 다오 메서드
	 * @return
	 * @throws SQLException
	 */
	public List<WonseoInfoVo> selectWonseoList() throws SQLException{
		List<WonseoInfoVo> selectWonseoList = (ArrayList<WonseoInfoVo>)client.queryForList("selectWonseoList");
		return selectWonseoList;
	}
	
	public Notice1VO detailNotice(String notice_code) throws SQLException{
		Notice1VO vo = null;
		vo = (Notice1VO) client.queryForObject("detailNotice", notice_code);
		return vo;
	}
}
