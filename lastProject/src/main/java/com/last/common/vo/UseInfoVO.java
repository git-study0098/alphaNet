package com.last.common.vo;

import java.util.List;

public class UseInfoVO {
	private int notice1TotalCount;
	private List<Notice1VO> notice1List;
	private int notice1CountPerPage;
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
	public UseInfoVO(List<Notice1VO> notice1List, int notice1TotalCount,
			int currentPageNumber, int notice1CountPerPage, int startRow,
			int endRow) {
		this.notice1List = notice1List;
		this.notice1TotalCount = notice1TotalCount;
		this.currentPageNumber = currentPageNumber;
		this.notice1CountPerPage = notice1CountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (notice1TotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = notice1TotalCount / notice1CountPerPage;
			if (notice1TotalCount % notice1CountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}
	
	public int getNotice1TotalCount() {
		return notice1TotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<Notice1VO> getNotice1List() {
		return notice1List;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getNotice1CountPerPage() {
		return notice1CountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return notice1TotalCount == 0;
	}

	public void setNotice1TotalCount(int notice1TotalCount) {
		this.notice1TotalCount = notice1TotalCount;
	}

	public void setNotice1List(List<Notice1VO> notice1List) {
		this.notice1List = notice1List;
	}

	public void setNotice1CountPerPage(int notice1CountPerPage) {
		this.notice1CountPerPage = notice1CountPerPage;
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
