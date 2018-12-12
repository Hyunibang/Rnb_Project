package com.dev.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		/*List<VideoBean> gmain1 = video.suggestGrade1();
		List<VideoBean> gmain2 = video.suggestGrade2();
				
		modelAndView.addObject("gmain1", gmain1);
		modelAndView.addObject("gmain2", gmain2);*/
		modelAndView.setViewName("home");
	
		return modelAndView;
	}
	
	@RequestMapping(value="generic.do", method=RequestMethod.POST)
	public String selectVideo(@RequestParam(value="videoId", required=false)String videoId, Model model) {
		
		if(videoId.equals("venom,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/SgxAx7E-jjE");
		else if(videoId.equals("amsoo,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/dfnKOAmaQM8");
		else if(videoId.equals("singleman,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/AGLrSZuMnqw");
		else if(videoId.equals("chang,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/qHmQE93hVmA");
		else if(videoId.equals("twofriends,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/D_V9AfiZrTU");
		
		else if(videoId.equals("mosterhotel,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/s64962hfW94");
		else if(videoId.equals("rapunzel,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/79ZV71e0efk");
		else if(videoId.equals("runs,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/ZJLyEN9hdMg");
		else if(videoId.equals("incre,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/zON6Mu9_PC0");
		else if(videoId.equals("bossbaby,"))
			model.addAttribute("videoAddr", "https://www.youtube.com/embed/dQbpxuxMPic");
		
		return "view";
	}
}
