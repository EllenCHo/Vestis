package com.vestis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vestis.repository.UserDao;
import com.vestis.service.CogellService;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.UserVo;

@Controller
@RequestMapping("/cogell")
public class CogellController {
	
	@Autowired
	CogellService cogellService;
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/list")
	public String list(Model model) {
		
		
		System.out.println("cogell start");
		
		System.out.println("cogell start");
		List<UserVo> list=cogellService.joinrank();
		List<UserVo> clist=cogellService.clothrank();
		
		for(int i=0;i<list.size();i++) {
			String savename=userDao.image(list.get(i).getProfile_no());
			list.get(i).setSavename(savename);
		}
		
		for(int i=0;i<clist.size();i++) {
			String savename=userDao.image(clist.get(i).getProfile_no());
			clist.get(i).setSavename(savename);
		}
		System.out.println(list);
		System.out.println(clist);
		model.addAttribute("list",list);
		model.addAttribute("clist",clist);
		return "/cogell/list";
	}
	
	@ResponseBody
	@RequestMapping(value ="/codibookList", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookList(@RequestParam("purpose") String purpose, @RequestParam("no") Integer no) {
		List<CodibookVo> list = null;
		System.out.println("코디갤러리" + no);
		if(no == null) {
			no = 0;
		}
		
		System.out.println("코디갤러리" + no);
		
		if(purpose.equals("regDate")) {
			list = cogellService.getList(no);
		} else if(purpose.equals("hit")) {
			list = cogellService.getList2(no);
		} else {
			list = cogellService.getList3(no);
		}
		
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getOtherNo());
			
		}
		return list;
	}
	
	/*@ResponseBody
	@RequestMapping(value ="/codibookList2", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookList2(@RequestParam("purpose") String purpose, @RequestParam("num") int num, @RequestParam("no") int no) {
		List<CodibookVo> list = cogellService.getList2(purpose, num, no);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getOtherNo());
			
		}
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value ="/codibookList3", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookList3(@RequestParam("purpose") String purpose, @RequestParam("num") int num, @RequestParam("no") int no) {
		List<CodibookVo> list = cogellService.getList3(purpose, num, no);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getOtherNo());
			
		}
		return list;
	}
	*/
/*	
	@ResponseBody
	@RequestMapping(value ="/codibookRList", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookRList(@RequestParam("purpose") String purpose, @RequestParam("num") int num, @RequestParam("no") int no) {
		List<CodibookVo> list = cogellService.getRList(purpose, num, no);
		System.out.println("RANDOM");
		
		return list;
	}*/
	
	/*@ResponseBody
	@RequestMapping(value ="/codibookList4", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookList4(@RequestParam("purpose") String purpose, @RequestParam("num") int num, @RequestParam("no") int no) {
		List<CodibookVo> list = cogellService.getList4(purpose, num, no);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getOtherNo());
			
		}
		return list;
	}*/
	
}
