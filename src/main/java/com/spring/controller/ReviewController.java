package com.spring.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.activation.MimetypesFileTypeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.ReviewVO;
import com.spring.service.ReviewService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/review/*")
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	
	@GetMapping("/reviewregister")
	public void reviewRead() {
		log.info("리뷰작성");
	}
	@PostMapping("/reviewregister")
	public String itemPost(ReviewVO vo,RedirectAttributes rttr){		
		log.info("리뷰 등록하기 "+vo);
		
		if(vo.getAttachList()!=null) {
			vo.getAttachList().forEach(attach -> log.info(""+attach));
		}	
		
		try {
			if(service.ItemReviewRegister(vo)) {
				//rttr.addFlashAttribute("result", vo.getBno());
				return "redirect:list";
			}
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return "redirect:/detail";
	}
}








