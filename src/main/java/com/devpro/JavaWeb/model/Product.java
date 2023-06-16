package com.devpro.JavaWeb.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tbl_products")
public class Product extends BaseEntity{
	@Column(name="title")
	private String title;
	
	@Column(name="price",precision = 13,scale = 2,nullable = false)
	private BigDecimal price;
	
	@Column(name="price_sale",precision = 13,scale = 2,nullable = true)
	private BigDecimal priceSale;
	
	@Column(name="short_description",length = 3000,nullable = false)
	private String shortDescription;
	
	@Lob
	@Column(name="detail_description",nullable = false,columnDefinition = "LONGTEXT")
	private String details;
	
	@Column(name="avatar",nullable = true)
	private String avatar;
	
	@Column(name="seo",length = 1000,nullable = true)
	private String seo;
	
	
	@Column(name="is_hot",nullable = true)
	private Boolean isHot = Boolean.FALSE;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="category_id")
	private Categories categories;
	
	@OneToMany(cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			mappedBy = "product")
	private Set<ProductImage> productImages = new HashSet<ProductImage>();
	
	
	//thiết lập quan hệ N-N cho bảng saleOrder với Product
//	@OneToMany(mappedBy = "product")
//	private Set<SaleorderProducts> saleorderProducts = new HashSet<SaleorderProducts>();

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPriceSale() {
		return priceSale;
	}

	public void setPriceSale(BigDecimal priceSale) {
		this.priceSale = priceSale;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Boolean getIsHot() {
		return isHot;
	}

	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	public Set<ProductImage> getProductImages() {
		return productImages;
	}

	public void setProductImages(Set<ProductImage> productImages) {
		this.productImages = productImages;
	}
	
	
	
}
