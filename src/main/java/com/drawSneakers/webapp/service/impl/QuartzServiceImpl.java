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
import com.drawSneakers.webapp.entity.ShoesView;
import com.drawSneakers.webapp.service.QuartzService;


@Service("QuartzService")
public class QuartzServiceImpl implements QuartzService {
	@Autowired
	ShoesDao shoesdao;
	//변수선언
	private String launchedSite="";
	private String shoesName="";
	
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

			// 이렇게 보내면 주제를 ALL로 지정해놓은 모든 사람들한테 알림을 날려준다.
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
	public void sendFCMtest() {
		System.out.println("test 진행중");
		List<ShoesView> shoesList = shoesdao.shoesInfo();
		if(shoesList.size()>0) {
			if(shoesList.size()==1) {
				launchedSite = shoesList.get(0).getLaunched_site();
			} else {
				
			}
		} else {
			System.out.println("예정된 드로우가 없습니다.");
		}
	}
}
