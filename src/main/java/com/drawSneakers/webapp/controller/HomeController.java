package com.drawSneakers.webapp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.drawSneakers.webapp.entity.Shoes;
import com.drawSneakers.webapp.service.ShoesService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private ShoesService shoesService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {
		List<Shoes> shoesList = shoesService.shoesInfo();
		model.addAttribute("shoesList", shoesList);
		return "index";
	}
	@RequestMapping(value = "/ouath", method = RequestMethod.GET)
	public String kakao(Model model) {
		return "ouath";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String kakaologin(Model model) {
		return "login";
	}
}
