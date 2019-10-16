package com.webaid.controller;

import java.io.File;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.CautionVO;
import com.webaid.domain.EventVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.PageMaker5;
import com.webaid.domain.PageMakerWith12;
import com.webaid.domain.PageMakerWith8;
import com.webaid.domain.RealStoryVO;
import com.webaid.domain.ReviewVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;
import com.webaid.domain.SearchCriteria8;
import com.webaid.domain.UserVO;
import com.webaid.service.AdviceService;
import com.webaid.service.BeforeAfterService;
import com.webaid.service.CautionService;
import com.webaid.service.ClinicListService;
import com.webaid.service.ClinicResListService;
import com.webaid.service.EventService;
import com.webaid.service.NoticeService;
import com.webaid.service.RealStoryService;
import com.webaid.service.ReviewService;
import com.webaid.service.UserService;
import com.webaid.util.FileDelete;
import com.webaid.util.SmsSendUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/m/*")
public class MobileController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private BeforeAfterService baService;
	
	@Autowired
	private RealStoryService rsService;
	
	@Autowired
	private ReviewService rService;
	
	@Autowired
	private EventService eService;
	
	@Autowired
	private CautionService cService;
	
	@Autowired
	private ClinicListService clService;
	
	@Autowired
	private ClinicResListService crlService;
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("index GET");
		
		return "main/mIndex";
	}*/
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String mLogin(Model model) {
		logger.info("login GET");
		
		return "mobile/mLogin";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String mJoin(Model model) {
		logger.info("join GET");
		
		return "mobile/mJoin";
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public String findId(HttpServletRequest req, Model model){
		logger.info("mobile findId GET");
		GregorianCalendar today = new GregorianCalendar ( );
		int year = today.get ( today.YEAR );
		model.addAttribute("year", year);
		return "mobile/mFindId"; 
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public ResponseEntity<String> findId(@RequestBody Map<String, String> info){
		logger.info("mobile findId POST");
		ResponseEntity<String> entity = null;
		UserVO searchVO = new UserVO();
		searchVO.setName(info.get("name"));
		searchVO.setEmail(info.get("email"));
		UserVO vo = uService.selectByNameEmail(searchVO);
		if(vo == null){
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>(vo.getNo()+"", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value="/mFindIdEnd", method=RequestMethod.POST)
	public String findIdEnd(int no, Model model){
		logger.info("Mobile findIdEnd POST");
		
		UserVO vo = uService.selectOne(no);
		model.addAttribute("item", vo);
		return "mobile/mFindIdEnd2";
	}
	
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public String findPw(Model model){
		logger.info("findPw GEt");
		return "mobile/mFindPw";
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public String myInfo(Model model){
		logger.info("myinfo get");
		
		return "mobile/mMyInfo";
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.POST)
	public ResponseEntity<String> myInfoPost(@RequestBody Map<String, String> info, Model model){
		logger.info("myinfo POST");
		ResponseEntity<String> entity = null;
		UserVO vo = uService.selectById(info.get("id"));
		
		if(vo == null){
			entity = new ResponseEntity<String>("empty", HttpStatus.OK);
		}else{
			if(vo.getPw().equals(info.get("pw"))){
				entity = new ResponseEntity<String>("ok", HttpStatus.OK);
				
			}else{
				entity = new ResponseEntity<String>("no", HttpStatus.OK);
			}
		}
		return entity;
	}
	
	@RequestMapping(value="/myInfoEdit", method=RequestMethod.GET)
	public String myInfoEditGet(HttpServletRequest req, Model model){
		logger.info("myinfoEdit get");
		HttpSession session = req.getSession(false);
		if(session == null){
			return "redirect:/m/login";
		}else{
			System.out.println(session.getAttribute("no"));
			int no = Integer.parseInt(session.getAttribute("no")+"");
			UserVO vo = uService.selectOne(no);
			model.addAttribute("item", vo);
		}
		
		return "mobile/mMyInfoEdit";
	}
	
	@RequestMapping(value="/myInfoEdit", method=RequestMethod.POST)
	public ResponseEntity<String> myInfoEditPost(@RequestBody Map<String, String> info, Model model){
		logger.info("myinfoEdit POST");
		ResponseEntity<String> entity = null;
		try {
			UserVO prevVO = uService.selectOne(Integer.parseInt(info.get("no")));
			UserVO vo = new UserVO();
			
			vo.setNo(Integer.parseInt(info.get("no")));
			vo.setName(info.get("name"));
			vo.setPhone(info.get("phone"));
			vo.setGender(prevVO.getGender());
			vo.setBirth("");
			vo.setEmail(info.get("email"));
			if(info.get("new_pw").length() <2){
				vo.setPw(prevVO.getPw());
			}else{
				vo.setPw(info.get("new_pw"));
			}
			
			uService.update(vo);
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public String personal(Model model) {
		logger.info("personal GET");
		
		return "mobile/mfPersonal";
	}
	
	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agree(Model model) {
		logger.info("agree GET");
		
		return "mobile/mfAgree";
	}
	
	@RequestMapping(value = "/menu01_01", method = RequestMethod.GET)
	public String mMenu01_01(Model model) {
		logger.info("menu01_01 GET");
		
		return "mobile/mMenu01_01";
	}
	
	@RequestMapping(value = "/menu01_02", method = RequestMethod.GET)
	public String mMenu01_02(Model model) {
		logger.info("mMenu01_02 GET");
		
		return "mobile/mMenu01_02";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String mMenu01_03(Model model) {
		logger.info("mMenu01_03 GET");
		
		return "mobile/mMenu01_03";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String mMenu01_04(Model model) {
		logger.info("mMenu01_04 GET");
		
		return "mobile/mMenu01_04";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String mMenu01_05(Model model) {
		logger.info("mMenu01_05 GET");
		
		return "mobile/mMenu01_05";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String mMenu02_01(Model model) {
		logger.info("mMenu02_01 GET");
		
		return "mobile/mMenu02_01";
	}
	
	@RequestMapping(value = "/menu02_02", method = RequestMethod.GET)
	public String mMenu02_02(Model model) {
		logger.info("mMenu02_02 GET");
		
		return "mobile/mMenu02_02";
	}
	
	@RequestMapping(value = "/menu02_03", method = RequestMethod.GET)
	public String mMenu02_03(Model model) {
		logger.info("mMenu02_03 GET");
		
		return "mobile/mMenu02_03";
	}
	
	@RequestMapping(value = "/menu02_04", method = RequestMethod.GET)
	public String mMenu02_04(Model model) {
		logger.info("mMenu02_04 GET");
		
		return "mobile/mMenu02_04";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String mMenu03_01(Model model) {
		logger.info("mMenu03_01 GET");
		
		return "mobile/mMenu03_01";
	}
	
	@RequestMapping(value = "/menu03_02", method = RequestMethod.GET)
	public String mMenu03_02(Model model) {
		logger.info("mMenu03_02 GET");
		
		return "mobile/mMenu03_02";
	}
	
	@RequestMapping(value = "/menu03_03", method = RequestMethod.GET)
	public String mMenu03_03(Model model) {
		logger.info("mMenu03_03 GET");
		
		return "mobile/mMenu03_03";
	}
	
	@RequestMapping(value = "/menu03_04", method = RequestMethod.GET)
	public String mMenu03_04(Model model) {
		logger.info("mMenu03_04 GET");
		
		return "mobile/mMenu03_04";
	}
	
	@RequestMapping(value = "/menu03_05", method = RequestMethod.GET)
	public String mMenu03_05(Model model) {
		logger.info("mMenu03_05 GET");
		
		return "mobile/mMenu03_05";
	}
	
	@RequestMapping(value = "/menu03_06", method = RequestMethod.GET)
	public String mMenu03_06(Model model) {
		logger.info("mMenu03_06 GET");
		
		return "mobile/mMenu03_06";
	}
	
	@RequestMapping(value = "/menu03_07", method = RequestMethod.GET)
	public String mMenu03_07(Model model) {
		logger.info("mMenu03_07 GET");
		
		return "mobile/mMenu03_07";
	}
	
	@RequestMapping(value = "/menu04_01", method = RequestMethod.GET)
	public String mMenu04_01(Model model) {
		logger.info("mMenu04_01 GET");
		
		return "mobile/mMenu04_01";
	}
	
	@RequestMapping(value = "/menu04_02", method = RequestMethod.GET)
	public String mMenu04_02(Model model) {
		logger.info("mMenu04_02 GET");
		
		return "mobile/mMenu04_02";
	}
	
	@RequestMapping(value = "/menu04_03", method = RequestMethod.GET)
	public String mMenu04_03(Model model) {
		logger.info("mMenu04_03 GET");
		
		return "mobile/mMenu04_03";
	}
	
	@RequestMapping(value = "/menu04_04", method = RequestMethod.GET)
	public String mMenu04_04(Model model) {
		logger.info("mMenu04_04 GET");
		
		return "mobile/mMenu04_04";
	}
	
	@RequestMapping(value = "/menu05_01", method = RequestMethod.GET)
	public String mMenu05_01(Model model) {
		logger.info("mMenu05_01 GET");
		
		return "mobile/mMenu05_01";
	}
	
	@RequestMapping(value = "/menu05_02", method = RequestMethod.GET)
	public String mMenu05_02(Model model) {
		logger.info("mMenu05_02 GET");
		
		return "mobile/mMenu05_02";
	}
	
	@RequestMapping(value = "/menu05_03", method = RequestMethod.GET)
	public String mMenu05_03(Model model) {
		logger.info("mMenu05_03 GET");
		
		return "mobile/mMenu05_03";
	}
	
	@RequestMapping(value = "/menu05_04", method = RequestMethod.GET)
	public String mMenu05_04(Model model) {
		logger.info("mMenu05_04 GET");
		
		return "mobile/mMenu05_04";
	}
	
	@RequestMapping(value = "/menu05_05", method = RequestMethod.GET)
	public String mMenu05_05(Model model) {
		logger.info("mMenu05_05 GET");
		
		return "mobile/mMenu05_05";
	}
	
	@RequestMapping(value = "/menu05_06", method = RequestMethod.GET)
	public String mMenu05_06(Model model) {
		logger.info("mMenu05_06 GET");
		
		return "mobile/mMenu05_06";
	}
	
	@RequestMapping(value = "/menu05_07", method = RequestMethod.GET)
	public String mMenu05_07(Model model) {
		logger.info("mMenu05_07 GET");
		
		return "mobile/mMenu05_07";
	}
	
	@RequestMapping(value = "/menu05_08", method = RequestMethod.GET)
	public String mMenu05_08(Model model) {
		logger.info("mMenu05_08 GET");
		
		return "mobile/mMenu05_08";
	}
	
	@RequestMapping(value = "/menu05_09", method = RequestMethod.GET)
	public String mMenu05_09(Model model) {
		logger.info("mMenu05_09 GET");
		
		return "mobile/mMenu05_09";
	}
	
	@RequestMapping(value = "/menu05_10", method = RequestMethod.GET)
	public String mMenu05_10(Model model) {
		logger.info("mMenu05_10 GET");
		
		return "mobile/mMenu05_10";
	}
	
	@RequestMapping(value = "/menu06_01", method = RequestMethod.GET)
	public String mMenu06_01(Model model) {
		logger.info("mMenu06_01 GET");
		
		return "mobile/mMenu06_01";
	}
	
	@RequestMapping(value = "/menu07_01", method = RequestMethod.GET)
	public String mMenu07_01(Model model) {
		logger.info("mMenu07_01 GET");
		
		return "mobile/mMenu07_01";
	}
	
	@RequestMapping(value = "/menu07_02", method = RequestMethod.GET)
	public String mMenu07_02(Model model) {
		logger.info("mMenu07_02 GET");
		
		return "mobile/mMenu07_02";
	}
	
	@RequestMapping(value = "/menu07_03", method = RequestMethod.GET)
	public String mMenu07_03(Model model) {
		logger.info("mMenu07_03 GET");
		
		return "mobile/mMenu07_03";
	}
	
	@RequestMapping(value = "/menu07_04", method = RequestMethod.GET)
	public String mMenu07_04(Model model) {
		logger.info("mMenu07_04 GET");
		
		return "mobile/mMenu07_04";
	}
	
	@RequestMapping(value = "/menu07_05", method = RequestMethod.GET)
	public String mMenu07_05(Model model) {
		logger.info("mMenu07_05 GET");
		
		return "mobile/mMenu07_05";
	}
	
	@RequestMapping(value = "/menu08_01", method = RequestMethod.GET)
	public String mMenu08_01(Model model) {
		logger.info("mMenu08_01 GET");
		
		return "mobile/mMenu08_01";
	}
	
	@RequestMapping(value = "/menu08_02", method = RequestMethod.GET)
	public String mMenu08_02(Model model) {
		logger.info("mMenu08_02 GET");
		
		return "mobile/mMenu08_02";
	}
	
	@RequestMapping(value = "/menu09_01", method = RequestMethod.GET)
	public String mMenu09_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_01 GET");
		
		List<NoticeVO> topList = nService.selectTopNotice("o");
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		pageMaker.setFinalPage(nService.listSearchCount(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_01";
	}
	
	@RequestMapping(value = "/menu09_01read", method = RequestMethod.GET)
	public String mMenu09_01read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_01read GET");
		
		NoticeVO vo=nService.selectOne(no);
		NoticeVO beforeVO = nService.selectBefore(no);
		NoticeVO afterVO = nService.selectAfter(no);
		
		nService.updateCnt(no);
		
		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_01read";
	}
	
	@RequestMapping(value = "/menu09_02", method = RequestMethod.GET)
	public String mMenu09_02(@ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("mMenu09_02 GET");
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		pageMaker.setFinalPage(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_02";
	}
	
	@RequestMapping(value = "/menu09_02pwChk", method = RequestMethod.GET)
	public String menu09_02pwChkGet(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("menu09_02pwChk GET");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("no", no);
		return "mobile/mMenu09_02pwChk";
	}
	
	@RequestMapping(value = "/menu09_02pwChk", method = RequestMethod.POST)
	public ResponseEntity<String> menu09_02pwChkPost(@RequestBody Map<String, String> info) {
		logger.info("menu09_02pwChk GET");
		ResponseEntity<String> entity = null;
		AdviceVO vo = aService.selectOne(Integer.parseInt(info.get("no")));
		if(vo.getPw().equals(info.get("pw"))){
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/menu09_02read", method = RequestMethod.GET)
	public String mMenu09_02read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("mMenu09_02read GET");
		
		AdviceVO vo = aService.selectOne(no);
		
		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_02read";
	}
	
	
	@RequestMapping(value = "/menu09_02register", method = RequestMethod.GET)
	public String mMenu09_02register(Model model) {
		logger.info("mMenu09_02register GET");
		
		return "mobile/mMenu09_02register";
	}
	
	@RequestMapping(value = "/menu09_02register", method = RequestMethod.POST)
	public String mMenu09_02registerPost(MultipartHttpServletRequest mtfReq, Model model) {
		logger.info("mMenu09_02register POST");
		
		AdviceVO vo = new AdviceVO();
		
		vo.setName(mtfReq.getParameter("name"));
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setEmail("");
		vo.setState("상담예정");
		vo.setSecret(mtfReq.getParameter("secret"));
		vo.setPw(mtfReq.getParameter("pw"));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setReply("");
		vo.setMemo("");
		vo.setIp(mtfReq.getParameter("ip"));
		vo.setAccess_url(mtfReq.getParameter("access_url"));
		vo.setReply_date("");
		vo.setQuick_state("x");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadAdvice/";
		String path = (mtfReq.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		String fileName = "";
		String storedFileName = "";
		
		Iterator<String> files = mtfReq.getFileNames();
		mtfReq.getFileNames();
		while(files.hasNext()){
			String uploadFile = files.next();
			
			MultipartFile mFile = mtfReq.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();
			if(fileName.length() == 0){
				storedFileName = "";
			}else{
				storedFileName = System.currentTimeMillis()+"_"+fileName;
			}
			
			vo.setUpload_origin(fileName);
			vo.setUpload_stored(storedFileName);
			
			try {
				mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//이미지 업로드 끝
		
		aService.insert(vo);
		
		SmsSendUtil ssu = new SmsSendUtil();
		ssu.sendSMS("온라인 상담", mtfReq.getParameter("name"), mtfReq.getParameter("phone"));
		return "redirect:/m/menu09_02";
	}
	
	@RequestMapping(value = "/menu09_02update", method = RequestMethod.GET)
	public String menu05_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu09_02update GET");
		
		AdviceVO vo = aService.selectOne(no);

		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_02update";
	}
	
	@RequestMapping(value = "/menu09_02update", method = RequestMethod.POST)
	public String menu09_02updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu09_02update POST");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadAdvice/";
		String path = (mtfReq.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		String fileName = "";
		String storedFileName = "";
		
		Iterator<String> files = mtfReq.getFileNames();
		mtfReq.getFileNames();
		while(files.hasNext()){
			String uploadFile = files.next();
			
			MultipartFile mFile = mtfReq.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();
			if(fileName.length() == 0){
				storedFileName = "";
			}else{
				storedFileName = System.currentTimeMillis()+"_"+fileName;
			}
			
			try {
				//mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//이미지 업로드 끝
		
		String uploadState = mtfReq.getParameter("uploadState");
		
		
		AdviceVO vo = new AdviceVO();
		AdviceVO prevVO = aService.selectOne(Integer.parseInt(mtfReq.getParameter("no")));
		
		vo.setNo(prevVO.getNo());
		vo.setName(mtfReq.getParameter("name"));
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setEmail(prevVO.getEmail());
		vo.setState(prevVO.getState());
		vo.setSecret(prevVO.getSecret());
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setReply(prevVO.getReply());
		vo.setReply_date(prevVO.getReply_date());
		vo.setMemo(prevVO.getMemo());
		
		if(uploadState.equals("o")){
			vo.setUpload_origin(fileName);
			vo.setUpload_stored(storedFileName);
		}else{
			vo.setUpload_origin(prevVO.getUpload_origin());
			vo.setUpload_stored(prevVO.getUpload_stored());
		}
		
		aService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker5 pageMaker = new PageMaker5();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		rtts.addAttribute("page", page);
		return "redirect:/m/menu09_02";
	}
	
	@RequestMapping(value = "/menu09_02uploadImgDelete", method = RequestMethod.POST)
	public ResponseEntity<String> menu09_02uploadImgDelete(HttpServletRequest req, @RequestBody Map<String, String> info) {
		logger.info("menu09_02update POST");
		ResponseEntity<String> entity = null;
		
		int no = Integer.parseInt(info.get("no"));
		
		String innerUploadPath = "resources/uploadAdvice/";
		String path = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		System.out.println(path);
		AdviceVO prevVO = aService.selectOne(no);
		FileDelete fd = new FileDelete();
		
		AdviceVO vo = new AdviceVO();
		vo.setNo(no);
		
		try {
			
			fd.fileDelete(path, prevVO.getUpload_stored());
			
			vo.setUpload_origin("");
			vo.setUpload_stored("");
			aService.updateUpload(vo);
			
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
			e.printStackTrace();
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/menu09_03", method = RequestMethod.GET)
	public String mMenu09_03(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_03 GET");
		
		List<BeforeAfterVO> list = baService.listSearch(cri);
		
		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(baService.listSearchCount(cri));
		pageMaker.setFinalPage(baService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_03";
	}
	
	@RequestMapping(value = "/menu09_04", method = RequestMethod.GET)
	public String mMenu09_04(@ModelAttribute("cri") SearchCriteria8 cri, Model model) throws Exception {
		logger.info("mMenu09_04 GET");
		List<RealStoryVO> list = rsService.listSearch8(cri);
		
		PageMakerWith8 pageMaker = new PageMakerWith8();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rsService.listSearchCount8(cri));
		pageMaker.setFinalPage(rsService.listSearchCount8(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_04";
	}
	
	@RequestMapping(value = "/menu09_04read", method = RequestMethod.GET)
	public String mMenu09_04read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_04read GET");
		
		rsService.updateCnt(no);
		RealStoryVO vo = rsService.selectOne(no);
		RealStoryVO beforeVO = rsService.selectBefore(no);
		RealStoryVO afterVO = rsService.selectAfter(no);
		
		PageMaker5 pageMaker = new PageMaker5();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rsService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_04read";
	}
	
	@RequestMapping(value = "/menu09_05", method = RequestMethod.GET)
	public String mMenu09_05(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_05 GET");
		List<ReviewVO> list = rService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rService.listSearchCount(cri));
		pageMaker.setFinalPage(rService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_05";
	}
	
	@RequestMapping(value = "/menu09_05read", method = RequestMethod.GET)
	public String mMenu09_05read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_05read GET");
		rService.updateCnt(no);
		ReviewVO vo = rService.selectOne(no);
		ReviewVO beforeVO = rService.selectBefore(no);
		ReviewVO afterVO = rService.selectAfter(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_05read";
	}
	
	@RequestMapping(value = "/menu09_06", method = RequestMethod.GET)
	public String mMenu09_06(@ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("mMenu09_06 GET");
		List<EventVO> list = eService.listSearch12(cri);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount12(cri));
		pageMaker.setFinalPage(eService.listSearchCount12(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_06";
	}
	
	@RequestMapping(value = "/menu09_06read", method = RequestMethod.GET)
	public String mMenu09_06read(int no, @ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("mMenu09_06read GET");
		
		EventVO vo = eService.selectOne(no);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount12(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_06read";
	}
	
	@RequestMapping(value = "/menu09_07", method = RequestMethod.GET)
	public String mMenu09_07(Model model) {
		logger.info("mMenu09_07 GET");
		
		return "mobile/mMenu09_07";
	}
	
	@RequestMapping(value = "/menu09_08", method = RequestMethod.GET)
	public String mMenu09_08(@ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("mMenu09_08 GET");
		
		List<CautionVO> list = cService.listSearch12(cri);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount12(cri));
		pageMaker.setFinalPage(cService.listSearchCount12(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/mMenu09_08";
	}
	
	@RequestMapping(value = "/menu09_08read", method = RequestMethod.GET)
	public String mMenu09_08read(int no, @ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("mMenu09_08read GET");
		
		cService.updateCnt(no);
		CautionVO vo = cService.selectOne(no);
		CautionVO beforeVO = cService.selectBefore(no);
		CautionVO afterVO = cService.selectAfter(no);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount12(cri));

		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_08read";
	}
}
