package com.webaid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/m/*")
public class MobileController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	
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
