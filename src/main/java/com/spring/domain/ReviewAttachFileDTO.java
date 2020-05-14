package com.spring.domain;

import lombok.Data;

//업로드된 파일의 정보를 담는 객체
@Data
public class ReviewAttachFileDTO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private int reviewno;
}
