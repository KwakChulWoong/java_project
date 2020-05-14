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

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemPageVO;
import com.spring.domain.ItemVO;
import com.spring.domain.PageVO;
import com.spring.service.ItemService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/item/*")
public class ItemController {
	
	@Autowired
	private ItemService service;
	
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
		return "redirect:/register";
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
	public void listGet(Model model){		
		log.info("리뷰 목록 보여주기 ");
		try {			
//			model.addAttribute("list", service.getReviewList());
//			model.addAttribute("pageVO",new PageVO(cri, service.totalRows()));
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}
	@GetMapping("/ReviewRegister")
	public void revReg(BoardVO vo) {
		log.info("리뷰작성페이지");
	}
	@GetMapping("/QuestionRegister")
	public void queReg(BoardVO vo) {
		log.info("후기작성페이지");
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
	
//	
//	//modify.jsp에서 modify버튼 클릭시 넘어오는 값 가져오기
//	@PostMapping("/modify")
//	public String modify(BoardVO vo,Criteria cri,RedirectAttributes rttr) {
//		log.info("내용 수정..."+vo);
//		log.info("내용 수정..."+cri);
//		
//		if(vo.getAttachList()!=null) {
//			for(AttachFileDTO dto:vo.getAttachList()) {
//				log.info(dto+"");
//			}
//		}		
//		
//		
//		try {
//			if(service.updateRow(vo)) {
//				log.info("수정성공");
//				rttr.addFlashAttribute("result", "수정 성공");
//				
//				rttr.addAttribute("pageNum", cri.getPageNum());
//				rttr.addAttribute("amount", cri.getAmount());
//				rttr.addAttribute("type", cri.getType());
//				rttr.addAttribute("keyword", cri.getKeyword());
//				return "redirect:list";
//			}else {
//				log.info("수정실패");
//			}
//		} catch (Exception e) {			
//			e.printStackTrace();
//		}
//		return "redirect:modify";
//	}
//	
//	
//	//  /board/remove 처리
//	@PostMapping("/remove")
//	public String removePost(@RequestParam("bno")int bno,Criteria cri,RedirectAttributes rttr) {
//		log.info("remove " + bno);
//		log.info("remove " + cri);
//		
//		//게시물 삭제시 첨부파일 삭제하기(폴더에서)
//		//bno에 해당하는 첨부물 목록 알아내기
//		List<AttachFileDTO> attachList=service.getAttachList(bno);		
//		
//		//삭제처리 후 리스트 보여주기
//		try {
//			if(service.deleteRow(bno)) {
//				
//				deleteFiles(attachList);				
//				
//				//세션에 값을 담는 상태
//				rttr.addFlashAttribute("result", "삭제 성공");
//				
//				//URL에 따라감
//				rttr.addAttribute("pageNum", cri.getPageNum());
//				rttr.addAttribute("amount", cri.getAmount());
//				rttr.addAttribute("type", cri.getType());
//				rttr.addAttribute("keyword", cri.getKeyword());
//				return "redirect:list";
//			}
//		} catch (Exception e) {			
//			e.printStackTrace();
//		}
//		return "redirect:modify";
//	}
//	
//	private void deleteFiles(List<AttachFileDTO> attachList) {
//		log.info("첨부물 삭제");
//		if(attachList == null || attachList.size() <= 0) {
//			return;
//		}
//		
//		for(AttachFileDTO vo : attachList) {
//			Path path = Paths.get("d:\\upload\\",vo.getUploadPath()+"\\"+vo.getUuid()+"_"+vo.getFileName());
//		
//			try {
//				//일반파일, 이미지 원본 파일 삭제
//				Files.deleteIfExists(path);
//				
////				if(Files.probeContentType(path).startsWith("image")) {
////					Path thumb=Paths.get("d:\\upload\\",vo.getUploadPath()+"\\s_"+vo.getUuid()+"_"+vo.getFileName());
////					Files.delete(thumb);
////				}
//				
//				MimetypesFileTypeMap m = new MimetypesFileTypeMap();
//				m.addMimeTypes("image png jpg jpeg gif");	
//				if(m.getContentType(path.toFile()).contains("image")) {
//					Path thumb=Paths.get("d:\\upload\\",vo.getUploadPath()
//							+"\\s_"+vo.getUuid()+"_"+vo.getFileName());
//					Files.delete(thumb);
//				}
//				
//			} catch (IOException e) {				
//				e.printStackTrace();
//			}			
//		}
//	}	
}








