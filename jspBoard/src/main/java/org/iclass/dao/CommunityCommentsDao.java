package org.iclass.dao;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.CommunityComments;

import mybatis.SqlSessionBean;

public class CommunityCommentsDao {
	
	private static CommunityCommentsDao dao = new CommunityCommentsDao();
	private CommunityCommentsDao()	{}
	public static CommunityCommentsDao getInstance() {
		return dao;
	}

	
	public int insert(CommunityComments vo) {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.insert("communityComments.insert",vo);
		factory.commit();
		factory.close();
		return result;
	}
	
	public int delete(int idx) {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.delete("communityComments.delete",idx);
		factory.commit();
		factory.close();
		return result;
	}
	
	//idx 최대값 구하기
	public int maxOf() {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.selectOne("communityComments.maxOf");
		factory.close();
		return result;
	}

	//메인글의 댓글 갯수 업데이트	
	public int setCommentCount(long idx) {
		SqlSession factory = SqlSessionBean.getSession();
		int result = factory.update("community.setCommentCount", idx);
		factory.commit();
		factory.close();
		return result;
	}
}
