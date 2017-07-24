package com.last.common.vo;

import java.util.List;

public class PdsVO {
	private int pdsTotalCount;
	private List<Notice1VO> pdsList;
	private int pdsCountPerPage;
	private int currentPageNumber;
	private int pageTotalCount;
	private int firstRow;
	private int endRow;
	private int size;

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

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

	public int getPdsTotalCount() {
		return pdsTotalCount;
	}

	public void setPdsTotalCount(int pdsTotalCount) {
		this.pdsTotalCount = pdsTotalCount;
	}

	public int getPdsCountPerPage() {
		return pdsCountPerPage;
	}

	public void setPdsCountPerPage(int pdsCountPerPage) {
		this.pdsCountPerPage = pdsCountPerPage;
	}

	public void setPdsList(List<Notice1VO> pdsList) {
		this.pdsList = pdsList;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	
}
