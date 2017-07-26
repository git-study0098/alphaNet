package com.last.common.vo;

import java.util.List;

public class Paging2VO {
	private int clientTotalCount;
	private int currentPageNumber;
	private List<ClientVO> clientList;
	private int pageTotalCount;
	private int clientCountPerPage;
	private int firstRow;
	private int endRow;
	
	/**
	 * 각 게시판VO 마다 생성되야 함
	 * */
	public Paging2VO(List<ClientVO> clientList, int clientTotalCount,
			int currentPageNumber, int clientCountPerPage, int startRow,
			int endRow) {
		this.clientList = clientList;
		this.clientTotalCount = clientTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.clientCountPerPage = clientCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (clientTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = clientTotalCount / clientCountPerPage;
			if (clientTotalCount % clientCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}

	public int getClientTotalCount() {
		return clientTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<ClientVO> getClientList() {
		return clientList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getClientCountPerPage() {
		return clientCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public boolean isEmpty() {
		return clientTotalCount == 0;
	}
}
