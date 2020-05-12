package com.spring.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.activation.MimetypesFileTypeMap;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.domain.AttachFileDTO;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Slf4j
public class uploadAjaxController {
	@GetMapping("/uploadAjax")
	public String uploadAjax() {
		//uploadAjax.jsp 보여주기
		log.info("uploadAjax 요청");
		return "uploadAjax";
	}
	
	@PostMapping("/uploadAjax")
	@ResponseBody
	public ResponseEntity<List<AttachFileDTO>> uploadPost(MultipartFile[] uploadFile) {
		String uploadFolder = "d:\\upload";
		String uploadFileName = null;
		String uploadFolderPath = getFolder();
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		List<AttachFileDTO> attachList = new ArrayList<AttachFileDTO>();
		
		
		
		for(MultipartFile multipartFile : uploadFile) {
			log.info("upload 요청 "+multipartFile.getOriginalFilename());
			log.info("upload 파일 크기"+multipartFile.getSize());
		
			uploadFileName = multipartFile.getOriginalFilename();
			
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString()+"_"+uploadFileName;
			
			AttachFileDTO attach = new AttachFileDTO();
			attach.setFileName(multipartFile.getOriginalFilename());
			attach.setUploadPath(uploadFolderPath);
			attach.setUuid(uuid.toString());
			
			
//			File saveFile = new File(uploadPath, uploadFileName);
			Path pathFile = Paths.get(uploadPath.getPath(), uploadFileName);
			
			try {
				multipartFile.transferTo(pathFile);
				if(checkImageType(pathFile.toFile())) {
					attach.setFileType(true);
					//이미지 파일인 경우 썸네일로 한번 더 저장하기
					
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_"+uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					
					thumbnail.close();
					
				}
				attachList.add(attach);
			} catch (IllegalStateException e) {
	
				e.printStackTrace();
			} catch (IOException e) {
	
				e.printStackTrace();
			}
		}
		return new ResponseEntity<List<AttachFileDTO>>(attachList, HttpStatus.OK);
	}

	
	//파일 삭제하기
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type){
		log.info("파일 삭제 : "+fileName);
		
		File file = null;
		
		try {
			String file_p = "d:\\upload\\"+URLDecoder.decode(fileName, "utf-8");
			file = new File(file_p);
			//썸네일과 일반파일 삭제
			System.out.println(file_p);
			file.delete();
			System.out.println(type);
			if(type.equals("image")) {
				//이미지인 경우 원본파일 삭제
				String oriName = file.getAbsolutePath().replace("s_", "");
				file = new File(oriName);
				file.delete();
			}
			
			
			
		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();
		}
		
		
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	//썸네일 이미지
	@ResponseBody
	@GetMapping("/display")
	public ResponseEntity<byte[]> getFile(String fileName){
		
		log.info("썸네일 요청"+"d:\\upload\\"+fileName);
		
		File f = new File("d:\\upload\\"+fileName);
		
		ResponseEntity<byte[]> result = null;
		
		HttpHeaders header = new HttpHeaders();
		
		try {
			header.add("Content-Type", Files.probeContentType(f.toPath()));
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f), header, HttpStatus.OK);
		} catch (IOException e) {

			e.printStackTrace();
		}
		return result;
		
		
	}
	
	
	
	//첨부파일 다운로드
	@GetMapping("/download")
	@ResponseBody
	public ResponseEntity<Resource> download(String fileName, @RequestHeader("user-Agent") String userAgent){
		log.info("파일 다운로드"+fileName);
		
		Resource resource = new FileSystemResource("d:\\upload\\"+fileName);
		
		if(!resource.exists()) {
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		
		String resourceUidName = resource.getFilename();
		String resourceName = resourceUidName.substring(resourceUidName.indexOf("_")+1);
		
		HttpHeaders headers = new HttpHeaders();
		
		String downloadName = null;
		
		if(userAgent.contains("Trident") || userAgent.contains("Edge")) {
			try {
				downloadName = URLEncoder.encode(resourceName, "utf-8").replaceAll("\\+", " ");
			} catch (UnsupportedEncodingException e) {

				e.printStackTrace();
			}
		}else {
			try {
				downloadName = new String(resourceName.getBytes("utf-8"), "ISO-8859-1");
			} catch (UnsupportedEncodingException e) {

				e.printStackTrace();
			}
		}
		headers.add("Content-Disposition", "attachment;filename="+downloadName);
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
		
		
	}
	
	
	
	
	
	
	
	
	//첨부된 파일이 이미지 인지 아닌지 확인
	private boolean checkImageType(File f) {
		try {
			
//			String contentType = Files.probeContentType(f.toPath());
			
			MimetypesFileTypeMap m = new MimetypesFileTypeMap();
			m.addMimeTypes("image png jpg jpeg gif");
			return m.getContentType(f).contains("image");
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		return false;
	}
	
	//폴더 생성
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);		
	}
	
	

	
	
	
	
	
}
