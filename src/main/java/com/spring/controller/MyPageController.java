package com.spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.service.BoardService;



@Controller
public class MyPageController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/mypage")
	public void mypage(Model model) {
		
		try {
			
			model.addAttribute("list", service.getList());
//			model.addAttribute("pageVO", new PageVO(cri, service.totalRows(cri)));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	@GetMapping("/modify/ChangePWD")
	public void changePWD() {
	}
	
	
}