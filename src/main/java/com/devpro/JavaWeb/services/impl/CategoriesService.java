package com.devpro.JavaWeb.services.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		return Categories.class;
	}
	
	
	public List<Categories> findAllConditionParentIdNotNull(){
		String sql = "SELECT * FROM tbl_category where parent_id is not null";
		return getEntitiesByNativeSQL(sql);
	}
	
	public List<Categories> findAllConditionParentIdNull(){
		String sql = "SELECT * FROM tbl_category where parent_id is null";
		return getEntitiesByNativeSQL(sql);
	}
	
	
	public Categories test(String name) {
		String sql = "select * from tbl_category where name = '"+name+"';";
		return getEntityByNativeSQL(sql);
	}
}
