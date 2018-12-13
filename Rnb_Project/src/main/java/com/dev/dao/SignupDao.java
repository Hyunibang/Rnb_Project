package com.dev.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dev.bean.CustomerBean;

@Component("SignupDao")
public class SignupDao {
	
	@Autowired
	SqlSession session;
	
	public List<CustomerBean> getList() throws Exception {
		return session.selectList("getList");
	}
	
	public int insert(CustomerBean bean) throws Exception {
		return session.insert("signup", bean);
	}
	
	public String login(String id) throws Exception {
		return session.selectOne("signin", id);
	}
	
	public String findName(HashedMap<String, Object> map) throws Exception{
		return session.selectOne("findName", map);
	}
	
	public void updateMovieCount(String id) throws Exception {
		session.update("updateMovieCount", id);
	}
	
	public void updateAniCount(String id) throws Exception{
		session.update("updateAniCount", id);
	}

	public int suggestAniCount(String id) throws Exception {
		return session.selectOne("suggestAniCount", id);
	}
	
	public int suggestMovieCount(String id) throws Exception {
		return session.selectOne("suggestMovieCount", id);
	}
	
}
