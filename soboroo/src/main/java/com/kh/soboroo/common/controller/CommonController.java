package com.kh.soboroo.common.controller;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.soboroo.common.model.service.CommonServiceImpl;

@Controller
public class CommonController {
	
	@Autowired
	private CommonServiceImpl cService;
	
	
	
	@ResponseBody
	@RequestMapping("insertImg.co")
	   public ResponseEntity<?> insertNewsImg(@RequestParam("file") MultipartFile multi, HttpServletRequest request, HttpSession session) {
		String changeName = "";
	      String finalName = "";
	      if(!multi.getOriginalFilename().equals("")) {
	         String originName = multi.getOriginalFilename();
	         
	         // 년월일시분초
	         String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	         
	         //랜덤 숫자 5자리
	         int ranNum = (int)(Math.random()*90000+10000);
	         
	         // 확장자
	         String ext = originName.substring(originName.lastIndexOf("."));
	         
	         changeName = currentTime+ranNum+ext; 
	         
	         String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
	         
	         finalName = "/resources/uploadFiles/"+changeName;
	         
	         // upload table insert
	         
	         HashMap<String, String> map = new HashMap<String, String>();
	         map.put("originName", originName);
	         map.put("changeName", finalName);
	        
	         
	         int result = cService.insertUpload(map);
	         // currval 세션에 담기
	         int uploadNo = cService.selectUploadNo();
	         session.setAttribute("uploadNo", uploadNo);
	         
	         System.out.println(finalName);
	         
	         try {
				multi.transferTo(new File(savePath, changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	      
	      }
	      return ResponseEntity.ok().body("resources/uploadFiles/"+changeName);

	      
	   }
}
