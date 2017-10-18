package com.vestis.service;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.repository.FileUploadDao;
import com.vestis.vo.ImgVo;

import marvin.image.MarvinImage;
import marvin.io.MarvinImageIO;

import static marvin.MarvinPluginCollection.alphaBoundary;
import static marvin.MarvinPluginCollection.boundaryFill;

@Service
public class FileUploadService {
	@Autowired
	private FileUploadDao uploadDao;
	
	public int restore(MultipartFile file) {
		ImgVo imgVo=new ImgVo();
		
		
		//파일저장할 위치
		String saveDir="D:\\javaStudy\\file\\";
		
		//원 파일이름 찾기
		String orgName=file.getOriginalFilename();
		System.out.println("orgName: "+orgName);
		imgVo.setName(orgName);
		
		//확장자찾기
		String exName=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName: "+exName);
		imgVo.setType(exName);
		
		
		//파일사이즈 찾기
		long fileSize=file.getSize();
		System.out.println("fileSize: "+fileSize);
		imgVo.setSizes(fileSize);
		
		//유니크한 저장파일이름 만들기
		String saveName= System.currentTimeMillis()+UUID.randomUUID().toString()+exName;
		System.out.println("saveName: "+saveName);		
		imgVo.setDbName(saveName);
		
		//파일패스=저장되있는 위치
		String filePath=saveDir+saveName;
		System.out.println("filePath: "+filePath);
		imgVo.setAddress(filePath);
		
		
		//배경을 제거한 후에 저장
		try {
			System.out.println("marvin 배경제거로 들어옴");
			BufferedImage bfImg = ImageIO.read(file.getInputStream());
			System.out.println(bfImg);
			MarvinImage image = new MarvinImage(bfImg);
			//MarvinImage image = MarvinImageIO.loadImage("D:/javastudy/workspace/marvin/images/123.jpg");
			boundaryFill(image.clone(), image, 0, 0, Color.white, 150);
			image.setAlphaByColor(0, 0xFFFFFFFF);
			alphaBoundary(image, 5);
			MarvinImageIO.saveImage(image, "D:\\javaStudy\\file\\test.png");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		System.out.println("테스트중");
		int imgNo=uploadDao.upload(imgVo);
		
		//파일복사 파일패스에 실체가 저장되어 있어야지
		try {
			byte[] fileDate=file.getBytes();
			OutputStream out=new FileOutputStream(filePath);
			BufferedOutputStream bout=new BufferedOutputStream(out);
			
			bout.write(fileDate);
			bout.flush();
			if(bout != null) {
				bout.close();
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return imgNo;
		
	}
	
	public void add(int valh,int huserNo,int imgNo) {
		uploadDao.add(valh,huserNo, imgNo);
	}
	
	
	//옷 타입과 사용자 번호로 옷리스트를 가져오는 함수
	public List<ImgVo> list(int clothNo, int userNo) {//보내줄 조건 없고 리스트로 받아
		return uploadDao.getImglist(clothNo, userNo);
	}
}
