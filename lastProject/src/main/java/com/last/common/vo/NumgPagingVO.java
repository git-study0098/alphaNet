package com.last.common.vo;

import java.util.List;

/**
 * 시험일정 리스트
 * @author pc05
 *
 */
public class NumgPagingVO {
	private int numgTotalCount;
	private List<Notice1VO> numgList;
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
	public NumgPagingVO(List<Notice1VO> numgList, int numgTotalCount,
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

	public List<Notice1VO> getNumgList() {
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
}
