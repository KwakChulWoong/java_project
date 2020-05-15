package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemPageVO;
import com.spring.domain.ItemVO;
import com.spring.domain.ReviewVO;
import com.spring.service.ItemService;
import com.spring.service.ReviewService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/item/*")
public class ItemController {
	
	@Autowired
	private ItemService service;
	@Autowired
	private ReviewService review;
	
	@GetMapping("/register")
	public void itemGet(){		
		log.info("아이템 등록 페이지");
	}
	
	@PostMapping("/register")
	public String itemPost(ItemVO vo,RedirectAttributes rttr){		
		log.info("아이템 등록하기 "+vo);
		
		if(vo.getAttachList()!=null) {
			vo.getAttachList().forEach(attach -> log.info(""+attach));
		}	
		
		try {
			if(service.ItemRegister(vo)) {
				rttr.addFlashAttribute("result", vo.getItemno());
				return "redirect:/mypage";
			}
		} catch (Exception e) {			
			e.printStackTrace();
		}


		return "redirect:/item/register";

	}
//	
//	@GetMapping({"/read","/modify"})
//	public void readGet(@RequestParam("bno") int bno,@ModelAttribute("cri") Criteria cri,Model model){		
//		log.info("게시글 보여주기 "+bno);
//		//넘어오는 bno를 받아서 
//		//bno에 해당하는 게시물 db 처리 후
//		//Model에 담아 read.jsp로 넘기기
//		try {
//			BoardVO vo=service.readList(bno);
//			model.addAttribute("vo", vo);
//		} catch (Exception e) {			
//			e.printStackTrace();
//		}		
//	}
	
//	//첨부물 가져오기
//	@GetMapping("/getAttachList")
//	public ResponseEntity<List<AttachFileDTO>> getAttachList(int bno){
//		log.info(bno + "첨부물 가져오기");
//		return new ResponseEntity<List<AttachFileDTO>>
//			(service.getAttachList(bno),HttpStatus.OK);
//	}
	
	@GetMapping({"/read","/modify"})
	public void readGet(@RequestParam("bno") int bno,@ModelAttribute("cri") Criteria cri,Model model){		
		log.info("게시글 보여주기 "+bno);
		//넘어오는 bno를 받아서 
		//bno에 해당하는 게시물 db 처리 후
		//Model에 담아 read.jsp로 넘기기
		try {
			BoardVO vo=service.readList(bno);
			model.addAttribute("vo", vo);
		} catch (Exception e) {			
			e.printStackTrace();
		}		
	}
	
	
	@GetMapping("/detail")
	public void listGet(int itemno ,Model model){		
		log.info("리뷰 목록 보여주기 "+itemno);
		try {			
			ItemVO vo = service.detail(itemno);
			model.addAttribute("vo",vo);
			log.info("vo : "+vo);
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}
	@ResponseBody
	@PostMapping("/detail/getreviewphoto")
	public ResponseEntity<List<ReviewVO>> itemDetail(int itemno,Model model){
		log.info("상품상세페이지에 리뷰");
		List<ReviewVO> list=null;
		
		try {
			list=review.getReview(itemno);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return new ResponseEntity<List<ReviewVO>>(list,HttpStatus.OK);
		
	}

	
	@GetMapping("/item/rent")
	public String rent(@ModelAttribute("cri")ItemCriteria cri,Model model) {
		log.info("대여 리스트 추출"+cri.getCategory());
		
		try {
			
			List<ItemVO> list=service.getItemList(cri);			
			model.addAttribute("list",list);
			
			for(ItemVO vo:list) {
				vo.getAttachList().forEach(action ->{
					if(action!=null)
						action.setUploadPath(action.getUploadPath().replaceAll("\\\\", "/"));
				});
				log.info("----"+vo);
			}
			model.addAttribute("pageVO",new ItemPageVO(cri, service.totalItemRows(cri)));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/item/rent";
	}
	
	
	//이미지
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName){
		log.info("이미지 요청 "+fileName);
		
		File f = new File("d:\\rental\\"+fileName);
		
		ResponseEntity<byte[]> result=null;
		
		HttpHeaders header = new HttpHeaders();
		
		try {
			header.add("Content-Type", Files.probeContentType(f.toPath()));
			log.info("이미지 "+f.toPath());
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f),header,HttpStatus.OK);
		} catch (IOException e) {			
			e.printStackTrace();
		}
		return result;
	}
	
	@GetMapping("/display_detail")
	@ResponseBody
	public ResponseEntity<byte[]> getFile_detail(AttachFileDTO dto){
		log.info("이미지 요청 "+dto);
		AttachFileDTO file_dto=null;
		ResponseEntity<byte[]> result=null;
		try {
			file_dto = service.get_detail_img(dto);
			File f = new File("d:\\rental\\"+file_dto.getUploadPath()+"\\"+file_dto.getUuid()+"_"+file_dto.getFileName());
			
			
			
			HttpHeaders header = new HttpHeaders();
			
			try {
				header.add("Content-Type", Files.probeContentType(f.toPath()));
				log.info("이미지 "+f.toPath());
				result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f),header,HttpStatus.OK);
			} catch (IOException e) {			
				e.printStackTrace();
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}	
		
		return result;
	}
}

