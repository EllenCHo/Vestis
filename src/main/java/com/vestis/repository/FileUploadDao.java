package com.vestis.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ImgVo;

@Repository
public class FileUploadDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int upload(ImgVo imgVo) {
		System.out.println("파일업로드 dao");
		System.out.println(imgVo);
		sqlSession.insert("img.upload", imgVo);
		return imgVo.getNo();
	}
	
	
	public void add(int valh,int huserNo,int imgNo) {
		
		Map<String, Object> clothMap=new HashMap<String,Object>();
	    clothMap.put("typeNo", valh);
	    clothMap.put("personNo", huserNo);
	    clothMap.put("imgNo", imgNo);
		System.out.println(clothMap);
		sqlSession.insert("img.add", clothMap);
	}
	
	public List<ImgVo> getImglist(int clothNo, int userNo) {
		/*System.out.println("이미지 들어옴");*/
		Map<String, Object> clothMap = new HashMap<String,Object>();
	    clothMap.put("clothNo", clothNo);
	    clothMap.put("userNo", userNo);
	    
	    return sqlSession.selectList("img.getList",clothMap);
	}
	
	public void removeCloth(int no) {
		int clothNo = sqlSession.selectOne("img.getClothNo", no);
		System.out.println(clothNo);
		sqlSession.delete("img.removeClothCal", clothNo);
		sqlSession.delete("img.removeCodiCloth", clothNo);
		sqlSession.delete("img.removeCloth", clothNo);
		sqlSession.delete("img.removeClothImg", no);
	}
}
