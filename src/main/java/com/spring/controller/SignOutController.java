package com.spring.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.LoginVO;
import com.spring.service.MemberSha256;
import com.spring.service.RegisterService;

@Controller
public class SignOutController {
	
	@Autowired
	private RegisterService service;
	
	//회원탈퇴 페이지로 이동
	@GetMapping("/signout/signout")
	public String home(Locale locale, Model model) {
		return "/signout/signout";
	}
	
	//회원탈퇴되면 메인화면 아니면 다시 회원탈퇴 페이지로 있게끔
	@PostMapping("/signout/signout")
	public String leavePost(LoginVO vo,HttpSession session) {
		String crypwd = MemberSha256.encrypt(vo.getCurrent_password());
		vo.setCurrent_password(crypwd);
		if(service.leaveMember(vo)) {
			session.removeAttribute("info");
			//탈퇴성공하면 index 페이지로 이동
			return "redirect:/";
		}else {
			return "redirect:/signout/signout";
		}
	}
}