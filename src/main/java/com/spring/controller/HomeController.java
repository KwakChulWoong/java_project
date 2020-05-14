package com.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.domain.ItemVO;
import com.spring.domain.TestVO;
import com.spring.service.ItemService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	@Autowired
	private ItemService service;
	
	@GetMapping("/")
	public String home(Locale locale, Model model) {
		return "index";
	}
	
	@GetMapping("/login/test01")
	public void PoppularItem(Model model) {
		List<TestVO> vo = new ArrayList<TestVO>();
		vo=service.itemno();
		
		
//		for(int i=0;i<100;i++) {
//			vo.replaceAll("\\","//");
//		}
			
			
		log.info("vo" + vo);
		model.addAttribute("vo", vo);
	}
	
	//회사소개으로 창 연결
	@GetMapping("/company")
	public String company() {
		return "company";
	}

	
}