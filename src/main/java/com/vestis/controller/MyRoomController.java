package com.vestis.controller;

import java.io.FileOutputStream;
import java.net.URLDecoder;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.service.FileUploadService;
import com.vestis.service.MyRoomService;
import com.vestis.vo.ClothListVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiCoVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.UserVo;

@Controller
@RequestMapping("/myroom")
public class MyRoomController {

	@Autowired
	MyRoomService myRoomService;
	@Autowired
	private FileUploadService fileUploadService;
	
	@RequestMapping(value = "/{userNo}")
	public String main(@PathVariable("userNo") int userNo, Model model) {
		String[] weather = { "sunny", "cloudy", "rainy", "snow" };
		
		UserVo userVo = myRoomService.getUserLL(userNo);
		
		String ysDbName = myRoomService.getYesSystemCodi(userNo);
		model.addAttribute("yesterImg", ysDbName);
		//내일 날씨
		ClothWeatherVo clothToWeatherVo = myRoomService.getWeather(1, userVo);
		
		String ToTemp = clothToWeatherVo.getTemp() + "°C";
		int ToIndexNo = clothToWeatherVo.getWeatherNo();
		/*String ToTemp = 20 + "°C";
		int ToIndexNo = 1;*/
		System.out.println(ToTemp);
		System.out.println(weather[ToIndexNo]);
		
		//db에서 날씨에 맞게 옷을 가져오기
		
		//db에서 옷을 뽑아와서 배열에 저장
		List<ImgVo> ToclothImg = myRoomService.getDayCloth(userNo, 20, ToIndexNo);
		model.addAttribute("tomorrowCloth", ToclothImg);
		
		model.addAttribute("tomorrowTemp", ToTemp);
		model.addAttribute("tomorrowWeather", weather[ToIndexNo]);
		//내일 날씨 끝
		
		//오늘 날씨
		//오눌 날씨에 대한 코디 테이블이 있는지 검사 -> 있으면 그걸을 화면에 뿌려짐
		String dbName = myRoomService.getTodaySystemCodi(userNo);
		System.out.println(dbName);
		if(dbName != null) {
			model.addAttribute("todayImg", dbName);
			
		} else {
			System.out.println("오늘 시스템 코디 추천");
			//오늘 날씨에 대한 코디 테이블이 없을 때 날씨를 받아와서 그에 맞는 옷을 가져옴
			//오늘 날씨 가져오기
			ClothWeatherVo clothWeatherVo = myRoomService.getWeather(0, userVo);
			
			String temp = clothWeatherVo.getTemp() + "°C";
			int indexNo = clothWeatherVo.getWeatherNo();
			
			//db에서 날씨에 맞게 옷을 가져오기
			//온도랑 날씨, index 넘기기
			List<ImgVo> clothImg = myRoomService.getDayCloth(userNo, 20, indexNo);
			System.out.println(clothImg.toString());
			model.addAttribute("todayCloth", clothImg);
			
			model.addAttribute("todayTemp", temp);
			model.addAttribute("todayWeather", weather[indexNo]);
			model.addAttribute("todayWeatherNo", indexNo);		
		}

		model.addAttribute("userNo", userNo);
		return "/myroom/main";
	}

