package org.kh.fin.order.domain;

public class OrderDetail {

	private int productNum;
	private String orderNum;
	private int orderQty;
	
	
	
	
	public OrderDetail() {}
	
	public OrderDetail(int productNum, String orderNum, int orderQty) {
		super();
		this.productNum = productNum;
		this.orderNum = orderNum;
		this.orderQty = orderQty;
	}
	@Override
	public String toString() {
		return "OrderDetail [productNum=" + productNum + ", orderNum=" + orderNum + ", orderQty=" + orderQty + "]";
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public int getOrderQty() {
		return orderQty;
	}
	public void setOrderQty(int orderQty) {
		this.orderQty = orderQty;
	}
	
	
}
