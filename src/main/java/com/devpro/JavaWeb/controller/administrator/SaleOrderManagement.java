package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.services.impl.SaleOrderService;

@Controller
public class SaleOrderManagement extends BaseController{
	
	@Autowired
	private SaleOrderService saleOrderService;
	@RequestMapping(value = { "/admin/saleorder/list" }, method = RequestMethod.GET)
	public String adminDeleteUser(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		model.addAttribute("saleorders", saleOrderService.findAll());
		return "administrator/SaleOrderManagement";
	}
}
