package com.dev.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dev.bean.VideoBean;
import com.dev.dao.GradeDao;
import com.dev.dao.VideoDao;

@Controller
public class VideoController {
	
	@Resource(name="VideoDao")
	private VideoDao video;
	
	@Resource(name = "GradeDao")
	private GradeDao grade;
	
	@RequestMapping(value = "main.do")
	public ModelAndView mainStart() {
		ModelAndView modelAndView = new ModelAndView();
		List<VideoBean> gmain1 = video.suggestGrade1();
		/*List<VideoBean> gmain2 = video.suggestGrade2();*/
		List<VideoBean> gcount = video.suggestCount1();
				
		modelAndView.addObject("gmain1", gmain1);
		/*modelAndView.addObject("gmain2", gmain2);*/
		modelAndView.addObject("gcount", gcount);
		modelAndView.setViewName("home");
	
		return modelAndView;
	}
	
	@RequestMapping(value="generic.do", method=RequestMethod.POST)
	public String selectMovie(@RequestParam(value="movieId", required=false)String movieId, Model model) {

		if(movieId.equals("venom"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/a_8Piw93wQE");
		else if(movieId.equals("amsoo"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/1VIVAMUl-fY");
		
		return "view";
	}
}
