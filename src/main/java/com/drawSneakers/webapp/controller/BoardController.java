package com.drawSneakers.webapp.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.drawSneakers.webapp.dao.BoardDao;
import com.drawSneakers.webapp.entity.Board;
import com.drawSneakers.webapp.entity.Shoes;
import com.drawSneakers.webapp.service.ShoesService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Autowired
	private BoardDao boardDao;
	@Autowired
	private ShoesService shoesService;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail(Model model, @RequestParam int id) {
		List<Board> boardDetail = boardDao.getDetail(id);
		List<Shoes> shoesList = shoesService.shoesInfo();
		model.addAttribute("detail", boardDetail);
		model.addAttribute("shoesList", shoesList);
		return "board/detail";
	}
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList(Model model) {
		List<Board> boardList = boardDao.getList();
		List<Shoes> shoesList = shoesService.shoesInfo();
		model.addAttribute("list", boardList);
		model.addAttribute("shoesList", shoesList);
		return "board/list";
	}
}
