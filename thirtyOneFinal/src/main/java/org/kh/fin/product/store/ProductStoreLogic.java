package org.kh.fin.product.store;


import java.util.ArrayList;

import org.kh.fin.product.domain.Product;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("pStore")
public class ProductStoreLogic {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public int insertProduct(Product product) {
		return sqlSession.insert("productMapper.insertProduct", product);
	}


	public ArrayList<Product> selectList() {
	
		return (ArrayList)sqlSession.selectList("productMapper.selectList");
	}


	public ArrayList<Product> rodSelectList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("productMapper.rodSelectList");
	}


	public ArrayList<Product> reelSelectList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("productMapper.reelSelectList");
	}


	public ArrayList<Product> baitSeleteList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("productMapper.baitSelectList");

	}


	public ArrayList<Product> lineSeleteList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("productMapper.lineSelectList");

	}


	public ArrayList<Product> bagSeleteList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("productMapper.bagSelectList");

	}


	public Product selectOne(int productNum) {
		return sqlSession.selectOne("productMapper.selectOne",productNum);
	}
}
