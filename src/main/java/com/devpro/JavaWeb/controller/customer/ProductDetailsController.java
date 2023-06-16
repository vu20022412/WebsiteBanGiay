package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;

@Controller
public class ProductDetailsController extends BaseController{
	@RequestMapping(value = {"/product-detail"} , method = RequestMethod.GET)
	public String cart(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response	
			)
	throws IOException{
		//trả về đường dẫn của cart
		return "customer/product-detail";
	}
}
