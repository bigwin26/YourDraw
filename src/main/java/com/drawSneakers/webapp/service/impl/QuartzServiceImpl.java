package com.drawSneakers.webapp.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.drawSneakers.webapp.dao.ShoesDao;
import com.drawSneakers.webapp.entity.Shoes;
import com.drawSneakers.webapp.service.QuartzService;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;


@Service("QuartzService")
public class QuartzServiceImpl implements QuartzService {
	@Autowired
	ShoesDao shoesdao;
	//변수선언

	@Override
	public void sendFCM(){
		final String apiKey = "AAAAztp4xvQ:APA91bEE2bmkG_UOZtg68pz1wM3MrbZfxN18pLUjQkzk_iOxIid2u-glS805SzvA0SdCig5JFCXrvC62_pIAD5aKdEbg7wzkvcQiKxGB1iqbxtEPD5humKzmrrLfVUT2O5XTCsC2TQtM";
		try {
			URL url = new URL("https://fcm.googleapis.com/fcm/send");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setRequestProperty("Authorization", "key=" + apiKey);
			conn.setDoOutput(true);

			// 이렇게 보내면 주제를 ALL로 지정해놓은 모든 사람들한테 알림을 날려준다. data와 notification을 같이 보낼경우 앱에서 백그라운드로 data를 받아올수없다.
			//String input = "{\"notification\" : {\"title\" : \"Your Draw! \", \"body\" : \"잠시후 잠실에서 횽주횽의 이지부스트가 없어집니다!\"}, \"to\":\"/topics/ALL\"}";
			String input = "{\"data\" : {\"title\":\"Your Draw!\",\"content\":\"잠시후 나이키 코리아에서 드로우가 시작됩니다!\",\"drawSite\":\"나이키 코리아\"}, \"to\":\"/topics/ALL\"}";
			//String input = "{\"notification\" : {\"title\" : \"Your Draw! \", \"body\" : \"FCM DATA보내기 테스트!\"},\"data\" : {\"title\":\"Your Draw!\",\"content\":\"잠시후 드로우가 시작됩니다!\",\"drawSite\":\"나이키 코리아\"}, \"to\":\"/topics/ALL\"}";
			OutputStream os = conn.getOutputStream();

			// 서버에서 날려서 한글 깨지는 사람은 아래처럼  UTF-8로 인코딩해서 날려주자
			os.write(input.getBytes("UTF-8"));
			os.flush();
			os.close();

			int responseCode = conn.getResponseCode();
			System.out.println("\nSending 'POST' request to URL : " + url);
			System.out.println("Post parameters : " + input);
			System.out.println("Response Code : " + responseCode);

			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			// print result
			System.out.println(response.toString());
		}
		catch(MalformedURLException e) {
			System.out.println(e);

		}
		catch(IOException e) {
			System.out.println(e);
		}
	}

	@Override
	public void sendFCMtest(){
		final String apiKey = "AAAAztp4xvQ:APA91bEE2bmkG_UOZtg68pz1wM3MrbZfxN18pLUjQkzk_iOxIid2u-glS805SzvA0SdCig5JFCXrvC62_pIAD5aKdEbg7wzkvcQiKxGB1iqbxtEPD5humKzmrrLfVUT2O5XTCsC2TQtM";
		List<Shoes> shoesList = shoesdao.shoesInfo();
		//launched가 N인 리스트만 출력하는 쿼리 생성
		//N일경우 남은시간 출력
		//시간별로 FCM전송 후 마지막 3차전송(5분남음) 후 UPDATE => launched = Y
		
		System.out.println("hi");
		if(shoesList.contains("N")) {
			System.out.println(shoesList.get(0).getLaunched());
		}
		for(int i=0; i<shoesList.size(); i++) {
			String launchedYN = shoesList.get(i).getLaunched();
			
			
		}
	}
	
	public static String StringReplace(String str){ 
		String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]"; 
		str = str.replaceAll(match, " "); 					//특수문자 제거
		str = str.replaceAll(" ", "");	  					//공백제거
		if(str.length()>12) {
		str = str.substring(0,12);				//초 제거
		}
		System.out.println(str);
		return str;
	}
	
	public static int getYMD(String str){ 
		str = str.substring(0, 8);
		int i = Integer.parseInt(str);
		return i;
	}
	
	public static int getHM(String str){ 
		str = str.substring(8, 12);
		int i = Integer.parseInt(str);
		return i;
	}
	
	@Override
	public void sendKakao(){
		OkHttpClient client = new OkHttpClient();
		RequestBody body = RequestBody.create(null, new byte[]{});
		Request request = new Request.Builder()
		  .url("https://kapi.kakao.com/v2/api/talk/memo/default/send?template_object={\"object_type\":\"text\",\"text\":\"에러가 발생했습니다. 에러내용은 차명건입니다.\",\"link\":{\"web_url\": \"https://developers.kakao.com\",\"mobile_web_url\":\"https://developers.kakao.com\"},\"button_title\":\"바로확인\"}")
		  .post(body)
		  .addHeader("Content-Type", "application/x-www-form-urlencoded")
		  .addHeader("Connection", "keep-alive")
		  .addHeader("Authorization", "Bearer vhlCNbDtQbocth9XC-5I1J0gjD2PywF9azH2dQopyNkAAAFsQRRiyA")
		  .addHeader("User-Agent", "PostmanRuntime/7.15.2")
		  .addHeader("Accept", "*/*")
		  .addHeader("Cache-Control", "no-cache")
		  .addHeader("Postman-Token", "7acfe00f-885b-4fc4-bb03-901230c37ab6,f5eb5c38-f79e-4a6c-8f53-32449fec6514")
		  .addHeader("Host", "kapi.kakao.com")
		  .addHeader("Accept-Encoding", "gzip, deflate")
		  .addHeader("Content-Length", "")
		  .addHeader("cache-control", "no-cache")
		  .build();
		
		
		try {
			Response response = client.newCall(request).execute();
			System.out.println(response.body().string());
			response.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
