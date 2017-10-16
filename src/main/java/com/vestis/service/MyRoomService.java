package com.vestis.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.repository.MyRoomDao;
import com.vestis.util.WeatherInfo;
import com.vestis.util.WeatherVo;
import com.vestis.vo.ClothListVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiCoVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.UserVo;

@Service
public class MyRoomService {
	@Autowired
	MyRoomDao myRoomDao;
	
	public void SaveCodi(String[] choice, int temp, int weatherNo, int userNo, int authNo, String filename, long fileSize) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());

		ClothWeatherVo clothWeatherVo = new ClothWeatherVo(weatherNo, temp);
		int weatherSaveNo = myRoomDao.addWeather(clothWeatherVo);
		int weatherchsNo = myRoomDao.addWeather(clothWeatherVo);

		ImgVo imgVo = new ImgVo("D:\\javastudy\\file\\", filename, ".png", fileSize, filename+".png");
		int imgNo = myRoomDao.addImg(imgVo);		

		CodiVo codiVo = new CodiVo(authNo, userNo, 1, imgNo, 0, date, weatherSaveNo, date, weatherchsNo);
		int codiNo = myRoomDao.addCodi(codiVo);
		
		for(int i=0; i<choice.length; i++) {
			int no = Integer.parseInt(choice[i]);
			myRoomDao.addCodiCloth(codiNo, no);
			myRoomDao.addCalData(no, weatherSaveNo, date);
		}

	}
	
	public ClothWeatherVo getWeather(int type, UserVo authUser) {
		WeatherVo weatherVo = WeatherInfo.setting(type, authUser.getLat(), authUser.getLon());
		String code = weatherVo.getSkyCode();
		code = code.substring(code.length() - 2, code.length());
		int weatherNo = Integer.parseInt(code);
		int indexNo;
		if (weatherNo == 1 || weatherNo == 2) {
			indexNo = 0;
		} else if (weatherNo == 3 || weatherNo == 7 || weatherNo == 11) {
			indexNo = 1;
		} else if (weatherNo == 5 || weatherNo == 9 || weatherNo == 13) {
			indexNo = 3;
		} else {
			indexNo = 2;
		}
		
		int temp = Integer.parseInt(weatherVo.getTemperature().substring(0, 2));
		
		ClothWeatherVo clothWeatherVo = new ClothWeatherVo();
		clothWeatherVo.setTemp(temp);
		clothWeatherVo.setWeatherNo(indexNo);
		
		return clothWeatherVo;
	}
	
	public List<CodibookVo> getList(String purpose, int num, int no) {
		return myRoomDao.getList(purpose, num, no);
	}
	
	public void chooseClick(int no, int temp, int weatherNo) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());
		
		int choiceWeather = myRoomDao.getWeather(no);
		System.out.println(choiceWeather);
		myRoomDao.setChoiceWeather(choiceWeather, temp, weatherNo);
		System.out.println("채택 날씨 저장 완료");
		myRoomDao.chooseClick(no);
		
		List<Integer> list = myRoomDao.getCodiNo(no);
		System.out.println(list.size());
		
		for(int i=0; i<list.size(); i++) {
			myRoomDao.setCount(list.get(i));
			myRoomDao.addCalData(list.get(i), choiceWeather, date);
		}
	}
	
	public void likebtnClick(int voNo, int authNo) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());
		
		myRoomDao.likebtnClick(voNo, authNo, date);
	}
	
	public void deleteBtnClick(int no) {
		System.out.println("삭제버튼2");
		myRoomDao.deleteBtnClick(no);
	}
	
	public List<ClothListVo> getClothList(int type, int userNo) {
		System.out.println("옷 들어옴");
		return myRoomDao.getClothList(type, userNo);
	}
	
	public CodiCoVo addComment(int no, int userNo, String content) {
		System.out.println("댓글 Vo");
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());
		
		CodiCoVo codiCo = new CodiCoVo();
		codiCo.setCodiNo(no);
		codiCo.setPersonNo(userNo);
		codiCo.setContent(content);
		codiCo.setRegDate(date);
		
		int commentNo = myRoomDao.addComment(codiCo);
		
		return myRoomDao.getComment(commentNo);
	}

	public List<CodiCoVo> getCommentList(int no) {
		return myRoomDao.getCommentList(no);
	}
	
	public void saveWearImg(MultipartFile file, int no) {
		String orgName = file.getOriginalFilename(); // 원래 이름을 따로 저장
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")); // 파일 확장자 따로
																											// 저장
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName; // 랜덤으로 해도 파일이 많으면 겹칠수 있으니
																								// 앞에 시간과 같이 저장해서 완전한
																								// 랜덤으로 저장
																								// 파일 확장자는 따로 뺀것을 붙여서 저장
		long fileSize = file.getSize(); // 파일 사이즈 저장, byte라서 long으로 받음

		String url = "D:\\javaStudy\\file\\";

		System.out.println(orgName);
		System.out.println(exName);
		System.out.println(saveName);
		System.out.println(fileSize);
		System.out.println(url);
		
		String filePath = url + saveName;
		try {

			byte[] fileData = file.getBytes(); // size가 아니고 실제데이터 그림의 배열같은거
			System.out.println("fileData: " + fileData);
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		

		ImgVo imgVo = new ImgVo(url, orgName, exName, fileSize, saveName);
		int imgNo = myRoomDao.saveWearImg(imgVo);
		myRoomDao.changeSaveImg(no, imgNo);
	}
	
	public void removeComment(int no) {
		myRoomDao.removeComment(no);
	}
	
	public String getWearImage(int no) {
		String str =  myRoomDao.getWearImage(no);
		return str;
	}
	
	public List<CodibookVo> getCodiThree(int no) {
		return myRoomDao.getCodiThree(no);
	}
	
	//유저의 위치정보 알아내는 것
	public UserVo getUserLL(int no) {
		return myRoomDao.getUserLL(no);
	}
	
	public List<ImgVo> getDayCloth(int userNo, int temp, int indexNo) {
		List<ImgVo> clothList = new ArrayList<ImgVo>();
		//2 : top, 3:bottom, 4:shoes
		ImgVo top = myRoomDao.getDayCloth(userNo, 2, temp, indexNo);
		clothList.add(top);
		ImgVo bottom = myRoomDao.getDayCloth(userNo, 3, temp, indexNo);
		clothList.add(bottom);
		ImgVo shoes = myRoomDao.getDayCloth(userNo, 4, temp, indexNo);
		clothList.add(shoes);
		
		return clothList;
	}
	
	public String getTodaySystemCodi(int no) {
		return myRoomDao.getTodaySystemCodi(no);
	}
	
	public String getYesSystemCodi(int no) {
		return myRoomDao.getYesSystemCodi(no);
	}
}