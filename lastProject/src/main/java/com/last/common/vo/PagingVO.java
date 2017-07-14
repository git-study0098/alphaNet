package com.last.common.vo;

import java.util.List;

public class PagingVO {
	private int notice1TotalCount;
	private int currentPageNumber;
	private List<Notice1VO> notice1List;
	private int pageTotalCount;
	private int notice1CountPerPage;
	private int firstRow;
	private int endRow;
	
	/**
	 * 각 게시판VO 마다 생성되야 함
	 * */
	public PagingVO(List<Notice1VO> notice1List, int notice1TotalCount,
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
}
