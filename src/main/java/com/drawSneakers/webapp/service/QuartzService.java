package com.drawSneakers.webapp.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.text.ParseException;

public interface QuartzService {
	void sendFCM(String content,String siteURL);
	void sendFCMtest();
	void sendKakao() throws MalformedURLException, IOException;
}
