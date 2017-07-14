package com.last.common.dao;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;

import com.ibatis.sqlmap.client.SqlMapClient;
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
			System.out.println(member+"다오임플");
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

}
