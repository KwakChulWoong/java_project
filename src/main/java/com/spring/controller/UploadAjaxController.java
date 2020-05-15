package com.spring.controller;

import java.io.File;
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
import org.springframework.http.MediaType;
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

@Slf4j
@Controller
public class UploadAjaxController {
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		log.info("uploadAjax 요청");
	}
	
	@PostMapping(value="/uploadAjax",produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileDTO>> uploadPost(MultipartFile[] uploadFile) {
		log.info("upload 요청 ");

		String uploadFolder = "d:\\rental";
		String uploadFileName=null;
		
		String uploadFolderPath = getFolder();
		File uploadPath = new File(uploadFolder,uploadFolderPath);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		List<AttachFileDTO> attachList = new ArrayList<AttachFileDTO>();			
		
		for(MultipartFile multipartFile : uploadFile) {
			uploadFileName = multipartFile.getOriginalFilename();
			
			//IE 브라우저에서 파일 경로 가지고 오는것 잘라내기
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString()+"_"+uploadFileName;		
		
			AttachFileDTO attach = new AttachFileDTO();
			attach.setFileName(multipartFile.getOriginalFilename());
			attach.setUploadPath(uploadFolderPath);
			attach.setUuid(uuid.toString());				
			
			Path pathFile = Paths.get(uploadPath.getPath(),uploadFileName);	
			try {				
				
				multipartFile.transferTo(pathFile);
				
				//if(checkImageType(pathFile.toFile())) {
				//	attach.setFileType(true);	
					//이미지 파일인 경우 썸네일로 한번 더 저장하기
				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));					
				Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail,100,100);
				thumbnail.close();		
				//}				
				attachList.add(attach);				
			} catch (IllegalStateException e) {			
				e.printStackTrace();
			} catch (IOException e) {			
				e.printStackTrace();
			}			
		}
		return new ResponseEntity<List<AttachFileDTO>>(attachList,HttpStatus.OK);
	}
	
	//파일 삭제하기
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName,String type){
		log.info("파일 삭제 : "+fileName+" type "+type);
		
		File file = null;
		
		try {
			file = new File("d:\\rental\\"+URLDecoder.decode(fileName, "utf-8"));
			//썸네일과 일반파일 삭제
			file.delete();
			
			//if(type.equals("image")) {
				//이미지인 경우 원본 파일 삭제
				String oriName = file.getAbsolutePath().replace("s_", "");
				file = new File(oriName);
				file.delete();
			//}
		} catch (UnsupportedEncodingException e) {			
			e.printStackTrace();
		}
		return new ResponseEntity<String>("deleted",HttpStatus.OK);
	}
	
	
	
	//썸네일 이미지
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName){
		log.info("썸네일 요청");
		
		File f = new File("d:\\rental\\"+fileName);
		
		ResponseEntity<byte[]> result=null;
		
		HttpHeaders header = new HttpHeaders();
		
		try {
			header.add("Content-Type", Files.probeContentType(f.toPath()));
			result = new ResponseEntity<byte[]>
			(FileCopyUtils.copyToByteArray(f),header,HttpStatus.OK);
		} catch (IOException e) {			
			e.printStackTrace();
		}
		return result;
	}
	
	//첨부파일 다운로드
	@GetMapping("/download")
	@ResponseBody
	public ResponseEntity<Resource> download(String fileName,@RequestHeader("user-Agent")String userAgent){
		log.info("파일 다운로드 "+fileName);
		
		Resource resource = new FileSystemResource("d:\\rental\\"+fileName);
		
		if(!resource.exists()) {
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		
		String resourceUidName = resource.getFilename();
		String resourceName = 
				resourceUidName.substring(resourceUidName.indexOf("_")+1);
		
		HttpHeaders headers = new HttpHeaders();
		
		String downloadName = null;
		
		if(userAgent.contains("Trident") || userAgent.contains("Edge")) {
			try {
				downloadName = URLEncoder.encode(resourceName,"utf-8").replaceAll("\\+"," ");				
			} catch (UnsupportedEncodingException e) {				
				e.printStackTrace();
			}
		}else {
			try {
				downloadName = new String(resourceName.getBytes("utf-8"),"ISO-8859-1");
			} catch (UnsupportedEncodingException e) {				
				e.printStackTrace();
			}
		}
		headers.add("Content-Disposition", "attachment;filename="+downloadName);
		
		return new ResponseEntity<Resource>(resource,headers,HttpStatus.OK);
	}	
	
	
	
	//첨부된 파일이 이미지인지 아닌지 확인
	private boolean checkImageType(File f) {			
		MimetypesFileTypeMap m = new MimetypesFileTypeMap();
		m.addMimeTypes("image png jpg jpeg gif");	
		return m.getContentType(f).contains("image");		
		
//		try {
//			String contentType = Files.probeContentType(f.toPath());
//			return contentType.startsWith("image");
//		} catch (IOException e) {			
//			e.printStackTrace();
//		}
//		return false;
	}
	
	//폴더 생성
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
}

