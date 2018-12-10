package com.dev.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dev.bean.VideoBean;
import com.dev.dao.GradeDao;
import com.dev.dao.VideoDao;
import com.fasterxml.jackson.annotation.JsonFormat.Value;

@Controller
public class VideoController {
	
	@Resource(name="VideoDao")
	private VideoDao video;
	
	@Resource(name = "GradeDao")
	private GradeDao grade;
	
	@RequestMapping(value="suggest.do")
	public Object suggestProcess() {
		System.out.println("suggest ¸Þ¼Òµå");
		System.out.println(video.suggestContent());
	
		/*return "home";*/
		return null;
	}
	
	/*@RequestMapping(value="main.do")
	public ModelAndView showMain() {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("showMain");
		
		modelAndView.setViewName("jsp/home");
		
		return modelAndView;
	}*/
}
