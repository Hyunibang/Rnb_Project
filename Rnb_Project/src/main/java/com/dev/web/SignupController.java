package com.dev.web;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dev.bean.CustomerBean;
import com.dev.dao.SignupDao;

@Controller
public class SignupController {
	
	@Autowired
	private SignupDao signup;
	
	@RequestMapping(value="sign_list.do")
	public String getList(HttpServletRequest req) throws Exception {
		List<CustomerBean> list = signup.getList();
		req.setAttribute("list", list);
		return "login";
	}
	
	@RequestMapping(value="sign_form.do", method = RequestMethod.POST)
	public String signup(@ModelAttribute CustomerBean bean) throws Exception {
		signup.insert(bean);
		return "login";
	}
	
	@RequestMapping(value="login_form.do", method = RequestMethod.POST)
	public String login(HttpSession session, @RequestParam(value="id", required=false)String id, @RequestParam(value="password", required=false)String password) throws Exception {
		if(password.equals(signup.login(id))) {
			HashedMap<String, Object>map = new HashedMap<String, Object>();
			map.put("id", id);
			map.put("password", password);
			
			session.setAttribute("userid", id);
			session.setAttribute("username", signup.findName(map));
			
			return "redirect:main.do";
		}
		
		return "login";
	}
}
