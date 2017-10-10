package com.vestis.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothListVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiCoVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;

@Repository
public class MyRoomDao {
	@Autowired
	SqlSession sqlSession;
	
	public void addCodiCloth(int codiNo, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("codiNo", codiNo);
		map.put("no", no);
		sqlSession.insert("myroom.insertCodiCloth", map);
	}
	
	public int addWeather(ClothWeatherVo clothWeatherVo) {
		sqlSession.insert("myroom.insertWeather", clothWeatherVo);
		return clothWeatherVo.getNo();
	}
	
	public int addImg(ImgVo imgVo) {
		sqlSession.insert("myroom.insertImg", imgVo);
		
		return imgVo.getNo();
	}
	
	public int addCodi(CodiVo codiVo) {
		sqlSession.insert("myroom.insertCodi", codiVo);
		
		return codiVo.getNo();
	}
	
	public List<CodibookVo> getList(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(num+purpose+no);
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		List<CodibookVo> list =sqlSession.selectList("myroom.getCodiBookList", map);
		System.out.println(list.size());
		return sqlSession.selectList("myroom.getCodiBookList", map);
	}
	
	public void chooseClick(int no) {
		sqlSession.update("myroom.chooseClick", no);
	}
	
	public int getWeather(int no) {
		return sqlSession.selectOne("myroom.getWeather", no);
	}
	
	public void setChoiceWeather(int choiceWeather, int temp, int weatherNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("choiceWeather", choiceWeather);	
		map.put("temp", temp);	
		map.put("weatherNo", weatherNo);
		System.out.println("채택 날씨 저장 dao");
		sqlSession.update("myroom.setChoiceWeather", map);
	}
	
	public void likebtnClick(int voNo, int authNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("voNo", voNo);
		map.put("authNo", authNo);
		sqlSession.insert("myroom.likebtnClick", map);
	}
	
	public void deleteBtnClick(int no) {
		System.out.println("삭제버튼3");
		sqlSession.delete("myroom.codiclothDelete",	no);
		sqlSession.delete("myroom.likepersonDelete", no);
		sqlSession.delete("myroom.deleteBtnClick", no);
	}
	
	public List<ClothListVo> getClothList(int type, int userNo){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("userNo", userNo);
		
		return sqlSession.selectList("myroom.getClothList", map);
	}
	
	public int addComment(CodiCoVo codiCo) {
		System.out.println("댓글 저장 dao");
		
		sqlSession.insert("myroom.addComment", codiCo);
		
		return codiCo.getNo();
	}
	
	public CodiCoVo getComment(int no) {
		return sqlSession.selectOne("myroom.getComment", no);
	}
	
	public List<CodiCoVo> getCommentList(int no) {
		return sqlSession.selectList("myroom.getCommentList", no);
	}
	
	public int saveWearImg(ImgVo imgVo) {
		sqlSession.insert("myroom.insertImg", imgVo);
		return imgVo.getNo();
	}
	
	public void changeSaveImg(int no, int imgNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("imgNo", imgNo);
		
		sqlSession.update("myroom.changeSaveImg", map);
	}
	
	public void removeComment(int no) {
		sqlSession.delete("myroom.removeComment", no);
	}
	
	public String getWearImage(int no) {
		return sqlSession.selectOne("myroom.getWearImage", no);
	}
	
	public List<CodibookVo> getCodiThree(int no) {
		return sqlSession.selectList("myroom.getCodiThree", no);
	}
}