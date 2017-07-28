package com.last.common.vo;

import java.util.List;

public class VoicePagingVO {
	private int voiceTotalCount;
	private List<ClientVO> voiceList;
	private int voiceCountPerPage;
	private int currentPageNumber;
	private int pageTotalCount;
	private int firstRow;
	private int endRow;

	
	
	/**
	 * 각 게시판VO 마다 생성되야 함
	 * */
	public VoicePagingVO(List<ClientVO> voiceList, int voiceTotalCount,
			int currentPageNumber, int voiceCountPerPage, int startRow,
			int endRow) {
		this.voiceList = voiceList;
		this.voiceTotalCount = voiceTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.voiceCountPerPage = voiceCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (voiceTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = voiceTotalCount / voiceCountPerPage;
			if (voiceTotalCount % voiceCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}

	public int getVoiceTotalCount() {
		return voiceTotalCount;
	}

	public void setVoiceTotalCount(int voiceTotalCount) {
		this.voiceTotalCount = voiceTotalCount;
	}

	public List<ClientVO> getVoiceList() {
		return voiceList;
	}

	public void setVoiceList(List<ClientVO> voiceList) {
		this.voiceList = voiceList;
	}

	public int getVoiceCountPerPage() {
		return voiceCountPerPage;
	}

	public void setVoiceCountPerPage(int voiceCountPerPage) {
		this.voiceCountPerPage = voiceCountPerPage;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
	
	
	
}
