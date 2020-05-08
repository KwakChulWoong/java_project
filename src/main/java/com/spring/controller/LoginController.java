package com.spring.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/login";
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