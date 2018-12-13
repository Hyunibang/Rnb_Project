package com.dev.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.dev.bean.VideoBean;

public class VideoDao extends SqlSessionDaoSupport{
	
	public List<VideoBean> suggestGrade1(){
		return this.getSqlSession().selectList("suggestGrade1");
	}
	
		return this.getSqlSession().selectList("suggestGrade2");
	}*/
	
/*	public List<VideoBean> suggestCount1(){
		return this.getSqlSession().selectList("suggestCount1");
	}*/
	
}
