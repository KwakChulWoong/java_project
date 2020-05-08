package com.spring.controller;


import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.service.KakaoService;

@Controller
public class LoginController {
	
	@Autowired
	private KakaoService kakao;
	
	
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
	
	@GetMapping("/register/kakaologin")
	public void kakaologin(@RequestParam("code") String code,HttpSession session) {
        String access_Token = kakao.getAccessToken(code);
        System.out.println("controller access_token : " + access_Token);
		
        HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
        System.out.println("login Controller : " + userInfo);
        String nickname = (String) userInfo.get("nickname");
        if (userInfo.get("email") != null) {
            session.setAttribute("userId", userInfo.get("email"));
            session.setAttribute("access_Token", access_Token);
        }
        session.setAttribute("nickname", nickname);
			
	}
}