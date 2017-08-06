package com.last.cbt.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.CbtVo;

public class CbtDao {

	SqlMapClient client;

	public void setClient(SqlMapClient client) {
		this.client = client;
	}

	public List<CbtVo> selectExamQuiz(String seVal, String startQuiz)
			throws SQLException {

		Map map = new HashMap();
		map.put("seVal", seVal);
		map.put("startQuiz", String.format("%03d", Integer.parseInt(startQuiz)));
		map.put("endQuiz",
				String.format("%03d", Integer.parseInt(startQuiz) + 4));

		List<CbtVo> list = (ArrayList<CbtVo>) client.queryForList(
				"selectExamQuiz", map);

		return list;
	}

	public List<CbtVo> selectExamData() throws SQLException {
		List<CbtVo> list = (ArrayList<CbtVo>) client
				.queryForList("selectExamData");
		return list;
	}

	// 관리자 문제 리스트
	public List<CbtVo> selectExamList() throws SQLException {
		List<CbtVo> cbtlist = (ArrayList<CbtVo>) client
				.queryForList("selectList");
		return cbtlist;
	}

	// 관리자 문제 삭제
	public int deleteCBT(String id) throws SQLException {
		return client.update("deleteCBT", id);
	}

}
