package com.board.controller;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.board.domain.DeaJeonVO;
import com.board.service.DeaJeonService;
import com.board.utils.UploadFileUtils;


@Controller
@RequestMapping("/DeaJeon/*")

public class DeaJeonController {
	
	private static final Logger logger = LoggerFactory.getLogger(DeaJeonController.class);

	@Inject
	private DeaJeonService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void getList() throws Exception {
	}
	/*
	// 게시물 목록
	@RequestMapping(value = "/list")
	public void getList(HttpServletRequest request, Model model) throws Exception {
	String busNum = (String)request.getParameter("busNum");
	List list = null;
	list = service.list(busNum);
	model.addAttribute("list", list);
	}
	*/
	@RequestMapping(value = "/list")
	public void getList(DeaJeonVO vo, Model model) throws Exception {
	List list = null;
	list = service.list(vo);
	model.addAttribute("list", list);
	}
	
	// 게시물 작성(페이지)
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite(HttpSession session, Model model) throws Exception{
		logger.info("get write");
		
		Object loginInfo = session.getAttribute("member");
		
		if(loginInfo == null) {
			model.addAttribute("msg",false);
		}
	}
			
	// 게시물 작성(글쓰기)
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(DeaJeonVO vo, MultipartFile upfile) throws Exception {
		logger.info("write start");
		
		String fileUploadPath = uploadPath + File.separator;
		//String ymdPath = UploadFileUtils.calcPath(fileUploadPath);
		String fileName = null;
		
		
		//fileName =  UploadFileUtils.fileUpload(fileUploadPath, upfile.getOriginalFilename(), upfile.getBytes(), ymdPath);
		fileName =  UploadFileUtils.fileUpload(fileUploadPath, upfile.getOriginalFilename(), upfile.getBytes());
		vo.setorg_file(upfile.getOriginalFilename());
		//vo.setsto_file(ymdPath + File.separator + fileName);
		vo.setsto_file(fileName);
		logger.info("파일이름 : " + fileName);
		
		service.write(vo);
		
		// 광고리스트 파일 갱신
		String listName = vo.getbusNum();
		logger.info("서버이름 : " + listName);
		
		List list_video = null;
		
		
		File txt = new File("C:\\Users\\Bymtech\\Desktop\\CMS_list\\" + listName +".txt");
		txt.createNewFile();
		BufferedWriter wt = new BufferedWriter(new FileWriter(txt));
		
		list_video = service.video_list(vo);
		logger.info("리스트:"+list_video);
		for(int i=0; i<list_video.size(); i++) {
			String k = (String) list_video.get(i);
			logger.info("리스트쓰기:"+list_video.get(i));
			logger.info("리스트쓰기:"+k);
			wt.append(k);
			wt.append("\n");
		}
		wt.close();
		return "redirect:/DeaJeon/main";
	}
	
	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.POST)
	public void getView(HttpServletRequest request,DeaJeonVO Vo, Model model) throws Exception {
		/*
		String busNum = (String)request.getParameter("busNum");
		HttpSession session = request.getSession();	
		session.setAttribute("busNum", busNum);
		*/
		DeaJeonVO vo = service.view(Vo);
		model.addAttribute("view", vo);
	}
	
	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String getDelete(DeaJeonVO vo) throws Exception{
		String fileDeletePath = uploadPath + File.separator + vo.getsto_file();
		File f = new File(fileDeletePath);
		logger.info("삭제 경로 : " + f);
		if(f.exists()) {
			f.delete();
			logger.info("파일삭제완료");
		}else {
			logger.info("파일 없음");
		}
		
		service.delete(vo);
		
		//vo.setZero(0);
		//service.idx_reset(vo);
		
		// 광고리스트 파일 갱신
		String listName = vo.getbusNum();
		logger.info("서버이름 : " + listName);
		
		List list_video = null;
		
		File txt = new File("C:\\Users\\Bymtech\\Desktop\\CMS_list\\" + listName +".txt");
		txt.createNewFile();
		BufferedWriter wt = new BufferedWriter(new FileWriter(txt));
		
		list_video = service.video_list(vo);
		logger.info("리스트:"+list_video);
		for(int i=0; i<list_video.size(); i++) {
			String k = (String) list_video.get(i);
			logger.info("리스트쓰기:"+list_video.get(i));
			logger.info("리스트쓰기:"+k);
			wt.append(k);
			wt.append("\n");
		}
		wt.close();
		
		return "redirect:/DeaJeon/main";
	}
		
	// 파일 다운로드
	@RequestMapping(value="/fileDown")
	public void fileDown(DeaJeonVO vo, HttpServletResponse response) throws Exception{
		String fileDownloadPath = uploadPath + File.separator + vo.getsto_file();
		String originalFileName = vo.getorg_file();
		
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File(fileDownloadPath));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		}
	
	
}



