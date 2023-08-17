package org.iclass.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.Community;

import mybatis.SqlSessionBean;

public class CommunityDao {

	private static CommunityDao dao = new CommunityDao();
	private CommunityDao()	{}
	public static CommunityDao getInstance() {
		return dao;
	}
	
	
	public List<Community> list() {
		SqlSession factory = SqlSessionBean.getSession();
		List<Community> list = factory.selectList("community.list");
		factory.close();
		return list;
		
	}
	
	public List<Community> pagelist(Map<String,Integer> map) {
		SqlSession factory = SqlSessionBean.getSession();
		List<Community> list = factory.selectList("community.pagelist",map);
		factory.close();
		return list;
		
	}
	
	public int count() {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.selectOne("community.count");
		factory.close();
		return result;
		
	}
	
	public List<Community> selectByIdx(long idx){
		SqlSession factory = SqlSessionBean.getSession();
		List<Community> list = factory.selectOne("community.selectByIdx",idx);
		factory.close();
		return list;
	}
	
	public int setReadCount(long idx) {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.update("community.setReadCount", idx);
		factory.commit();
		factory.close();
		return result;
		
	}
	
	public int update(Community vo) {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.update("community.update",vo);
		factory.commit();
		factory.close();
		return result;
	}
	
	public int delete(long idx) {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.delete("community.delete",idx);
		factory.commit();
		factory.close();
		return result;
	}
	
	//factory.close();
	
}
