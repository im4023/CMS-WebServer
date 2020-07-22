package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.DeaJeonDAO;
import com.board.domain.DeaJeonVO;


@Service
public class DeaJeonServiceImpl implements DeaJeonService {

	@Inject
	private DeaJeonDAO dao;
	 
	// 게시물 목록
	@Override
	public List list(DeaJeonVO vo) throws Exception {
		return dao.list(vo);
	}
	
	// 게시물 작성 
	@Override
	public void write(DeaJeonVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.write(vo);
	}
	
	// 게시물 조회
	@Override
	public DeaJeonVO view(DeaJeonVO vo) throws Exception {
		
		return dao.view(vo);
	}
	
	// 게시물 수정
	@Override
	public void modify(DeaJeonVO vo) throws Exception {
		
		dao.modify(vo);
	}

	// 게시물 삭제
	@Override
	public void delete(DeaJeonVO vo) throws Exception {
		dao.delete(vo);
		
	}
	
	// 게시물 목록
	@Override
	public List video_list(DeaJeonVO vo) throws Exception {
		return dao.video_list(vo);
	}
	
	// 번호 초기화
	@Override
	public void idx_reset(DeaJeonVO vo) throws Exception {
		dao.idx_reset(vo);
	}
}