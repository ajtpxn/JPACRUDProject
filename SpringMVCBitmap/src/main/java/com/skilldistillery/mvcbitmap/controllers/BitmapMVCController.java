package com.skilldistillery.mvcbitmap.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpabitmap.entities.Bitmap;
import com.skilldistillery.mvcbitmap.data.MVCBitmapDAO;

@Controller
public class BitmapMVCController {
	
	@Autowired
	private MVCBitmapDAO bitmapDAO;
	
	@RequestMapping(path="home.do", method = RequestMethod.GET)
	public String home(Model model) {
	  List<Bitmap> bitmaps = bitmapDAO.index();
	  model.addAttribute("bitmaps", bitmaps);
	  return "/WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getBitmap.do", method = RequestMethod.GET)
	public ModelAndView getBitmap(@RequestParam("bid") int bid) {
	  ModelAndView mv = new ModelAndView();
	  Bitmap bitmap = bitmapDAO.show(bid);     
	  mv.addObject("bitmap", bitmap);
	  mv.setViewName("WEB-INF/bitmap/show.jsp");
	  return mv;
	}

//	@RequestMapping(path="home.do", method = RequestMethod.GET)
//	public String index(Model model) {
//	  List<Bitmap> bitmaps = bitmapDAO.index();
//	  model.addAttribute("bitmaps", bitmaps);
//	  return "/WEB-INF/index.jsp";
//	}

}
