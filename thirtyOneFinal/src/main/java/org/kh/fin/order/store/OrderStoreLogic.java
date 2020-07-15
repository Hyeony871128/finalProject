package org.kh.fin.order.store;

import org.kh.fin.order.domain.OrderDetail;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("oStore")
public class OrderStoreLogic {

	@Autowired SqlSessionTemplate sqlSession;

	public int insertOrderDetail(OrderDetail orderDetail) {

		return sqlSession.insert("orderMapper.insertOrderDetail",orderDetail);
	}


}
