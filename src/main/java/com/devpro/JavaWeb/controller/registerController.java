package com.devpro.JavaWeb.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.dto.Register;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.impl.UserService;

@Controller
public class registerController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String regiterGet(final Model model, 
					   final HttpServletRequest request,
					   final HttpServletResponse response)
			throws IOException {
		return "register";
	}
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public ResponseEntity<HashMap<String, String>> regiterPost(final Model model, 
					   final HttpServletRequest request,
					   final HttpServletResponse response,
					   final @RequestBody Register register)
			throws IOException {
		
		String sql = "";
		HashMap< String, String> jsonResult = new HashMap<String, String>();
		if(register.getUserName().equals("") || register.getPassword().equals("") || register.getConfirmPassWord().equals("")
				) {
			//|| register.getYourEmail().equals("") || register.getYourPhone().equals("")
			sql = "Bạn phải điền đầy đủ thông tin";
			jsonResult.put("status", sql);
			return ResponseEntity.ok(jsonResult);
		}
		if(!register.getUserName().equals("")) {
			User user = userService.getEntityByNativeSQL("SELECT * from tbl_users where username = '"+register.getUserName()+"';");
			if(user != null) {
				sql = "Tài khoản này đã được tạo";
				jsonResult.put("status", sql);
				return ResponseEntity.ok(jsonResult);
			}
			
		}
		User us = new User();
		us.setUsername(register.getUserName());
		us.setPassword(register.getPassword());
		us.setPhone(register.getYourPhone());
		us.setEmail(register.getYourEmail());
		
		userService.saveOrUpdate(us);
		sql = "Tạo tài khoản thành công";
		jsonResult.put("status", sql);
		return ResponseEntity.ok(jsonResult);
	}
}
