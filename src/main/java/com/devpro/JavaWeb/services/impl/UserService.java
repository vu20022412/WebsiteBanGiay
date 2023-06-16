package com.devpro.JavaWeb.services.impl;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.dto.UserSearch;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.ProductImage;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.BaseService;
import com.devpro.JavaWeb.services.PagerData;

@Service
public class UserService extends BaseService<User>{

	@Override
	protected Class<User> clazz() {
		return User.class;
	}
	
	
	//phục vụ cho việc lưu hóa đơn
//	public User findByUsername(String userName) {
//		String sql = "SELECT * from tbl_users where username = '" + userName + "';";
//		return super.getEntityByNativeSQL(sql);
//	}
	
	
	@Transactional
	public User deleteUser(int userId) {
		String sql = "DELETE FROM tbl_user WHERE id = " + userId + ";";
		User old = super.getById(userId);
		super.deleteById(userId);
		return old;
//		super.deleteById(productId);
				
	}
	
	//add user
	@Transactional
	public User addOrUpdateUser(User user) throws IllegalStateException, IOException {
		
		return super.saveOrUpdate(user);
	}
	
	public PagerData<User> searchUser(UserSearch searchUser){
		String sql = "SELECT * FROM tbl_users p WHERE 1=1";
		
		if(searchUser != null) {
			if (!StringUtils.isEmpty(searchUser.getKeyword())) {
				sql += " and (p.username like '%" + searchUser.getKeyword() + "%')";
			}
		}
		
		return getEntitiesByNativeSQL(sql,searchUser.getPage());
	}

}
