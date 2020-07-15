package org.kh.fin.order.service;

import org.kh.fin.order.domain.Order;
import org.kh.fin.order.domain.OrderDetail;
import org.kh.fin.order.store.OrderStoreLogic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired OrderStoreLogic oStore;

	@Override
	public int insertOrderDetail(OrderDetail orderDetail) {

		return oStore.insertOrderDetail(orderDetail);
	}

	@Override
	public Model orderPurchaseProduct(Order order, Model model) {
		// TODO Auto-generated method stub
		return null;
	}


}
