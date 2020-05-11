package com.spring.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.LoginVO;
import com.spring.service.RegisterService;

@Controller
public class SignOutController {
	
	@Autowired
	private RegisterService service;
	
	
	@GetMapping("/signout/signout")
	public String home(Locale locale, Model model) {
		return "/signout/signout";
	}
	
	@PostMapping("/signout/signout")
	public String leavePost(LoginVO vo,HttpSession session) {
	
		if(service.leaveMember(vo)) {
			session.removeAttribute("info");
			//탈퇴성공하면 index 페이지로 이동
			return "redirect:/";
		}else {
			return "redirect:/signout/signout";
		}
	}
}