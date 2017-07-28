package com.last.common.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.last.common.dao.AdminClientVoiceDAO;
import com.last.common.vo.ClientVO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.VoicePagingVO;

public class AdminClientVoiceService {
	
	private AdminClientVoiceDAO voiceDao;
	
	public void setAdminClientVoiceDAO (AdminClientVoiceDAO voiceDao){
		this.voiceDao = voiceDao;
	}
	
	private static final int VOICE_COUNT_PER_PAGE = 10;

	//고객의 소리 리스트 가져오기(고객이 쓴글) 
	public VoicePagingVO selectVoiceList(int pageNumber) {
		int currentPageNumber = pageNumber;
		
		int voiceTotalCount;
		try {
			voiceTotalCount = voiceDao.selectVoiceCount();
			List<ClientVO> voiceList = null;
			int firstRow = 0;
			int endRow = 0;
			
			if(voiceTotalCount > 0){
				firstRow = (pageNumber -1) * VOICE_COUNT_PER_PAGE;
				endRow = firstRow + VOICE_COUNT_PER_PAGE -1;
				voiceList = voiceDao.selectVoiceList(firstRow,endRow);
			}else{
				currentPageNumber = 0;
				voiceList = Collections.emptyList();
			}
			VoicePagingVO vo = new VoicePagingVO(voiceList, voiceTotalCount,
					currentPageNumber,VOICE_COUNT_PER_PAGE,firstRow,endRow);
			vo.setVoiceList(voiceList);
			vo.setFirstRow(firstRow);
			vo.setEndRow(endRow);
			vo.setVoiceCountPerPage(VOICE_COUNT_PER_PAGE);
			vo.setCurrentPageNumber(currentPageNumber);

			return vo;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	//고객의 소리 상세보기
	public ClientVO selectVoiceDetailList(String client_code) throws SQLException {
		ClientVO vo = voiceDao.selectVoiceDetail(client_code);
		return vo;
	}
	
	//고객의 소리 답변 달기
	public int updateVoice(ClientVO vo) throws SQLException {
		int result = voiceDao.updateVoice(vo);
		System.out.println("고객의 소리 답변 서비스"+vo.getReply_state());
		System.out.println("고객의 소리 답변 서비스"+vo.getClient_reply_content());
		return result;
	}
	

}
