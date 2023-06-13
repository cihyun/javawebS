package com.spring.javawebS.pagination;

import lombok.Data;

@Data
public class PageVO {
	private int pag;
	private int pageSize;					// 한 페이지의 길이
	private int totRecCnt;				// 전체 레코드 건수
	private int startIndexNo;			// 해당 페이지의 첫번째 인덱스 값
	private int curScrStartNo; 		// 화면에 보여지는 첫번째 번호
	private int curBlock; 				// 현재 블록
	private int blockSize; 				// 블록 사이즈
	private int lastBlock;				// 마지막 블록
	private int totPage;
	
	private String part;
}
