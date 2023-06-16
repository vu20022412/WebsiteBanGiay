package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.ProductImage;
import com.devpro.JavaWeb.services.BaseService;


@Service
public class ProductImageService extends BaseService<ProductImage>{

	@Override
	protected Class<ProductImage> clazz() {
		// TODO Auto-generated method stub
		return ProductImage.class;
	}

}
