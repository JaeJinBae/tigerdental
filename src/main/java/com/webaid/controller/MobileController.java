package com.webaid.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.UserVO;
import com.webaid.service.AdviceService;
import com.webaid.service.BeforeAfterService;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;
import com.webaid.service.ReviewService;
import com.webaid.service.StatisticService;
import com.webaid.service.UserService;
import com.webaid.util.SendEmail;

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
	private NewsService newsService;
	
	@Autowired
	private BeforeAfterService baService;
	
	@Autowired
	private ReviewService rService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private StatisticService sService;
	
	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public String personal(Model model) {
		logger.info("personal GET");
		
		return "mobile/personal";
	}
	
	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agree(Model model) {
		logger.info("agree GET");
		
		return "mobile/agree";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		logger.info("login");
		
		return "mobile/mLogin";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(){
		logger.info("join");
		
		return "mobile/mJoin";
	}
	
	@RequestMapping(value="/joinEnd", method=RequestMethod.GET)
	public String joinEnd(){
		logger.info("joinEnd");
		
		return "mobile/mJoinEnd";
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public String findId(){
		logger.info("findId");
		
		return "mobile/mFindId";
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public ResponseEntity<String> findId(@RequestBody Map<String, String> info){
		ResponseEntity<String> entity = null;
		System.out.println(info);
		UserVO searchVO = new UserVO();
		searchVO.setName(info.get("name"));
		searchVO.setEmail(info.get("email"));
		searchVO.setBirth(info.get("birth"));
		UserVO vo = uService.selectByNameEmailBirth(searchVO);
		if(vo == null){
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>(vo.getNo()+"", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value="/findIdEnd", method=RequestMethod.POST)
	public String findIdEnd(int no, Model model){
		logger.info("findIdEnd");
		
		UserVO vo = uService.selectOne(no);
		model.addAttribute("item", vo);
		
		return "mobile/mFindIdEnd";
	}
	
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public String findPw(HttpServletRequest req, Model model){
		
		return "mobile/mFindPw";
	}
	
	@RequestMapping(value="/findPw", method=RequestMethod.POST)
	public ResponseEntity<String> findPw(@RequestBody Map<String, String> info){
		ResponseEntity<String> entity = null;
		
		UserVO searchVO = new UserVO();
		searchVO.setId(info.get("id"));
		searchVO.setName(info.get("name"));
		searchVO.setEmail(info.get("email"));
		searchVO.setBirth(info.get("birth"));
		
		UserVO vo = uService.selectByIdNameEmail(searchVO);
		if(vo == null){
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>(vo.getNo()+"", HttpStatus.OK);
			char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
			int idx = 0;
			StringBuffer sb = new StringBuffer(); 
			for (int i = 0; i < 8; i++) { 
				idx = (int) (charSet.length * Math.random());
				sb.append(charSet[idx]);
			}
			vo.setPw(sb+"");
			uService.update(vo);
			
			String title = vo.getName()+"님 문의하신 비밀번호입니다.";
			String content = "<div style='width:750px; margin:0px auto;'><div>"
			+"<div style='width:700px; margin:0px auto; font-size:25px; padding:40px 0 30px 0; text-align:center; border-bottom:solid 2px #a6a6a6; margin-bottom:30px;'>"
			+"타이거치과의원 웹사이트 <span style='color:#00b0ff;'>임시 비밀번호</span>를 안내해 드립니다.</div>"
			+"<div style='text-align:center; font-size:14px; margin-bottom:35px;'>안녕하세요. <span style='color:#394496;'>"+vo.getName()+"</span> 회원님<br>요청하신 타이거치과의원의 웹사이트의 임시 비밀번호는 아래와 같습니다.</div>"
			+"<div style='width:416px;margin:0px auto;background-color:#f4f4f4;box-sizing:border-box;padding:15px 84px; margin-bottom:30px'>"
			+"<table cellspacing='0' border='0' cellpadding='2'><colgroup><col width='109px'><col width='*'></colgroup>"
			+"<tbody><tr><td>임시비밀번호</td><td><span style='font-weight:bold; color:#00b0ff;'>"+sb+"</span></td></tr></tbody></table></div>"
			+"<div style='text-align:center;font-size:13px;margin-bottom:25px;color: #575e6d;'>"
			+"※ 발급된 비밀번호는 임시 비밀번호이므로 로그인 후 <span style='color:#ec008c;'>반드시 새로운 비밀번호로 변경</span>하시기 바랍니다.<br>"
			+"<span style='color:#000;'>타이거치과의원 사이트 &gt; 마이페이지 &gt; 회원정보 수정</span>에서 변경 가능합니다.</div>"
			+"<div style='text-align:center;margin-bottom:40px'>"
			+"<a href='http://www.tigerdental.co.kr' style='display: block; margin: 0 auto; : 150px; padding: 10px 0; text-align: center; background: #00b0ff; color: #fff; text-decoration: none;' rel='noreferrer noopener' target='_blank'>"
			+"홈페이지 바로가기</a></div></div>"
			+"<div style='width:100%;height:200px;border-top:solid 1px #d5d8de; box-sizing:border-box; padding:18px 0 0 0;font-size:12px;background-image:url(http://tigerdental.co.kr/resources/images/mail/img_footer_logo.jpg); background-repeat:no-repeat; background-position:0 0'>"
			+"<p style='color:#444;margin-bottom:10px; margin-top: 15px; margin-left: 175px; font-size: 13px;'>"
			+"본 메일은 발신 전용으로 회신하실 경우 답변 되지 않습니다.<br>문의사항이나 기타 이용안내는 고객센터 <span style='color: #00b0ff; font-weight: 800;text-decoration: underline;'>02-540-2080</span> 를 이용해주세요</p>"
			+"<p style='color:#777; margin-left: 175px;'>"
			+"서울 강남구 도산대로 134 페이토빌딩 B1  |  대표자명 : 서인석  |  상호명 : 타이거치과의원<br>TEL : 02-540-2080  Copyright 2017 타이거치과의원 All rights reserved.</p></div></div>";
			
			SendEmail se = new SendEmail();
			se.SendMail(vo.getName(), vo.getEmail(), content, title);
		}
		return entity;
	}
	
	@RequestMapping(value="/findPwEnd", method=RequestMethod.POST)
	public String findPwEnd(HttpServletRequest req, Model model, String no){
		UserVO vo = uService.selectOne(Integer.parseInt(no));
		model.addAttribute("item", vo);
		return "mobile/mFindPwEnd";
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public String myInfo(Model model, HttpSession session){
		logger.info("myinfo get");
		int no = Integer.parseInt(session.getAttribute("no")+"");
		UserVO vo = uService.selectOne(no);
		model.addAttribute("item", vo);
		return "mobile/mMyInfo";
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.POST)
	public ResponseEntity<String> myInfoPost(@RequestBody Map<String, String> info, Model model){
		logger.info("myinfo POST");
		ResponseEntity<String> entity = null;
		try {
			UserVO vo = new UserVO();
			vo.setNo(Integer.parseInt(info.get("no")));
			vo.setName(info.get("name"));
			vo.setPhone(info.get("phone"));
			vo.setBirth(info.get("birth"));
			vo.setGender(info.get("gender"));
			vo.setEmail(info.get("email"));
			vo.setAddr(info.get("addr"));
			if(info.get("new_pw").length() <2){
				UserVO prevVO = uService.selectOne(Integer.parseInt(info.get("no")));
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
	
	@RequestMapping(value="/withdraw", method=RequestMethod.GET)
	public String withdraw(Model model){
		logger.info("withdraw get");
		
		return "mobile/withdraw";
	}
	
	@RequestMapping(value="/withdraw", method=RequestMethod.POST)
	public ResponseEntity<String> withdraw(@RequestBody Map<String, String> info, Model model){
		logger.info("withdraw POST");
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
	
	@RequestMapping(value="/withdrawReason", method=RequestMethod.GET)
	public String withdrawReason(Model model){
		logger.info("withdrawReason get");
		
		return "mobile/mWithdrawReason";
	}
	
	@RequestMapping(value="/withdrawReason", method=RequestMethod.POST)
	public ResponseEntity<String> withdrawReasonPOST(@RequestBody Map<String, String> info, HttpSession session, Model model){
		logger.info("withdrawReason POST ");
		ResponseEntity<String> entity = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar cal = Calendar.getInstance();
		
		String today = sdf.format(cal.getTime());
		
		UserVO vo = new UserVO();
		vo.setNo(Integer.parseInt(info.get("no")));
		vo.setWithdraw("o");
		vo.setReason(info.get("reason"));
		vo.setWithdraw_date(today);
		uService.updateWithdraw(vo);
		
		entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		
		session.invalidate();
		
		return entity;
	}
	
	@RequestMapping(value = "/menu01_01", method = RequestMethod.GET)
	public String menu01_01(Model model) {
		logger.info("menu01_01 GET");
		
		return "mobile/mMenu01_01";
	}
	
	@RequestMapping(value = "/menu01_02", method = RequestMethod.GET)
	public String menu01_02(Model model) {
		logger.info("menu01_02 GET");
		
		return "mobile/mMenu01_02";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String menu01_03(Model model) {
		logger.info("menu01_03 GET");
		
		return "mobile/mMenu01_03";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String menu01_04(Model model) {
		logger.info("menu01_04 GET");
		
		return "mobile/mMenu01_04";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String menu01_05(Model model) {
		logger.info("menu01_05 GET");
		
		return "mobile/mMenu01_05";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String menu02_01(Model model) {
		logger.info("menu02_01 GET");
		
		return "mobile/mMenu02_01";
	}
	
	@RequestMapping(value = "/menu02_02", method = RequestMethod.GET)
	public String menu02_02(Model model) {
		logger.info("menu02_02 GET");
		
		return "mobile/mMenu02_02";
	}
	
	@RequestMapping(value = "/menu02_03", method = RequestMethod.GET)
	public String menu02_03(Model model) {
		logger.info("menu02_03 GET");
		
		return "mobile/mMenu02_03";
	}
	
	@RequestMapping(value = "/menu02_04", method = RequestMethod.GET)
	public String menu02_04(Model model) {
		logger.info("menu02_04 GET");
		
		return "mobile/mMenu02_04";
	}
	
	@RequestMapping(value = "/menu02_05", method = RequestMethod.GET)
	public String menu02_05(Model model) {
		logger.info("menu02_05 GET");
		
		return "mobile/mMenu02_05";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String menu03_01(Model model) {
		logger.info("menu03_01 GET");
		
		return "mobile/mMenu03_01";
	}
	
	@RequestMapping(value = "/menu03_02", method = RequestMethod.GET)
	public String menu03_02(Model model) {
		logger.info("menu03_02 GET");
		
		return "mobile/mMenu03_02";
	}
	
	@RequestMapping(value = "/menu03_03", method = RequestMethod.GET)
	public String menu03_03(Model model) {
		logger.info("menu03_03 GET");
		
		return "mobile/mMenu03_03";
	}
	
	@RequestMapping(value = "/menu03_04", method = RequestMethod.GET)
	public String menu03_04(Model model) {
		logger.info("menu03_04 GET");
		
		return "mobile/mMenu03_04";
	}
	
	@RequestMapping(value = "/menu03_05", method = RequestMethod.GET)
	public String menu03_05(Model model) {
		logger.info("menu03_05 GET");
		
		return "mobile/mMenu03_05";
	}
	
	@RequestMapping(value = "/menu04_01", method = RequestMethod.GET)
	public String menu04_01(Model model) {
		logger.info("menu04_01 GET");
		
		return "mobile/mMenu04_01";
	}
	
	@RequestMapping(value = "/menu04_02", method = RequestMethod.GET)
	public String menu04_02(Model model) {
		logger.info("menu04_02 GET");
		
		return "mobile/mMenu04_02";
	}
	
	@RequestMapping(value = "/menu05_01", method = RequestMethod.GET)
	public String menu05_01(Model model) {
		logger.info("menu05_01 GET");
		
		return "mobile/mMenu05_01";
	}
	
	@RequestMapping(value = "/menu05_02", method = RequestMethod.GET)
	public String menu05_02(Model model) {
		logger.info("menu05_02 GET");
		
		return "mobile/mMenu05_02";
	}
	
	@RequestMapping(value = "/menu05_03", method = RequestMethod.GET)
	public String menu05_03(Model model) {
		logger.info("menu05_03 GET");
		
		return "mobile/mMenu05_03";
	}
	
	@RequestMapping(value = "/menu05_04", method = RequestMethod.GET)
	public String menu05_04(Model model) {
		logger.info("menu05_04 GET");
		
		return "mobile/mMenu05_04";
	}
	
	@RequestMapping(value = "/menu05_05", method = RequestMethod.GET)
	public String menu05_05(Model model) {
		logger.info("menu05_05 GET");
		
		return "mobile/mMenu05_05";
	}
	
	@RequestMapping(value = "/menu06_01", method = RequestMethod.GET)
	public String menu06_01(Model model) {
		logger.info("menu06_01 GET");
		
		return "mobile/mMenu06_01";
	}
	
	@RequestMapping(value = "/menu06_01read", method = RequestMethod.GET)
	public String menu06_01read(Model model) {
		logger.info("menu06_01read GET");
		
		return "mobile/mMenu06_01Read";
	}
	
	@RequestMapping(value = "/menu06_02", method = RequestMethod.GET)
	public String menu06_02(Model model) {
		logger.info("menu06_02 GET");
		
		return "mobile/mMenu06_02";
	}
	
	@RequestMapping(value = "/menu06_02read", method = RequestMethod.GET)
	public String menu06_02read(Model model) {
		logger.info("menu06_02read GET");
		
		return "mobile/mMenu06_02Read";
	}
	
	@RequestMapping(value = "/menu06_03", method = RequestMethod.GET)
	public String menu06_03(Model model) {
		logger.info("menu06_03 GET");
		
		return "mobile/mMenu06_03";
	}
	
	@RequestMapping(value = "/menu06_04", method = RequestMethod.GET)
	public String menu06_04(Model model) {
		logger.info("menu06_04 GET");
		
		return "mobile/mMenu06_04";
	}
	
	@RequestMapping(value = "/menu06_04read", method = RequestMethod.GET)
	public String menu06_04read(Model model) {
		logger.info("menu06_04read GET");
		
		return "mobile/mMenu06_04Read";
	}
	
	@RequestMapping(value = "/menu06_05", method = RequestMethod.GET)
	public String menu06_05(Model model) {
		logger.info("menu06_05 GET");
		
		return "mobile/mMenu06_05";
	}
	
	@RequestMapping(value = "/menu06_05read", method = RequestMethod.GET)
	public String menu06_05read(Model model) {
		logger.info("menu06_05read GET");
		
		return "mobile/mMenu06_05Read";
	}
	
	@RequestMapping(value = "/menu06_05write", method = RequestMethod.GET)
	public String menu06_05write(Model model) {
		logger.info("menu06_05write GET");
		
		return "mobile/mMenu06_05Write";
	}
	
	@RequestMapping(value = "/menu06_05update", method = RequestMethod.GET)
	public String menu06_05update(Model model) {
		logger.info("menu06_05update GET");
		
		return "mobile/mMenu06_05Update";
	}
	
	@RequestMapping(value = "/menu06_05pwchk", method = RequestMethod.GET)
	public String menu06_05pwchk(Model model) {
		logger.info("menu06_05pwchk GET");
		
		return "mobile/mMenu06_05PwChk";
	}
}
