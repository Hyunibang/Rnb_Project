package com.dev.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.dev.bean.VideoBean;

public class VideoDao extends SqlSessionDaoSupport{
	
	public List<VideoBean> suggestContent(){
		return this.getSqlSession().selectList("suggestContent");
	}
}
