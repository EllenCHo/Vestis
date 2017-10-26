package com.vestis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vestis.service.CogellService;
import com.vestis.service.MarketService;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.MarketVo;
import com.vestis.vo.PageVo;
import com.vestis.vo.UserVo;

@Controller
public class MainController {
	
	@Autowired
	private CogellService cogellService;
	private MarketService marketService;
	
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
		System.out.println("clothRankList:" + clothRankList.toString());
		
		/*최근가입자리스트*/
		List<UserVo> joinRankList=cogellService.joinrank();
		System.out.println("joinRankList:" + joinRankList.toString());
		
		
		
		/*중고장터
		int currNo = 1;

		PageVo pageVo2 = marketService.getPage2(currNo);
		List<MarketVo> marketList = marketService.getlist2(currNo, pageVo2);

		for (int i = 0; i < marketList.size(); i++) {
			marketList.get(i).setSavename(marketService.image(marketList.get(i).getCloth_no()));
		}
		System.out.println("marketList:" + marketList.toString());*/

		
		model.addAttribute("redateList", redateList);
		model.addAttribute("hitList", hitList);
		model.addAttribute("randomList", randomList);
		model.addAttribute("clothRankList", clothRankList);
		model.addAttribute("joinRankList", joinRankList);
		/*model.addAttribute("marketList", marketList);*/
		
		
		return "index";
	}
}

