package com.last.common.vo;

import java.util.List;

public class QualifiPagingVO {
	private int qualifiCount;
	private List<QualifiCertiVO> qualifiList;
	private int qualifiCountPerPage;
	private int currentPageNumber;
	private int pageTotalCount;
	private int firstRow;
	private int endRow;

	public QualifiPagingVO(int qualifiCount, List<QualifiCertiVO> qualifiList,
			int qualifiCountPerPage, int currentPageNumber,int firstRow, int endRow) {
		this.qualifiCount = qualifiCount;
		this.qualifiList = qualifiList;
		this.qualifiCountPerPage = qualifiCountPerPage;
		this.currentPageNumber = currentPageNumber;
		this.firstRow = firstRow;
		this.endRow = endRow;
		calculatePageTotalCount();
	}
	private void calculatePageTotalCount() {
		if (qualifiCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = qualifiCount / qualifiCountPerPage;
			if (qualifiCount % qualifiCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}
	public int getQualifiCount() {
		return qualifiCount;
	}
	public List<QualifiCertiVO> getQualifiList() {
		return qualifiList;
	}
	public int getQualifiCountPerPage() {
		return qualifiCountPerPage;
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
	
	public boolean isEmpty(){
		return qualifiCount == 0;
	}
}
