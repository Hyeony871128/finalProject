package org.kh.fin.order.domain;

import java.util.Date;

public class Order {

	private String orderNum;
	private String memberId;
	private String orderNume;
	private String orderPhone;
	private String orderPost;
	private String orderAddress;
	private String orderAddressDetail;
	private int statusNum;
	private String purchaseType;
	private String purchaseNum;
	private Date cdt;
	
	public Order() {}
	
	@Override
	public String toString() {
		return "Order [orderNum=" + orderNum + ", memberId=" + memberId + ", orderNume=" + orderNume + ", orderPhone="
				+ orderPhone + ", orderPost=" + orderPost + ", orderAddress=" + orderAddress + ", orderAddressDetail="
				+ orderAddressDetail + ", statusNum=" + statusNum + ", purchaseType=" + purchaseType + ", purchaseNum="
				+ purchaseNum + ", cdt=" + cdt + "]";
	}
	
	public Order(String orderNum, String memberId, String orderNume, String orderPhone, String orderPost,
			String orderAddress, String orderAddressDetail, int statusNum, String purchaseType, String purchaseNum,
			Date cdt) {
		super();
		this.orderNum = orderNum;
		this.memberId = memberId;
		this.orderNume = orderNume;
		this.orderPhone = orderPhone;
		this.orderPost = orderPost;
		this.orderAddress = orderAddress;
		this.orderAddressDetail = orderAddressDetail;
		this.statusNum = statusNum;
		this.purchaseType = purchaseType;
		this.purchaseNum = purchaseNum;
		this.cdt = cdt;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getOrderNume() {
		return orderNume;
	}
	public void setOrderNume(String orderNume) {
		this.orderNume = orderNume;
	}
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public String getOrderPost() {
		return orderPost;
	}
	public void setOrderPost(String orderPost) {
		this.orderPost = orderPost;
	}
	public String getOrderAddress() {
		return orderAddress;
	}
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
	public String getOrderAddressDetail() {
		return orderAddressDetail;
	}
	public void setOrderAddressDetail(String orderAddressDetail) {
		this.orderAddressDetail = orderAddressDetail;
	}
	public int getStatusNum() {
		return statusNum;
	}
	public void setStatusNum(int statusNum) {
		this.statusNum = statusNum;
	}
	public String getPurchaseType() {
		return purchaseType;
	}
	public void setPurchaseType(String purchaseType) {
		this.purchaseType = purchaseType;
	}
	public String getPurchaseNum() {
		return purchaseNum;
	}
	public void setPurchaseNum(String purchaseNum) {
		this.purchaseNum = purchaseNum;
	}
	public Date getCdt() {
		return cdt;
	}
	public void setCdt(Date cdt) {
		this.cdt = cdt;
	}
	
	
	
}
