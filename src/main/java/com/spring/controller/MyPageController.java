package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MyPageController {
	
	@GetMapping("/mypage")
	public String home() {
		return "mypage";
	}
	@GetMapping("/modify/ChangePWD")
	public void changePWD() {
	}
}