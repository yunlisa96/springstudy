package com.example.demo.paging;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PagingVo {

  /**
	 * 한 페이지당 보여줄 record 수
	 */
	private int recordSize;
	/**
	 * 전체 record 수
	 */
	private int totalRecordSize;
	/**
	 * 한 블럭당 보여줄 사이즈 ex) 5 [1] [2] .. [5]
	 */
	private int blockSize;
	/**
	 * 블럭 그룹 사이즈
	 */
	private int blockGroupSize;
	/**
	 * 전체 페이지 수
	 */
	private int totalPageSize;
	/**
	 * 현재 페이지
	 */
	private int currentPage;
	/**
	 * 현재 페이지 블럭 그룹 번호
	 */
	private int currentBlockGroup;
	/**
	 * 페이징의 시작 페이지
	 */
	private int startPage;
	/**
	 * 페이징의 끝 페이지
	 */
	private int endPage;
	/**
	 * 정렬할 컬럼명
	 */
	private String orderByColumn = "";
	/**
	 * 정렬 타입 ASC/DESC
	 */
	private String orderByType = "";

	/**
	 * 페이지 링크시 화면 고정여부
	 */
	private String scrollView = "";
	/**
	 * Limit Start 값
	 */
	private int limitStart;
  
}
