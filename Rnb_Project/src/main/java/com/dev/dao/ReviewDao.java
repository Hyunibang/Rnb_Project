package com.dev.dao;

import java.util.List;

import org.apache.commons.collections4.map.HashedMap;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.dev.bean.ReviewBean;

public class ReviewDao extends SqlSessionDaoSupport{
	
	//후기 리턴
	public List<ReviewBean> selectReview(int video_id){
		return this.getSqlSession().selectList("selectReview", video_id);
	}
}
