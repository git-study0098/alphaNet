package com.last.common.vo;

import java.util.List;

/**
 * 시험일정 리스트
 * @author pc05
 *
 */
public class NumgPagingVO {
	private int numgTotalCount;
	private List<CalendarVO> numgList;
	private int numgCountPerPage;
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
	public NumgPagingVO(List<CalendarVO> numgList, int numgTotalCount,
			int currentPageNumber, int numgCountPerPage, int startRow,
			int endRow) {
		this.numgList = numgList;
		this.numgTotalCount = numgTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.numgCountPerPage = numgCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (numgTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = numgTotalCount / numgCountPerPage;
			if (numgTotalCount % numgCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}
	
	

	public int getNumgTotalCount() {
		return numgTotalCount;
	}

	public List<CalendarVO> getNumgList() {
		return numgList;
	}

	public int getNumgCountPerPage() {
		return numgCountPerPage;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getFirstRow() {
		return firstRow;
	}
	
	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return numgTotalCount == 0;
	}

	public void setNumgTotalCount(int numgTotalCount) {
		this.numgTotalCount = numgTotalCount;
	}

	public void setNumgList(List<CalendarVO> numgList) {
		this.numgList = numgList;
	}

	public void setNumgCountPerPage(int numgCountPerPage) {
		this.numgCountPerPage = numgCountPerPage;
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
