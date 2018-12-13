package com.dev.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dev.bean.CustomerBean;
import com.dev.bean.VideoBean;
import com.dev.dao.GradeDao;
import com.dev.dao.SignupDao;
import com.dev.dao.VideoDao;

@Controller
public class VideoController {
	
	@Resource(name="VideoDao")
	private VideoDao video;
	
	@Resource(name = "GradeDao")
	private GradeDao grade;
	
	@Resource(name = "SignupDao")
	private SignupDao sign;
	
	
	@RequestMapping(value = "main.do")
	public ModelAndView mainStart(HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		
		HashedMap<String, Object> map = new HashedMap<String, Object>();
		map.put("id", userid);

		String genreAni = "Animation";
		String genreMovie = "Movie";

		List<VideoBean> showMovies;
		
		int aniCount = 0;
		int movieCount = 0;
		try {
			aniCount = sign.suggestAniCount(userid);
			System.out.println("aniCount : " + aniCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			movieCount = sign.suggestMovieCount(userid);
			System.out.println("aniCount : " + movieCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(aniCount > movieCount) {
			System.out.println("Animation이 더 많습니다.");
			map.put("genre", genreAni);
			showMovies = video.showMovies(map);
			modelAndView.addObject("showMovies", showMovies);
		} else {
			System.out.println("Movie가 더 많습니다.");
			map.put("genre", genreMovie);
			showMovies = video.showMovies(map);
			modelAndView.addObject("showMovies", showMovies);
		}
		
		modelAndView.setViewName("home");
	
		return modelAndView;
	}
	
	@RequestMapping(value="generic.do", method=RequestMethod.POST)
	public String selectVideo(@RequestParam(value="videoId", required=false)String videoId, Model model,
							  @RequestParam(value="userid", required=false)String userid) {
		
		
		String movie = "Movie";
		
		if(movie.equals(video.findGenre(videoId))) {
			try {
				sign.updateMovieCount(userid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				sign.updateAniCount(userid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
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
