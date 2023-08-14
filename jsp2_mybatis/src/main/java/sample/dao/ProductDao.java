package sample.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import sample.dto.ProductDto;

public class ProductDao {
	private static ProductDao dao = new ProductDao();
	private ProductDao() {}
	public static ProductDao getProductDao() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<ProductDto> getProducts() throws SQLException {
		SqlSession mapper = factory.openSession();
		List<ProductDto> list = mapper.selectList("products.getProducts");
		mapper.close();
		return list;
	}
	
	public int insert(ProductDto dto) throws SQLException {
		SqlSession mapper = factory.openSession();
		int count = mapper.insert("products.insert",dto);
		mapper.commit();		//commit 필수.
		mapper.close();
		return count;
	}
	
	//동일한 상품명이 여러개면 오류 생깁니다.
	public ProductDto getByPname(String pname) {
		SqlSession mapper = factory.openSession();
		ProductDto dto = mapper.selectOne("products.getByPname", pname);
		mapper.close();
		return dto;
		
	}
	
	
}
