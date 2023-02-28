package com.team01.webapp.home.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team01.webapp.home.service.IHomeService;
import com.team01.webapp.model.Donut;
import com.team01.webapp.model.Notice;
import com.team01.webapp.model.SR;
import com.team01.webapp.model.SystemInfo;
import com.team01.webapp.notice.service.INoticeService;
import com.team01.webapp.util.Pager;

import lombok.extern.log4j.Log4j2;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j2
public class HomeController {
	
	@Autowired
	IHomeService homeService;
	
	@Autowired
	INoticeService noticeService;
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Pager pager, Notice notice, Model model) {
		log.info("정보 로그 실행");
		
		return "user/loginForm";
		
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomeGrid(HttpSession session, Pager pager, Notice notice, Model model) {
		// 공지사항 메인 페이징 처리
		int pageNo = 1;
		notice.setNtcTtl("");
		notice.setStartDate("");
		notice.setEndDate("");
		notice.setSysNo("KOREASOFT_SRM");
		
		pager = noticeService.returnPage(pageNo,pager,notice);
		
		List<Notice> noticeList = noticeService.getNoticeListAjax(pager,notice);
		log.info(pager);
		model.addAttribute("noticeList",noticeList);
		log.info(noticeList);
		
		// Q n A 페이징 처리
		
		
		
		return "home";
	}
	
	@RequestMapping(value = "/home/systemMiniView", method = RequestMethod.GET)
	public String getSystemMiniView(HttpSession session, Model model) {
		int userNo = (int) session.getAttribute("userNo");
		String userType = (String) session.getAttribute("userType");
		List<SystemInfo> system = null;
		List<Donut> donutList = null;
		
		if(userType.equals("고객사")) {
			system = homeService.getSystemMiniView(userNo);
			model.addAttribute("system", system);
			donutList = homeService.getDonutList(system.get(0).getSysNo());
		} else {
			system = homeService.getSystemMiniViewDetail(userNo);
			model.addAttribute("system", system);
			donutList = homeService.getDonutList(system.get(0).getSysNo());
		}
		
		model.addAttribute("donutList", donutList);
		
		return "home/systemMiniView";
	}
	
	@RequestMapping(value="/homeMiniView", produces="application/json; charset=UTF-8")
	public String homeMiniView(@RequestBody SR sr, HttpSession session, Model model, Pager pager) {
		int userNo = (int) session.getAttribute("userNo");
		sr.setSrCustNo(userNo);
		String userType = (String) session.getAttribute("userType");
		sr.setUserType(userType);
		List<SystemInfo> system = null;
		
		if(userType.equals("고객사")) {
			system = homeService.getSystemMiniView(userNo);
		} else {
			system = homeService.getSystemMiniViewDetail(userNo);
		}
		sr.setSysNo(system.get(0).getSysNo());
		
		pager = homeService.returnPage(sr.getPageNo(), pager, sr);
		
		List<SR> srList = homeService.homeList(pager, sr);
		
		model.addAttribute("srList", srList);
		model.addAttribute("pager", pager);
		model.addAttribute("sttsNo", sr.getSttsNo());
		
		return "home/homeMiniView";
	}
}
