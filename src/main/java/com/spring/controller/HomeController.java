package com.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemPageVO;
import com.spring.domain.ItemVO;
import com.spring.service.ItemService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	@Autowired
	private ItemService service;
	
	@GetMapping("/")
	public String home(Model model) {
		
		log.info("인덱스 대여 리스트 추출");
		
		ItemCriteria itemcri = new ItemCriteria();	
		
		try {
			
			List<ItemVO> list=service.getItemList(itemcri);			
			model.addAttribute("list",list);
			
			for(ItemVO vo:list) {
				vo.getAttachList().forEach(action ->{
					if(action!=null)
						action.setUploadPath(action.getUploadPath().replaceAll("\\\\", "/"));
				});
				log.info("----"+vo);
			}
			model.addAttribute("pageVO",new ItemPageVO(itemcri, service.totalItemRows(itemcri)));
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		return "index";
	}
	
	@GetMapping("/login/test01")
	public void PoppularItem(Model model) {
		List<ItemVO> vo = new ArrayList<ItemVO>();
		vo=service.popularItem();
		log.info("vo" + vo);
		model.addAttribute("vo", vo);
	}
	
	@GetMapping("/company")
	public String company() {
		return "company";
	}

	
}