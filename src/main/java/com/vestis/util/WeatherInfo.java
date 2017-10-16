package com.vestis.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class WeatherInfo {
	//type 0 : today, 1 : tomorrow
	public static WeatherVo setting(int type, double lat, double lon) {
		WeatherVo weatherVo = new WeatherVo();
		try {
			String address = "http://apis.skplanetx.com/weather/summary?version=1&lat=" + lat + "&lon=" + lon
					+ "&appKey=41e1162f-7a4b-3add-8f1b-0a60e13c0a98";
			BufferedReader br;
			String protocol = "GET";
			HttpURLConnection conn;
			URL url = new URL(address);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod(protocol);
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String json;
			json = br.readLine();
			System.out.println("============================================================================================================");
	        JSONParser parser=new JSONParser();
	        JSONObject objs=(JSONObject)parser.parse(json);
	         //System.out.println(objs);
	        JSONObject weathers=(JSONObject)objs.get("weather");      
	         //System.out.println(weathers);
	        JSONArray summarys=(JSONArray)weathers.get("summary");
	         //System.out.println(hourlys);
	        JSONObject summary=(JSONObject)summarys.get(0);
	         //System.out.println(hours);
	        if(type == 0) {
		        JSONObject today=(JSONObject)summary.get("today");
		         //System.out.println(today);
		        JSONObject todaysky=(JSONObject)today.get("sky");
		        System.out.println(todaysky);
		        String todaycode=(String)todaysky.get("code");
		        System.out.println(todaycode);
		        JSONObject todayTemp=(JSONObject)today.get("temperature");
		        System.out.println(todayTemp);
		        String todayTmax=(String)todayTemp.get("tmax");
		        System.out.println(todayTmax);
		        
		        weatherVo.setSkyCode(todaycode);
		        weatherVo.setTemperature(todayTmax);
	        } else {
	        	JSONObject tomorrow=(JSONObject)summary.get("tomorrow");
		         //System.out.println(today);
		        JSONObject tomorrowsky=(JSONObject)tomorrow.get("sky");
		        System.out.println(tomorrowsky);
		        String tomorrowcode=(String)tomorrowsky.get("code");
		        System.out.println(tomorrowcode);
		        JSONObject tomorrowTemp=(JSONObject)tomorrow.get("temperature");
		        System.out.println(tomorrowTemp);
		        String tomorrowTmax=(String)tomorrowTemp.get("tmax");
		        System.out.println(tomorrowTmax);
		        
		        weatherVo.setSkyCode(tomorrowcode);
		        weatherVo.setTemperature(tomorrowTmax);
	        }
			/*weatherVo.setTemperature(temp);
			weatherVo.setHumidity(humidity);
			weatherVo.setSkyName(skyName);
			weatherVo.setSkyCode(skyCode);*/
			System.out.println(
					"============================================================================================================");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return weatherVo;
	}

}
