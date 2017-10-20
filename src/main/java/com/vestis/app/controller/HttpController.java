package com.vestis.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vestis.repository.UserDao;
import com.vestis.service.MyRoomService;
import com.vestis.service.UserService;
import com.vestis.vo.ClothListVo;
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
		System.out.println(list);
		JSONClothListVo jsonclothlist=new JSONClothListVo();
		jsonclothlist.setResult("succeess");
		jsonclothlist.setData(list);
		return jsonclothlist;
	}

		// 추상클래스 상속(자료형만 지정)
		private class JSONUserVo extends JSONResult<UserVo> {
		}
		// 추상클래스 상속(자료형만 지정)
		private class JSONClothListVo extends JSONResult<List<ClothListVo>> {
		}
		
		
}
