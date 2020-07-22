package com.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.domain.MemberVO;
import com.board.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	/**/
	//회원가입
	@Override
	public void register(MemberVO vo)throws Exception {
		dao.register(vo);
	}
	
	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);		
	}

} 