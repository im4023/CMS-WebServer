package com.board.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.MemberVO;
import com.board.service.MemberService;


@Controller
@RequestMapping("/bymt/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);


	@Inject
	MemberService service;
	
	@Autowired
	BCryptPasswordEncoder passEncoder;
	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void tRegister() throws Exception {
		logger.info("get register");
	}
	
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post resister");
		
		//비밀번호 암호화 
		String inputPass = vo.getAdminPass();
		String pass = passEncoder.encode(inputPass);
		vo.setAdminPass(pass);			
		
		service.register(vo);
		
		return "redirect:/bymt/admin";
	}
	
	// 관리자로그인 페이지
	@RequestMapping(value = "bymt/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
				
		return "bymt/admin";
	}
	

	// 로그인
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		HttpSession session = req.getSession();		
		MemberVO login = service.login(vo);
		String AreaNum = null;
		
		// 암호화 비밀번호 체크 //
		if(login != null) {
			boolean passMatch = passEncoder.matches(vo.getAdminPass(), login.getAdminPass());
			if(passMatch == true) {
				session.setAttribute("member", login);
				AreaNum = login.getCodeNum();
				session.setAttribute("AreaNum", AreaNum);
				logger.info("AreaNum : " + AreaNum);
				logger.info("login success");
				
			} else {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
				logger.info("login fail");
			}
		}else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			logger.info("login fail");
		}
		
		
			return "redirect:/bymt/admin";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
	 logger.info("get logout");
	 
	 session.invalidate();
	   
	 return "redirect:/bymt/admin";
	}
	
}
