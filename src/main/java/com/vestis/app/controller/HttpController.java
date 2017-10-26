package com.vestis.app.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.repository.UserDao;
import com.vestis.service.FileUploadService;
import com.vestis.service.MyRoomService;
import com.vestis.service.UserService;
import com.vestis.vo.ClothListVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiCoVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.JSONResult;
import com.vestis.vo.UserVo;

@Controller
@RequestMapping("/app")
public class HttpController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private MyRoomService myRoomService;
	
	@Autowired
	private FileUploadService fileUploadService;


	@ResponseBody
	@RequestMapping(value="/login")
	public JSONUserVo login(@RequestParam("email") String email,
					@RequestParam("password") String password,HttpSession session) {
		System.out.println("안드로이드 작동");
		System.out.println(email);
		
		System.out.println(password);
		
		UserVo authUser=userService.check(email,password);
		String dbname=userDao.image(authUser.getProfile_no());
		authUser.setProfileDBName(dbname);
		JSONUserVo jsonuser=new JSONUserVo();
		System.out.println("마지막단계");
		System.out.println(authUser);
		jsonuser.setResult("succeess");
		jsonuser.setData(authUser);
		return jsonuser;
	}
	
	@ResponseBody
	@RequestMapping(value = "/clothList")
	public JSONClothListVo clothList(@RequestParam("type") int type, @RequestParam("userNo") int userNo) {
		System.out.println(type+""+userNo);
		List<ClothListVo> list = myRoomService.getClothList(type, userNo);
		Collections.reverse(list);
		System.out.println(list);
		JSONClothListVo jsonclothlist=new JSONClothListVo();
		jsonclothlist.setResult("succeess");
		jsonclothlist.setData(list);
		return jsonclothlist;
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/upload", method = RequestMethod.POST)
	public String upload(@RequestParam("file") MultipartFile file 
						/*,@RequestParam("valh") String valh,	@PathVariable("userNo") String userNo*/) {
		System.out.println("upload 들어옴");
		/*System.out.println(valh);	//옷 타입 번호
		System.out.println(userNo);*/
		/*System.out.println("valh: "+valh);
		System.out.println("userNo :"+userNo);*/
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println("upload 나감");
		//이미지 저장 함수 imgDB
		int imgNo=fileUploadService.restore(file);
		String imgNum=Integer.toString(imgNo);
		//System.out.println(imgNo);	//이미지 번호 
		//cloth DB 저장
		//fileUploadService.add(valh, userNo, imgNo);
		return imgNum;	
		
	}
	
	@ResponseBody
	@RequestMapping(value="/upload2")
	public String upload2(@RequestParam("valh") String valh,@RequestParam("userNo") String userNo,
							@RequestParam("imgNum") String imgNo) {
		System.out.println("upload2 들어옴");
		System.out.println("valh :"+valh);
		System.out.println("userNo :"+userNo);
		System.out.println("imgNo :"+imgNo);
		String imgnn=imgNo.replace("\"","");
		System.out.println(imgnn);
		int type=Integer.parseInt(valh);
		int User=Integer.parseInt(userNo);
		int img=Integer.parseInt(imgnn);
		
		//System.out.println(imgNo);	//이미지 번호 
		//cloth DB 저장
		fileUploadService.add(type, User,img);
		return "succes";		
	}
	
	@ResponseBody
	@RequestMapping(value = "/codibookList")
	public JSONCodiListVo getCodibookList(@RequestParam("purpose") String purpose, @RequestParam("num") int num,
			@RequestParam("no") int no) {
		System.out.println("안드로이드 작동 codibookList");
		List<CodibookVo> list = myRoomService.getList(purpose, num, no);
		for(int i=0;i<list.size();i++) {
			String wear=myRoomService.getWearImage(list.get(i).getNo());
			list.get(i).setWear(wear);
		}
		
		//Collections.reverse(list);
		JSONCodiListVo jsonclothlist=new JSONCodiListVo();
		System.out.println("안드로이드 마감");
		jsonclothlist.setResult("succeess");
		jsonclothlist.setData(list);
		return jsonclothlist;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/myroom")
	public JSONCodiListVo myroom(@RequestParam("no") int no) {
		System.out.println(no);
		System.out.println("myroom 들어옴");
		List<CodibookVo> list= myRoomService.getCodiThree(no);
		Collections.reverse(list);
		JSONCodiListVo jsonclothlist=new JSONCodiListVo();
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getOtherNicname());
		}
		System.out.println("myroom 마감");
		jsonclothlist.setResult("succeess");
		jsonclothlist.setData(list);
		return jsonclothlist;
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/commentList")
	public JSONCommentVo commentList(@RequestParam("no") int no) {
		System.out.println("commentList" + no);
		List<CodiCoVo> commentlist=myRoomService.getCommentList(no);
		Collections.reverse(commentlist);
		JSONCommentVo jsonclothlist=new JSONCommentVo();
		System.out.println("COMMENT 마감");
		jsonclothlist.setResult("succeess");
		jsonclothlist.setData(commentlist);
		return jsonclothlist;
	}
	
	@ResponseBody
	@RequestMapping(value = "/likeClick")
	public String likebtnClick(@RequestParam("voNo") int voNo, @RequestParam("authNo") int authNo) {
		System.out.println("like");
		myRoomService.likebtnClick(voNo, authNo);
		System.out.println("like finish");
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value = "/chooseClick")
	public String chooseClick(@RequestParam("no") int no) {
		System.out.println("채택버튼 클릭");
		myRoomService.chooseClick(no, 14, 1);
		System.out.println("채택 finish");
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value = "/codibookset")
	public JSONCodiBookVo codibookset(@RequestParam("codiNo") int codiNo,int personNo) {
		System.out.println("클릭");
		CodibookVo codibook=myRoomService.codibookset(codiNo,personNo);
		System.out.println("채택 finish");
		JSONCodiBookVo jsonclothlist=new JSONCodiBookVo();
		System.out.println("COMMENT 마감");
		jsonclothlist.setResult("succeess");
		jsonclothlist.setData(codibook);
		return jsonclothlist;
	}
	

		// 추상클래스 상속(자료형만 지정)
		private class JSONUserVo extends JSONResult<UserVo> {
		}
		private class JSONCodiBookVo extends JSONResult<CodibookVo> {
		}
		// 추상클래스 상속(자료형만 지정)
		private class JSONClothListVo extends JSONResult<List<ClothListVo>> {
		}
		
		// 추상클래스 상속(자료형만 지정)
		private class JSONCodiListVo extends JSONResult<List<CodibookVo>> {
		}
		
		// 추상클래스 상속(자료형만 지정)
		private class JSONCommentVo extends JSONResult<List<CodiCoVo>> {
		}
		
		
		
		
}
