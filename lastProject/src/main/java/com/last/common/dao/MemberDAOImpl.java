package com.last.common.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.print.attribute.HashAttributeSet;

import oracle.net.aso.p;

import com.last.common.vo.CalendarVO;
import com.last.common.vo.MemberVo;

public class MemberDAOImpl extends MemberDAO{
	
//	@Autowired
//	private MongoTemplate mongoTemplate;
//	
//	public void setMongoTemplate(MongoTemplate mongoTemplate) {
//		this.mongoTemplate = mongoTemplate;
//	}
//
//	private static String COLLECTION_NAME = "alphaMember";
//	
//	@RequestMapping("/insert")
//	public String insert() {
//		MongoVO mvo = new MongoVO();
//		mvo.setId(20170709);
//		mvo.setUser("김재현");
//		mvo.setPassword("alpha");
//		mvo.setEmail("ckddus61@naver.com");
//		this.insert(mvo);
//		return "mongo";
//		
//	}
//	
//	@RequestMapping("/getUser")
//	public String mongoTest2(Model model){
//		MongoVO mvo = new MongoVO();
//		mvo.setId(20170709);
//		MongoVO mvo2 = this.getMongoVO(mvo);
//		model.addAttribute("mvo", mvo2);
//		return "mongo";
//	}
//
//
//	@Override
//	public MongoVO getMongoVO(MongoVO mvo) {
//		return mongoTemplate.findById(mvo.getId(), MongoVO.class, COLLECTION_NAME);
//	}
//
//	@Override
//	public void insert(MongoVO mongo) {
//		mongoTemplate.insert(mongo,COLLECTION_NAME);
//	}

	@Override
	public int insert(MemberVo vo) {
		int result = 0;
		 try {
			result=client.update("insertMember" ,vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return result;
	}


	@Override
	public int idCheck(String id) {
		int result = -1;
		System.out.println("들어");
		System.out.println(id+"다오임플");
		MemberVo member=null;
		try {
			member = (MemberVo) client.queryForObject("selectMemberId", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (member != null) {
			result = 1;
		}else{
			result = -1;
		}
		
		return result;
	}


	@Override
	public List<CalendarVO> calendarInfo() throws SQLException {
		List<CalendarVO> calList = (List<CalendarVO>)client.queryForList("selectCalendar", null);
		System.out.println(calList+"캘린더다오임플");
	
		return calList;
	}


	@Override
	public MemberVo member(String id) throws SQLException {
		
		MemberVo member = (MemberVo) client.queryForObject("selectMember" ,id);
		return member;
	}


	@Override
	public int updateMember(MemberVo vo, String id) throws SQLException {
		int result=-1;
		System.out.println("멤버 수정 하하하");
		
		vo.setId(id);
		
		try{
		client.update("updateMember" ,vo);
		result =1;
		}catch(Exception e){
			
		}
		
		return result;
	}


}
