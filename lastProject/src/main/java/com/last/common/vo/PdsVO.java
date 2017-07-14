package com.last.common.vo;

import java.util.List;

public class PdsVO {
	private int pdsTotalCount;
	private int currentPageNumber;
	private List<Notice1VO> pdsList;
	private int pageTotalCount;
	private int pdsCountPerPage;
	private int firstRow;
	private int endRow;

	
	/**
	 * 각 게시판VO 마다 생성되야 함
	 * */
	public PdsVO(List<Notice1VO> pdsList, int pdsTotalCount,
			int currentPageNumber, int pdsCountPerPage, int startRow,
			int endRow) {
		this.pdsList = pdsList;
		this.pdsTotalCount = pdsTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.pdsCountPerPage = pdsCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (pdsTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = pdsTotalCount / pdsCountPerPage;
			if (pdsTotalCount % pdsCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}
	
	public int getpdsTotalCount() {
		return pdsTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<Notice1VO> getPdsList() {
		return pdsList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getpdsCountPerPage() {
		return pdsCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return pdsTotalCount == 0;
	}
}
