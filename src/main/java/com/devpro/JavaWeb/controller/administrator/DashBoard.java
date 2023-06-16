package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.ContactService;


@Controller
public class DashBoard extends BaseController{
	
	
	@RequestMapping(value = {"/admin/home"} , method = RequestMethod.GET)
	public String cart(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response	
			)
	throws IOException{
		//trả về đường dẫn của shop
		return "administrator/dashboard";
	}


	
	
	
}
