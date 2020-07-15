package org.kh.fin.order.controller;
import org.kh.fin.order.domain.OrderDetail;
import org.kh.fin.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class OrderController {

@Autowired OrderService oService;
	//주문버튼누르면 저장해주는 메소드
/*	@RequestMapping(value="nfoProduct.do", method=RequestMethod.POST)
	public String insertOrderDetail(OrderDetail orderDetail) {
	System.out.println("오더디테일 컨트롤러"+orderDetail);
		int result = oService.insertOrderDetail(orderDetail);
System.out.println("결과값"+result);
	
	if(result>0) {
		return "order/insertDetailOrder";
	}else {
		return "실패했습니다";
	}
		
		
	}*/

//주소록이나 그런정보 넣는페이지

	@RequestMapping(value="orderInsertInfo.do",method=RequestMethod.POST)
	public String orderInsertInfo() {
		return null;
	}


}
