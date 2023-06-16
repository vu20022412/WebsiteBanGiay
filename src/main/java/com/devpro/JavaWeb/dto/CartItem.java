package com.devpro.JavaWeb.dto;

import java.math.BigDecimal;

/**
 * Biểu thị cho 1 sản phẩm trong giỏ hàng.
 * @author daing
 *
 */
public class CartItem {
	// mã sản phẩm 
	private int productId;
	
	// tên sản phẩme
	private String productName;
	
	// số lương sản phẩm
	private int quanlity;
	
	// đơn giá sản phẩm
	private BigDecimal priceUnit;
	
	//ảnh sản phẩm
	private String avatar;
	
	//bấm nút cộng sản phẩm hoặc trừ sản phẩm
	private String increaseOrDecrease;
	
	public String getIncreaseOrDecrease() {
		return increaseOrDecrease;
	}

	public void setIncreaseOrDecrease(String increaseOrDecrease) {
		this.increaseOrDecrease = increaseOrDecrease;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuanlity() {
		return quanlity;
	}

	public void setQuanlity(int quanlity) {
		this.quanlity = quanlity;
	}

	public double getPriceUnit() {
		return Double.parseDouble(this.priceUnit+"");
	}

	public void setPriceUnit(BigDecimal priceUnit) {
		this.priceUnit = priceUnit;
	}
	
	public double tongGia() {
		double gia = Double.parseDouble(this.getPriceUnit()+"");
		return (gia * this.getQuanlity());
	}
	
	public double tongGia1() {
		return (Double.parseDouble(this.getPriceUnit()+"")) * (this.getQuanlity());
	}

}
