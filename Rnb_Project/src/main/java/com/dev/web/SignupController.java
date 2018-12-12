package com.dev.web;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	//로그인
	@RequestMapping(value="login_form.do", method = RequestMethod.POST)
	public String login(@RequestParam(value="signin_id", required=false)String sign_id, @RequestParam(value="signin_pw", required=false)String sign_pw) throws Exception {
		if(sign_pw.equals(signup.login(sign_id))) {
			HashedMap<String, Object>map = new HashedMap<String, Object>();
			map.put("sign_id", sign_id);
			map.put("sign_pw", sign_pw);
			System.out.println(sign_id + sign_pw);
			String name = signup.findName(map);
			System.out.println(name);
			
			return "redirect:main.do";
		}
		
		return "login";
	}
}
