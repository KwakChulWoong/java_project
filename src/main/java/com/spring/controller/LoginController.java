package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	
	@GetMapping("/register/step0")
	public void step0() {
		
	}
	
	@GetMapping("/register/step1")
	public void step1(){
		
	}
	
	@PostMapping("/register/step2")
	public String step2(@RequestParam(value="agree",defaultValue="false")boolean agree,RedirectAttributes rttr) {
		//step1에서 사용자의 약관동의 여부 확인 
		
		//약관동의가 false인경우 step1 페이지 보여주기
		if(!agree) {
			rttr.addFlashAttribute("check","false");
			return "redirect:/register/step1";
		}
		//약관동의가 true인경우 step2페이지 보여주기
		return "/register/step2";
	}
	
	@PostMapping("/register/step3")
	public void step3() {
		
	}
}