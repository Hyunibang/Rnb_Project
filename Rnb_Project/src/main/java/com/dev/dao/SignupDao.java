package com.dev.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dev.bean.CustomerBean;

@Component
public class SignupDao {
	
	@Autowired
	SqlSession session;
	
	public List<CustomerBean> getList() throws Exception {
		return session.selectList("getList");
	}
	//회원가입
	public int insert(CustomerBean bean) throws Exception {
		return session.insert("signup", bean);
	}
	
//	public int checkId(CustomerBean bean) throws Exception {
//		return session.selectOne("checkId", bean);
//	}
	//로그인
	public String login(String sign_id) throws Exception {
		return session.selectOne("signin", sign_id);
	}

}
