package com.vestis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vestis.repository.UserDao;
import com.vestis.service.CenterService;
import com.vestis.service.CogellService;
import com.vestis.service.MarketService;
import com.vestis.vo.CenterVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.MarketVo;
import com.vestis.vo.PageVo;
import com.vestis.vo.UserVo;

@Controller
public class MainController {
	
	@Autowired
	private CogellService cogellService;
	
	@Autowired
	private MarketService marketService;
	
	@Autowired
	private CenterService centerService;
	
	@Autowired
	private UserDao userDao;
	
	
	@RequestMapping("/main")
	public String main(Model model) {
		
		int no = 0;
		
		/*최신코디세트*/
		List<CodibookVo> redateList = cogellService.getList(no);
		/*System.out.println("redateList:" + redateList.toString());*/
		
		/*인기코디세트*/
		List<CodibookVo> hitList = cogellService.getList2(no);
		/*System.out.println("hitList:" + hitList.toString());*/
		
		/*랜덤코디세트*/
		List<CodibookVo> randomList = cogellService.getList3(no);
		/*System.out.println("hitList:" + randomList.toString());*/
		
		/*옷많은사용자리스트*/
		List<UserVo> clothRankList=cogellService.clothrank();
		for(int i=0;i<clothRankList.size();i++) {
			String savename=userDao.image(clothRankList.get(i).getProfile_no());
			clothRankList.get(i).setSavename(savename);
		}
		System.out.println("joinRankList:" + clothRankList.toString());
		

		/*최근가입자리스트*/
		List<UserVo> joinRankList=cogellService.joinrank();
		for(int i=0;i<joinRankList.size();i++) {
			String savename=userDao.image(joinRankList.get(i).getProfile_no());
			joinRankList.get(i).setSavename(savename);
		}
		System.out.println("clothRankList:" + joinRankList.toString());
		
		/*공지사항*/
		List<CenterVo> noticeList = centerService.getList();
		/*System.out.println("noticeList:" + noticeList.toString());*/
		
		/*마켓 중고장터*/
		int currNo = 1;

		PageVo pageVo2 = marketService.getPage2(currNo);
		List<MarketVo> marketList = marketService.getlist2(currNo, pageVo2);

		for (int i = 0; i < marketList.size(); i++) {
			marketList.get(i).setSavename(marketService.image(marketList.get(i).getCloth_no()));
		}
		/*System.out.println("marketList:" + marketList.toString());*/

		
		model.addAttribute("redateList", redateList);
		model.addAttribute("hitList", hitList);
		model.addAttribute("randomList", randomList);
		model.addAttribute("marketList", marketList);
		
		model.addAttribute("clothRankList", clothRankList);
		model.addAttribute("joinRankList", joinRankList);
		model.addAttribute("noticeList", noticeList);
		
		
		
		return "index";
	}
}

