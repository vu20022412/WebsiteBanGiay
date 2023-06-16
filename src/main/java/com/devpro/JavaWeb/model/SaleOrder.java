package com.devpro.JavaWeb.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder")
public class SaleOrder extends BaseEntity{
	@Column(name = "code")
	private String code;
	
//	@Column(name = "user_id")
//	private Integer user_id;
	
	
	@Column(name="total",precision = 13,scale = 2,nullable = false)
	private BigDecimal total;
	
	@Column(name = "customer_name")
	private String customer_name;
	
	@Column(name = "customer_address")
	private String customer_address;
	
	@Column(name = "seo")
	private String seo;
	
	@Column(name = "customer_phone")
	private String customer_phone;
	
	@Column(name = "cutomer_email")
	private String customer_email;
	
	//thiết lập quan hệ N-N cho bảng saleOrder với Product
	@OneToMany(cascade = CascadeType.ALL, 
			   mappedBy = "saleOrder", 
			   fetch = FetchType.EAGER)
	private Set<SaleorderProducts> saleorderProducts = new HashSet<SaleorderProducts>();
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User user;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}


	public Set<SaleorderProducts> getSaleorderProducts() {
		return saleorderProducts;
	}

	public void setSaleorderProducts(Set<SaleorderProducts> saleorderProducts) {
		this.saleorderProducts = saleorderProducts;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	
	
}
