package com.spring.controller;


import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.service.KakaoService;
import com.spring.service.RegisterService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {
	
	@Autowired
	private KakaoService kakao;
	@Autowired
	private RegisterService service;
	

// 	---------------------------- 회원가입 관련 ------------------------------
	
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
	public String step3(@ModelAttribute("vo")RegisterVO vo) {
		//step2.jsp 에서 회원가입정보 가져오기
		log.info("vo" + vo);
		//password와 confirm_password 값이 다르게
		//입력되었다면 step2로 보내기
		//같다면 step3으로 이동
		if(vo.isPasswordEqualToConfirmPassword()) {
			//회원가입
			if(service.registMember(vo)) {
				return "/register/step3";
				
			}else {
				return "/register/step2";
			}
		}else {
			return "/register/step2";
		}
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
	
	//중복아이디 검사
	@ResponseBody
	@PostMapping("/checkId")
	public String checkId(String userid) {
		log.info("중복 아이디 검사 "+userid);
		
		if(service.dupId(userid)!=null) {
			log.info("널 아님");
			return "false";
		}else {
			log.info("널");
			return "true";
		}
	}

// -------------------------- 로그인 관련 -------------------------------------
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping("/login")
	public String loginPost(LoginVO vo,HttpSession session) {
		
		AuthInfo info = service.loginMember(vo);
		
		if(info!=null) {
			session.setAttribute("info", info);
			return "redirect:/";
		}else {
			return "redirect:/login";
		}
	}
	
	//로그아웃 처리
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//세션 해제 후 index 페이지로 이동
//		log.info("로그아웃 요청");
		session.removeAttribute("info");
		return "redirect:/";
	}
}