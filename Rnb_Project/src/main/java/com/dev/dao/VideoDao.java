package com.dev.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.dev.bean.VideoBean;

public class VideoDao extends SqlSessionDaoSupport{
	
	public List<VideoBean> suggestGrade1(){
		return this.getSqlSession().selectList("suggestGrade1");
	}
	
	public List<VideoBean> suggestGrade2(){
		return this.getSqlSession().selectList("suggestGrade2");
	}
}
