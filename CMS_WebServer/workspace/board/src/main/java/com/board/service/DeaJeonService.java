package com.board.service;


import java.util.List;

import com.board.domain.DeaJeonVO;


public interface DeaJeonService {
	// 게시물 목록
	public List list(DeaJeonVO vo) throws Exception; 
	
	// 게시물 작성
	public void write(DeaJeonVO vo) throws Exception;
	
	// 게시물 조회
	public DeaJeonVO view(DeaJeonVO vo) throws Exception;
	
	// 게시물 수정
	public void modify(DeaJeonVO vo) throws Exception;
	
	// 게시물 삭제
	public void delete(DeaJeonVO vo) throws Exception;
	
	// 영상 리스트
	public List video_list(DeaJeonVO vo) throws Exception;
	
	// 번호 초기화
	public void idx_reset(DeaJeonVO vo)throws Exception;
	
}
