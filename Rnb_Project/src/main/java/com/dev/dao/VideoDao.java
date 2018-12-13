package com.dev.dao;

import java.util.List;

import org.apache.commons.collections4.map.HashedMap;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.dev.bean.VideoBean;

public class VideoDao extends SqlSessionDaoSupport{
	
	public List<VideoBean> suggestGrade1(){
		return this.getSqlSession().selectList("suggestGrade1");
	}
	
/*	public List<VideoBean> suggestCount1(){
		return this.getSqlSession().selectList("suggestCount1");
	}*/
	
	
	//�̹��� Ŭ�� ��, �ش� ������ �帣 ã�� - ��ȭ/�ִϸ��̼�
	public String findGenre(String title) {
		return this.getSqlSession().selectOne("findGenre", title);
	}
	
	public List<VideoBean> showMovies(HashedMap<String, Object> map) {
		return this.getSqlSession().selectList("showMovies", map);
	}
}
