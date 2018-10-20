package com.skilldistillery.mvcbitmap.controllers;

import java.time.LocalDateTime;
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
	  mv.setViewName("WEB-INF/bitmap/results.jsp");
	  return mv;
	}

	
	@RequestMapping(path = "addBitmap.do", method = RequestMethod.GET)
	public ModelAndView addBitmap() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/bitmap/addbitmap.jsp");
		return mv;
	}
	
	
	
	
	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView updateBitmap(@RequestParam("bid") int bid) {
		ModelAndView mv = new ModelAndView();
		Bitmap bitmap = bitmapDAO.show(bid);     
		mv.addObject("bitmap", bitmap);
		mv.addObject("update", true);
		mv.setViewName("WEB-INF/bitmap/addbitmap.jsp");
		return mv;
	}
	
	
	
	@RequestMapping(path = "returnBitmapValues.do", method = RequestMethod.GET)
	public ModelAndView returnBitmapValues(@RequestParam("name") String name,
			@RequestParam("desc") String desc,
			@RequestParam("textfilecontents") String textfilecontents) {
		ModelAndView mv = new ModelAndView();
		Bitmap bitmap = new Bitmap();
		bitmap.setName(name);
		bitmap.setDescription(desc);
		bitmap.setBitmapblob(textfilecontents);
		bitmap.setAdded(LocalDateTime.now());
		bitmapDAO.create(bitmap);
		mv.addObject("bitmap", bitmap);
		mv.setViewName("WEB-INF/bitmap/results.jsp");
		return mv;
	}
	
	
	@RequestMapping(path = "returnBitmapValuesUpdate.do", method = RequestMethod.GET)
	public ModelAndView updateBitmapValues(@RequestParam("name") String name,
			@RequestParam("desc") String desc,
			@RequestParam("textfilecontents") String textfilecontents,
			@RequestParam("bid") int bid) {
		ModelAndView mv = new ModelAndView();
		Bitmap bitmap = bitmapDAO.show(bid);     
		bitmap.setName(name);
		bitmap.setDescription(desc);
		bitmap.setBitmapblob(textfilecontents);
		bitmapDAO.update(bid, bitmap);
		mv.addObject("bitmap", bitmap);
		mv.setViewName("WEB-INF/bitmap/results.jsp");
		return mv;
	}
	

	
	
	@RequestMapping(path = "delete.do", method = RequestMethod.GET)
	public ModelAndView destroyBitmap(@RequestParam("bid") int bid) {
		ModelAndView mv = new ModelAndView();
		Bitmap bitmap = bitmapDAO.show(bid);     
		mv.addObject("bitmap", bitmap);
		mv.addObject("deleted", true);
		bitmapDAO.destroy(bid);
		mv.setViewName("WEB-INF/bitmap/results.jsp");
		return mv;
	}
	
	

}
