package com.spring.task;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

/*
	첨부파일 업로드 폴더의 정보와
	DB 정보의 불일치 부분을 해결
*/
@Slf4j
@Component
public class AttachFileCheckTask {

	//어제 날짜의 폴더 구하기
	private String getFolderYesterDay() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		
		cal.add(Calendar.DATE, -1);
		
		String str = format.format(cal.getTime());
		
		return str.replace("-", File.separator);
	}
	
	@Scheduled(cron="0 * * * * *")
	public void checkFiles() {
		
	}
}









