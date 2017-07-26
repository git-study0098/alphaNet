package com.last.common.vo;

import java.util.List;

public class DocuPagingVO {
	private int docuTotalCount;
	private List<DocVO> docuList;
	private int docuCountPerPage;
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
	public DocuPagingVO(List<DocVO> docuList, int docuTotalCount,
			int currentPageNumber, int docuCountPerPage, int startRow,
			int endRow) {
		this.docuList = docuList;
		this.docuTotalCount = docuTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.docuCountPerPage = docuCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (docuTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = docuTotalCount / docuCountPerPage;
			if (docuTotalCount % docuCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}
	
	public int getdocuTotalCount() {
		return docuTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<DocVO> getdocuList() {
		return docuList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getdocuCountPerPage() {
		return docuCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return docuTotalCount == 0;
	}

	public void setdocuTotalCount(int docuTotalCount) {
		this.docuTotalCount = docuTotalCount;
	}

	public void setdocuList(List<DocVO> docuList) {
		this.docuList = docuList;
	}

	public void setdocuCountPerPage(int docuCountPerPage) {
		this.docuCountPerPage = docuCountPerPage;
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
