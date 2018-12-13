package com.dev.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping("/home")
	public String home(Locale locale, Model model) {
		return "redirect:main.do";
	}
	
	@RequestMapping("/generic")
	public String getIndexPage() throws Exception{
		return "generic";
	}
	
	@RequestMapping("/setting")
	public String getSettingPage() throws Exception{
		return "setting";
	}
	
	@RequestMapping("/index")
	public String getHomePage() throws Exception{
		return "index";
	}
	
	@RequestMapping("/login")
	public String getLoginPage() throws Exception{
		return "login";
	}
	
	@RequestMapping("/signup")
	public String getSignupPage() throws Exception{
		return "signup";
	}

}