	@RequestMapping(value = "/codi/{userNo}")
	public String codi(@PathVariable("userNo") int userNo, Model model, HttpSession session) {
		// String weather;
		String[] weather = { "sunny", "cloudy", "rainy", "snow" };

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int authNo = authUser.getNo();

		System.out.println(authNo);

		// 자신의 페이지에서 코디할 경우 지금의 날씨를 알려줌
		if (userNo == authNo) {
			ClothWeatherVo clothWeatherVo = myRoomService.getWeather(0, authUser);
			
			String temp = clothWeatherVo.getTemp() + "°C";
			int indexNo = clothWeatherVo.getWeatherNo();
			System.out.println(temp);
			System.out.println(weather[indexNo]);
			model.addAttribute("temp", temp);
			model.addAttribute("weather", weather[indexNo]);
			model.addAttribute("weatherNo", indexNo);
			model.addAttribute("userNo", userNo);

		} else {
			// 다른 사람이 옷을 코디할때
			Random random = new Random();
			int temp = random.nextInt(61) - 20;
			int ran = random.nextInt(4);

			System.out.println(temp);
			if (ran == 3 && temp >= 0) {
				ran = 2;
			}
			System.out.println(weather[ran]);
			String temperature = temp + "°C";

			model.addAttribute("temp", temperature);
			model.addAttribute("weather", weather[ran]);
			model.addAttribute("weatherNo", ran);
			model.addAttribute("userNo", userNo);
		}
		return "/myroom/codi";
	}

