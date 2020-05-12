package com.spring.controller;


import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.Criteria;
import com.spring.domain.RegisterVO;
import com.spring.service.BoardService;
import com.spring.service.EmailService;
import com.spring.service.RegisterService;

import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class MyPageController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private RegisterService regservice;
	
	@Autowired
	private EmailService email;
	
	
	@GetMapping("/mypage")
	public void mypage(Model model, @ModelAttribute("cri") Criteria cri) {
		
		try {
			
			model.addAttribute("list", service.getList(cri));
//			model.addAttribute("pageVO", new PageVO(cri, service.totalRows(cri)));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	@GetMapping("/modify/ChangePWD")
	public void changePWD() {
	}
	
	
	@PostMapping("/find/findPwd")
	public void findPassword(String userid) {
		log.info("비밀번호 찾기"+userid);
		
		RegisterVO vo=regservice.getUser(userid);
		if (vo!=null) {
			//임시 비밀번호 발급
			String newPass=tempPass();
			//임시 비밀번호로 비밀번호 변경
			if (regservice.updateUser(userid, newPass)) {
				//이메일로 전송해주기
				email.sendEmail(newPass, vo.getEmail(), vo.getName());
				//원하는 곳으로 이동
			}
		}else {
			//사용자가 아이디를 잘못 입력하여 이메일 전송을 할 수 없는 경우
			//가야할 곳
		}
	}
	
	@GetMapping("/find/findPwd")
	public void findPwdForm() {
		log.info("비밀번호 찾기");
	}
	
	public String tempPass() {
		UUID uuid=UUID.randomUUID();
		return uuid.toString().substring(0,10);
	}
	
}