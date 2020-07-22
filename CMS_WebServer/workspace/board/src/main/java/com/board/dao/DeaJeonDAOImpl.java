package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.DeaJeonVO;


@Repository
public class DeaJeonDAOImpl implements DeaJeonDAO {

	@Inject
	private SqlSession sql;
	
	private static final String namespace = "com.board.mappers.DeaJeon";
									
	
	// 게시물 목록
	@Override
	public List list(DeaJeonVO vo) throws Exception { 
	  
		return sql.selectList(namespace + ".list", vo);
	}
	
	// 게시물 작성
	@Override
	public void write(DeaJeonVO vo) throws Exception {
		
		sql.insert(namespace + ".write", vo);		
	}
	
	// 게시물 조회
	public DeaJeonVO view(DeaJeonVO vo) throws Exception {
		
		return sql.selectOne(namespace + ".view", vo);
	}
	
	// 게시물 수정
	@Override
	public void modify(DeaJeonVO vo) throws Exception {
		
		sql.update(namespace + ".modify", vo);
	}

	// 게시물 삭제	
	@Override
	public void delete(DeaJeonVO vo) throws Exception {
		sql.delete(namespace + ".delete", vo);
		
	}

	//영상 리스트
	@Override
	public List video_list(DeaJeonVO vo) throws Exception { 
	  
		return sql.selectList(namespace + ".video_list", vo);
	}
	
	@Override
	public void idx_reset(DeaJeonVO vo) throws Exception{
		sql.update(namespace + ".idx_reset", vo);
	}
	
	

}