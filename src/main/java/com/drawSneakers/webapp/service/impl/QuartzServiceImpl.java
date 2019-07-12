package com.drawSneakers.webapp.service.impl;

import org.springframework.stereotype.Service;

import com.drawSneakers.webapp.service.QuartzService;


@Service("QuartzService")
public class QuartzServiceImpl implements QuartzService {

	@Override
	public void testJobMethod() {
		System.out.println("test success...");
		
	}
}
