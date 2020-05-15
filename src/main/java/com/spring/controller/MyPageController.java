package com.spring.controller;


import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthInfo;
import com.spring.domain.Criteria;
import com.spring.domain.ItemVO;
import com.spring.domain.LoginVO;
import com.spring.domain.PageVO;
import com.spring.domain.RegisterVO;
import com.spring.domain.changePwdVO;
import com.spring.service.BoardService;
import com.spring.service.EmailService;
import com.spring.service.ItemService;
import com.spring.service.MemberSha256;
import com.spring.service.RegisterService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class MyPageController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private ItemService itemservice;
	
	@Autowired
	private RegisterService regservice;
	
	@Autowired
	private EmailService email;
	
	
	//mypage로 이동
	@GetMapping("/mypage")
	public void mypage(Model model, @ModelAttribute("cri")Criteria cri,HttpSession session) {
		log.info("mypage 요청");
		log.info("info"+session.getAttribute("info"));
		try {
			AuthInfo info = (AuthInfo) session.getAttribute("info");
			log.info("2번째 info"+info);
			
			List<ItemVO> list = itemservice.getList(cri,info.getUserid());
			log.info("3번쨰");
			model.addAttribute("list", list);
			log.info("3번쨰");
			//model.addAttribute("pageVO", new PageVO(cri, itemservice.mypagetotalRows(cri)));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	//비밀번호 변경 폼 보여주기
	@GetMapping("/modify/changePwd")
	public void changePwd() {
		//changePwd.jsp 보여주기
		log.info("비밀번호 변경 창 불러오기");
//		return "modify/changePwd";
	}
	
	
	//비밀번호 변경 내용 가져오기
	@PostMapping("/modify/changePwd")       // 세션 속성에 있는 info 를 가져옴
	public String changePwdPost(@SessionAttribute("info") AuthInfo info, changePwdVO vo,HttpSession session, RedirectAttributes rttr) {
		
		//changePwd.jsp에서 내용가져오기
		log.info("비밀번호 변경창 불러오기"+vo);

		//AuthInfo info = (AuthInfo)session.getAttribute("info"); 원래 이거로도 하는데 @SessionAttribute 어노테이션 이용해서 할거임
		
		vo.setUserid(info.getUserid());
		
		//db에서 현재 아이디와 비밀번호가 일치하면
		LoginVO login = new LoginVO();
		login.setUserid(vo.getUserid());
		String crypwd = MemberSha256.encrypt(vo.getCurrent_password());
		
		login.setCurrent_password(crypwd);
		log.info("비밀번호1");
		
		if(regservice.loginMember(login)!=null) {
			//비밀번호 변경해주기
			//비밀번호 변경 성공하면 세션 해제하고 인덱스 페이지로 이동
			log.info("비밀번호2");
			if(vo.newPasswordEqualsConfirm()) {
				vo.setNew_password(MemberSha256.encrypt(vo.getNew_password()));
				vo.setConfirm_password(MemberSha256.encrypt(vo.getConfirm_password()));
				if(regservice.changeMember(vo)) {
					
					
					rttr.addFlashAttribute("success", "회원정보가 성공적으로 바꼈습니다");
					session.removeAttribute("info");				
				}
				return "redirect:/";
			}else{
			rttr.addFlashAttribute("error","비밀번호가 일치하지 않습니다.");
		}		
	}else{
		rttr.addFlashAttribute("error","비밀버호가 일치하지 않습니다.");
	}
	//비밀번호 변경 실패시 changePwd 보여주기		
	return "redirect:/changePwd";
	}
	@PostMapping("/find/findPwd")
	public void findPassword(String userid) {
		log.info("鍮꾨�踰덊샇 李얘린"+userid);
		
		RegisterVO vo=regservice.getUser(userid);
		if (vo!=null) {
			//�엫�떆 鍮꾨�踰덊샇 諛쒓툒
			String newPass=tempPass();
			//�엫�떆 鍮꾨�踰덊샇濡� 鍮꾨�踰덊샇 蹂�寃�
			if (regservice.updateUser(userid, newPass)) {
				//�씠硫붿씪濡� �쟾�넚�빐二쇨린
				email.sendEmail(newPass, vo.getEmail(), vo.getName());
				//�썝�븯�뒗 怨녹쑝濡� �씠�룞
			}
		}else {
			//�궗�슜�옄媛� �븘�씠�뵒瑜� �옒紐� �엯�젰�븯�뿬 �씠硫붿씪 �쟾�넚�쓣 �븷 �닔 �뾾�뒗 寃쎌슦
			//媛��빞�븷 怨�
		}
	}
	
	@GetMapping("/find/findPwd")
	public void findPwdForm() {
		log.info("鍮꾨�踰덊샇 李얘린");
	}
	
	public String tempPass() {
		UUID uuid=UUID.randomUUID();
		return uuid.toString().substring(0,10);
	}
	
	@GetMapping("/modify/memberEdit")
	public void memberEdit() {
		
	}
	
	@PostMapping("/modify/memberEdit")
	public String memberEditPost(RegisterVO vo,@SessionAttribute AuthInfo info,HttpSession session,RedirectAttributes rttr,Model model) {
		
		vo.setUserid(info.getUserid());				
		log.info("회원수정1");
		//db에서 현재 아이디와 비밀번호가 일치하면
		LoginVO login = new LoginVO();
		login.setUserid(vo.getUserid());
		log.info("회원수정 vo"+vo);
		String encry = MemberSha256.encrypt(vo.getPasswdconfirm());
		login.setCurrent_password(encry);
		log.info("회원수정2");
		if(regservice.loginMember(login)!=null) {

			if(regservice.updateMember(vo)) {
				rttr.addFlashAttribute("success", "회원정보가 성공적으로 변경되었습니다.");
				session.removeAttribute("info");				
			}
			return "redirect:/";
		}else {
			rttr.addFlashAttribute("error", "비밀번호가 일치하지 않습니다.");
		}
		return "redirect:/mypage";
	}
	
	
}