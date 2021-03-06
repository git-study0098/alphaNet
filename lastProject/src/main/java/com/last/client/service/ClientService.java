package com.last.client.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.avalon.framework.service.ServiceException;
import org.aspectj.weaver.ast.Not;

import com.last.client.dao.ClientDao;
import com.last.common.vo.ClientVO;
import com.last.common.vo.Notice1VO;
import com.last.common.vo.Paging2VO;
import com.last.common.vo.PagingVO;

public class ClientService {

	private ClientDao clientDao;

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	private static final int CLIENT_COUNT_PER_PAGE = 10;
	private static final int NOTICE_COUNT_PER_PAGE = 10;

	/*
	 * 고객의 소리 게시판
	 */

	public Paging2VO selectClient1List(int pageNumber, String client_code)
			throws Exception {

		int currentPageNumber = pageNumber;
		try {

			int client1TotalCount = clientDao.selectAllCount();

			List<ClientVO> client1List = null;
			int firstRow = 0;
			int endRow = 0;
			if (client1TotalCount > 0) {
				firstRow = (pageNumber - 1) * CLIENT_COUNT_PER_PAGE + 1;
				endRow = firstRow + CLIENT_COUNT_PER_PAGE - 1;
				client1List = clientDao.selectClient1List(firstRow, endRow,
						client_code);
			} else {
				currentPageNumber = 0;
				client1List = Collections.emptyList();
			}
			return new Paging2VO(client1List, client1TotalCount,
					currentPageNumber, CLIENT_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new Exception("게시판 리스트 구하기 실패!", e);
		}
	}

	// 인설트할때 시퀀스처럼 사용하기 위한 메서드
	public String registNotice(String client) {
		int clientNumber = 0;
		String compare = "";
		String code = "";
		List<String> temp = null;
		List<String> codeList = new ArrayList<String>();
		try {
			temp = clientDao.selectClientCode();
			for (int i = 0; i < temp.size(); i++) {
				code = temp.get(i);
				compare = code.substring(0, 8);
				if (client.equals(compare)) {
					codeList.add(code);
				}
			}

			if (codeList.size() == 0) {
				client += 1000000001 + "";
			} else {
				String clientCode = codeList.get(codeList.size() - 1);
				compare = clientCode.substring(0, 8);

				if (client.equals(compare)) {
					clientNumber = Integer
							.parseInt(clientCode.substring(8, 18)) + 1;
					client = compare + clientNumber + "";
				}
			}
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
		return client;
	}

	public ClientVO selectClientCodeList(String client_code)
			throws SQLException {
		ClientVO vo = clientDao.selectClient1(client_code);
		return vo;

	}

	public Paging2VO selectClientAll(int pageNumber) throws SQLException,
			ServiceException {
		int currentPageNumber = pageNumber;
		try {

			int clientAllTotalCount = clientDao.selectAllCount();

			List<ClientVO> clientAllList = null;
			int firstRow = 0;
			int endRow = 0;
			if (clientAllTotalCount > 0) {
				firstRow = (pageNumber - 1) * CLIENT_COUNT_PER_PAGE + 1;
				endRow = firstRow + CLIENT_COUNT_PER_PAGE - 1;
				clientAllList = clientDao.selectClientAll(firstRow, endRow);
			} else {
				currentPageNumber = 0;
				clientAllList = Collections.emptyList();
			}
			return new Paging2VO(clientAllList, clientAllTotalCount,
					currentPageNumber, CLIENT_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	public List<ClientVO> searchList(String clientCode, String startDate,
			String endDate, String word) throws SQLException, ServiceException {

		List<ClientVO> searchClient = clientDao.selecteSearch(clientCode,
				startDate, endDate, word);

		return searchClient;

	}

	public PagingVO selectNotice1List(int pageNumber, String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int noticeTotalCount = clientDao.selectNoticeCount(notice_code);
			System.out.println(noticeTotalCount + "클라이언트 서비스");

			List<Notice1VO> clientNoticeList = null;
			int firstRow = 0;
			int endRow = 0;
			if (noticeTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				clientNoticeList = clientDao.selectNoticeList(firstRow, endRow,
						notice_code);
			} else {
				currentPageNumber = 0;
				clientNoticeList = Collections.emptyList();
			}
			return new PagingVO(clientNoticeList, noticeTotalCount,
					currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	// 검색
	public Paging2VO searchClientList(int pageNumber, String schType,
			String schText, String startDate, String endDate)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int clientTotalCount = clientDao.selectClientCount(schType,
					schText, startDate, endDate);
			System.out.println(schType + "타입 서비스");
			System.out.println(schText + "텍스트 서비스");
			List<ClientVO> clientList = null;
			int firstRow = 0;
			int endRow = 0;
			if (clientTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				clientList = clientDao.searchClientList(firstRow, endRow,
						schType, schText, startDate, endDate);
			} else {
				currentPageNumber = 0;
				clientList = Collections.emptyList();
			}
			return new Paging2VO(clientList, clientTotalCount,
					currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	public int selectClientCount(String schType, String schText,
			String startDate, String endDate) throws SQLException {
		int result = clientDao.selectClientCount(schType, schText, startDate,
				endDate);
		System.out.println("selectCount" + result); // 검색된 리스트 개수
		return result;
	}

	// 상세보기
	public ClientVO selectClientDetail(String client_code) throws SQLException {
		ClientVO vo = clientDao.selectClientDe(client_code);
		return vo;

	}
	
	//마이페이지
	public Paging2VO myPageList(String email,int pageNumber) throws SQLException, ServiceException{
		int currentPageNumber = pageNumber;
		try {

			int myPageTotalCount = clientDao.selectMyPageCount(email);
			System.out.println(myPageTotalCount + "클라이언트 서비스");

			List<ClientVO> clientMyPageList = null;
			int firstRow = 0;
			int endRow = 0;
			if (myPageTotalCount > 0) {
				System.out.println("서비스"+myPageTotalCount);
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				clientMyPageList = clientDao.selectMyPage(email,firstRow, endRow);
			} else {
				currentPageNumber = 0;
				clientMyPageList = Collections.emptyList();
			}
			return new Paging2VO(clientMyPageList, myPageTotalCount,
					currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}

	public int selectadNoticeCount(String schType, String schText,
			String startDate, String endDate ,String notice_code) throws SQLException {
		int result = clientDao.selectadNoticeCount(schType, schText, startDate, endDate,notice_code);
		System.out.println("selectCount" + result); // 검색된 리스트 개수
		return result;
	}
	
	
	//공지사항 검색
	public PagingVO searchadNoticeList(int pageNumber, String schType,
			String schText, String startDate, String endDate,String notice_code)
			throws ServiceException {

		int currentPageNumber = pageNumber;
		try {

			int adNoticeTotalCount = clientDao.selectadNoticeCount(schType, schText, startDate, endDate,notice_code);
			System.out.println(schType + "타입 서비스");
			System.out.println(schText + "텍스트 서비스");
			System.out.println(adNoticeTotalCount);
			List<Notice1VO> adNoticeList = null;
			int firstRow = 0;
			int endRow = 0;
			if (adNoticeTotalCount > 0) {
				firstRow = (pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				adNoticeList = clientDao.searchadNoticeList(firstRow, endRow, schType, schText, startDate, endDate,notice_code);
			} else {
				currentPageNumber = 0;
				adNoticeList = Collections.emptyList();
			}
			return new PagingVO(adNoticeList, adNoticeTotalCount,
					currentPageNumber, NOTICE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (Exception e) {
			throw new ServiceException("게시판 리스트 구하기 실패!", e);
		}
	}
	
	// 상세보기
	public Notice1VO selectadNoticeDetail(String notice_code) throws SQLException {
		Notice1VO vo = clientDao.selectadNoticeDe(notice_code);
		return vo;

	}
	
	public List<Notice1VO> fiveNotice(String notice_code ) throws SQLException{
		List<Notice1VO> fiveNoticeList = clientDao.fiveNotice(notice_code);
		return fiveNoticeList;
	}
	
	//메인 공지사항 5개만 띄우기
	
}