	@ResponseBody
	@RequestMapping(value = "/clothList", method = RequestMethod.POST)
	public List<ClothListVo> clothList(@RequestParam("type") int type, @RequestParam("userNo") int userNo) {
		System.out.println(type+""+userNo);
		List<ClothListVo> list = myRoomService.getClothList(type, userNo);
		return list;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/save/{userNo}", method = RequestMethod.POST)
	public String save(@RequestParam("data") String binaryData, @RequestParam("choice") String[] choice,
			@RequestParam("weather") String weather, @RequestParam("temp") String temper,
			@PathVariable("userNo") int userNo, @RequestParam("authNo") int authNo, Model model, HttpSession session) throws Exception {
		System.out.println("save 들어옴");

		temper = temper.substring(0, temper.length() - 2);
		int temp = Integer.parseInt(temper);
		System.out.println(temp);
		int weatherNo = Integer.parseInt(weather);
		System.out.println(weatherNo);
		/*UserVo authUser = (UserVo) session.getAttribute("authUser");
		int authNo = authUser.getNo();*/
		System.out.println(authNo);
		binaryData = URLDecoder.decode(binaryData, "UTF-8");

		FileOutputStream stream = null;

		for (int i = 0; i < choice.length; i++) {
			System.out.println(choice[i]);
		}

		try {
			// System.out.println(binaryData);
			if (binaryData == null || binaryData == "") {
				throw new Exception();
			}
			binaryData = binaryData.replaceAll("data=data:image/png;base64,", "");
			byte[] file = Base64.decodeBase64(binaryData);

			System.out.println("file :::::::: " + file + " || " + file.length);
			String fileName = System.currentTimeMillis() + UUID.randomUUID().toString();
			stream = new FileOutputStream("D:\\javastudy\\file\\" + fileName + ".png");
			stream.write(file);
			stream.close();
			System.out.println(fileName + ".png 파일 작성 완료");

			myRoomService.SaveCodi(choice, temp, weatherNo, userNo, authNo, fileName, file.length);
		} catch (Exception e) {
			System.out.println("파일이 정상적으로 넘어오지 않았습니다");
		} finally {
			stream.close();
		}

		model.addAttribute("userNo", userNo);
		return "success";
	}

	@RequestMapping(value = "/codibook/{userNo}")
	public String codibook(@PathVariable("userNo") int userNo, Model model) {
		model.addAttribute("userNo", userNo);
		return "/myroom/codibook";
	}
	
	@ResponseBody
	@RequestMapping(value ="/codibookList", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookList(@RequestParam("purpose") String purpose, @RequestParam("num") int num, @RequestParam("no") int no) {
		List<CodibookVo> list = myRoomService.getList(purpose, num, no);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value ="/chooseClick", method=RequestMethod.POST)
	public String chooseClick(@RequestParam("no") int no, HttpSession session) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		ClothWeatherVo clothWeatherVo = myRoomService.getWeather(0, authUser);
		System.out.println("채택버튼 클릭");
		myRoomService.chooseClick(no, clothWeatherVo.getTemp(), clothWeatherVo.getWeatherNo());		
		return "success";
	}

	@ResponseBody
	@RequestMapping(value ="/likeClick", method=RequestMethod.POST)
	public String likebtnClick(@RequestParam("voNo") int voNo, @RequestParam("authNo") int authNo) {
		myRoomService.likebtnClick(voNo, authNo);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value ="/deleteBtnClick", method=RequestMethod.POST)
	public String deleteBtnClick(@RequestParam("no") int no) {
		System.out.println("삭제버튼1");
		myRoomService.deleteBtnClick(no);
		return "seccess";
	}
	
	@ResponseBody
	@RequestMapping(value = "/codibookSave", method = RequestMethod.POST)
	public String codibookSave(@RequestParam("wearImg") MultipartFile file, @RequestParam("no") int no) {
		System.out.println(file.toString());
		System.out.println(file.getOriginalFilename());
		System.out.println(no);
		myRoomService.saveWearImg(file, no);
		return "success";
	}

	@RequestMapping(value="/clothes/{userNo}")
	public String clothes(Model model, @PathVariable("userNo") int userNo) {
		List<ImgVo> list1= fileUploadService.list();
		System.out.println(list1.toString());
		System.out.println(list1);
		model.addAttribute("list",list1);
		model.addAttribute("userNo", userNo);
		return "/myroom/clothes";
	}

	@RequestMapping(value="/form")
	public String form() {
		return "myroom/form";
	}
	
	@RequestMapping(value="/upload")
	public String upload(@RequestParam("file") MultipartFile file, Model model, @RequestParam("valh") String valh, @RequestParam("huserNo") int huserNo) {
		
		System.out.println(valh);	//옷 타입 번호
		String imgNo=fileUploadService.restore(file);
		
		System.out.println(huserNo);	//올린 사람 번호
		int val=Integer.valueOf(valh);
		System.out.println(imgNo);	//이미지 번호 
		
		int no=Integer.parseInt(imgNo);
		fileUploadService.add(val, huserNo, no);
		
		List<ImgVo> list1= fileUploadService.list();
		model.addAttribute("list",list1);
		
		return "myroom/clothes";
	}
	
	@ResponseBody
	@RequestMapping(value="/get")
	public List<ImgVo> get() {
		List<ImgVo> list= fileUploadService.list();
		System.out.println(list);
		return list;
	}
	
	
	@ResponseBody//리턴값을 컨트롤러로보냄
	@RequestMapping(value="/send")
	public List<ImgVo> send(@RequestParam ("clothNo") int clothNo) {
		List<ImgVo> list=fileUploadService.send(clothNo);
		return list;
	}
	
	@RequestMapping(value="/add")
	public String add() {
		return "/myroom/add";
	}
	
	@ResponseBody
	@RequestMapping(value="/addComment", method=RequestMethod.POST)
	public CodiCoVo addComment(@RequestParam("no") int no, @RequestParam("authNo") int userNo  , @RequestParam("comment") String comment) {
		System.out.println(no+comment+userNo);
		return myRoomService.addComment(no, userNo, comment);
	}
	
	@ResponseBody
	@RequestMapping(value="/commentList", method=RequestMethod.POST)
	public List<CodiCoVo> commentList(@RequestParam("no") int no) {
		return myRoomService.getCommentList(no);
	}
	
	@ResponseBody
	@RequestMapping(value="/removeComment", method=RequestMethod.POST)
	public String removeComment(@RequestParam("no") int no) {
		myRoomService.removeComment(no);
		return "success";
	}

	@ResponseBody
	@RequestMapping(value="/getWearImage", method=RequestMethod.POST)
	public String getWearImage(@RequestParam("no") int no) {
		return myRoomService.getWearImage(no);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/getCodiThree", method=RequestMethod.POST)
	public List<CodibookVo> getCodiThree(@RequestParam("no") int no) {
		return myRoomService.getCodiThree(no);
	}
}

