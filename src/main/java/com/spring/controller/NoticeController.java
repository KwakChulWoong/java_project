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

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private BoardService service;	
	
	@GetMapping("/list")
	public void listGet(@ModelAttribute("cri") Criteria cri,Model model){		
		log.info("게시글 목록 보여주기 "+cri);
		try {			
			//model.addAttribute("list", service.listAll(cri));
			//model.addAttribute("pageVO",new PageVO(cri, service.totalRows(cri)));
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}	
}








