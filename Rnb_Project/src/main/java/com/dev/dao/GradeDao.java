package com.dev.dao;

import org.apache.commons.collections4.map.HashedMap;
import org.mybatis.spring.support.SqlSessionDaoSupport;

public class GradeDao extends SqlSessionDaoSupport{
	
	//평점 insert
	public void insertGrade(HashedMap<String, Object> map) {
		this.getSqlSession().insert("insertGrade", map);
	}
	
	//후기 insert
	public void insertReview(HashedMap<String, Object>map2) {
		this.getSqlSession().insert("insertReview", map2);
	}
	
	//평점 리턴
	public int selectGrade(int video_id) {
		return this.getSqlSession().selectOne("selectGrade", video_id);
	}
}
