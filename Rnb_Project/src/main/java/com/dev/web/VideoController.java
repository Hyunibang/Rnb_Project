package com.dev.web;

import java.util.List;

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
	
	@RequestMapping(value = "main.do")
	public ModelAndView mainStart() {
		ModelAndView modelAndView = new ModelAndView();
		List<VideoBean> gmain1 = video.suggestGrade1();
		List<VideoBean> gmain2 = video.suggestGrade2();
				
		modelAndView.addObject("gmain1", gmain1);
		modelAndView.addObject("gmain2", gmain2);
		modelAndView.setViewName("home");
	
		return modelAndView;
	}
}
