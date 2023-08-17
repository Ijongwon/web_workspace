package org.iclass.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.Community;

import mybatis.SqlSessionBean;

public class CommunityDao {

	private static CommunityDao dao = new CommunityDao();

	private CommunityDao() {
	}

	public static CommunityDao getInstance() {
		return dao;
	}

	public List<Community> list() {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> list = mapper.selectList("community.list");
		mapper.close();
		return list;

	}

	public List<Community> pagelist(Map<String, Integer> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> list = mapper.selectList("community.pagelist", map);
		mapper.close();
		return list;

	}

	public int count() {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("community.count");
		mapper.close();
		return result;

	}

	public List<Community> selectByIdx(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> list = mapper.selectOne("community.selectByIdx", idx);
		mapper.close();
		return list;
	}

	public int setReadCount(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("community.setReadCount", idx);
		mapper.commit();
		mapper.close();
		return result;

	}

	public int update(Community vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("community.update", vo);
		mapper.commit();
		mapper.close();
		return result;
	}

	public int delete(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("community.delete", idx);
		mapper.commit();
		mapper.close();
		return result;
	}

	// factory.close();

}
