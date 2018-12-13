package com.dev.dao;

import java.util.List;

import org.apache.commons.collections4.map.HashedMap;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.dev.bean.VideoBean;

public class VideoDao extends SqlSessionDaoSupport{
	
	public List<VideoBean> suggestGrade1(){
		return this.getSqlSession().selectList("suggestGrade1");
	}
	
	public List<VideoBean> suggestCount1(){
		return this.getSqlSession().selectList("suggestCount1");
	}
	
	//이미지 클릭 시, 해당 영상의 장르 찾기 - 영화/애니메이션
	public String findGenre(String title) {
		return this.getSqlSession().selectOne("findGenre", title);
	}
	
	//비디오 아이디 추출
	public int findVideoId(String title) {
		return this.getSqlSession().selectOne("findVideoId", title);
	}
	
	
	public List<VideoBean> showMovies(HashedMap<String, Object> map) {
		return this.getSqlSession().selectList("showMovies", map);
	}
}
