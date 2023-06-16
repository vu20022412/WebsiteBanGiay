package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.SaleorderProducts;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class SaleorderProductService extends BaseService<SaleorderProducts>{

	@Override
	protected Class<SaleorderProducts> clazz() {
		return SaleorderProducts.class;
	}

}
