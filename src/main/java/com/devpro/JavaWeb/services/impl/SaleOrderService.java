package com.devpro.JavaWeb.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.model.SaleorderProducts;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class SaleOrderService extends BaseService<SaleOrder>{
	
	@Autowired
	private SaleorderProductService saleorderProductService;

	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}
	
	
	
	
	@Transactional
	public void createSaleOrder(SaleOrder saleOrder, List<SaleorderProducts> saleorderProductsLst) {
		SaleOrder soSaved = super.saveOrUpdate(saleOrder);
		
		// lấy sản phẩm trong giỏ hàng
		for (SaleorderProducts saleOrderProducts : saleorderProductsLst) {
			saleOrderProducts.setSaleOrder(soSaved);
			saleorderProductService.saveOrUpdate(saleOrderProducts);
		}
	}

}
