package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.CartItem;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.PagerData;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class ShopController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoriesService categoriesService;
	
//	@RequestMapping(value = {"/shop"} , method = RequestMethod.GET)
//	public String cart(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response
//			)
//	throws IOException{
//		model.addAttribute("products",productService.findAll());
//		model.addAttribute("categoriesNotNulls", categoriesService.findAllConditionParentIdNotNull());
//		model.addAttribute("categoriesNulls", categoriesService.findAllConditionParentIdNull());
//		return "customer/shop";
//	}
	
	
	//cần xử lý lại
//	@RequestMapping(value = {"/shop/{productName}/{page}","/shop/{productName}", "/shop"} , method = RequestMethod.GET)
//	public String cart1(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response,
//			@PathVariable(required = false) String productName,
//			@PathVariable(required = false) String page,
//			@RequestParam(name = "sortby" , required = false) String sortby
//			)
//	throws IOException{
//		System.out.println(sortby);
//		ProductSearch productSearch = new ProductSearch();
//		if(page == null || Integer.parseInt(page) < 1) {
//			page = "1";
//			productSearch.setPage(1);
//		}else if(Integer.parseInt(page) > productService.loadPageShop(productName , "1" , null).getTotalPage()){
//			productSearch.setPage(productService.loadPageShop(productName , "1",null).getTotalPage());
//			page = (productSearch.getPage()).toString();
//
//		}else {
//			productSearch.setPage(Integer.parseInt(page));
//			page = productSearch.getPage().toString();
//		}
//		
//		model.addAttribute("products",productService.loadPageShop(productName , page , sortby));
//		model.addAttribute("categoriesNotNulls", categoriesService.findAllConditionParentIdNotNull());
//		model.addAttribute("categoriesNulls", categoriesService.findAllConditionParentIdNull());
//		model.addAttribute("productName", productName);
//		model.addAttribute("productSearch", productSearch);
//		return "customer/shop";
//	} 
	
	
	@RequestMapping(value = {"/shop/{productName}", "/shop"} , method = RequestMethod.GET)
	public String cart1(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable(required = false) String productName,
			@RequestParam(name = "page",required = false) String page,
			@RequestParam(name = "sortby" , required = false) String sortby
			)
	throws IOException{
		ProductSearch productSearch = new ProductSearch();
		if(productName == null) {
			//productName = "Tất cả sản phẩm";
			return "redirect:/shop/All";
		}
		
		
		if(page == null || Integer.parseInt(page) < 1) {
			page = "1";
			productSearch.setPage(1);
		}else if(Integer.parseInt(page) > productService.loadPageShop(productName , "1" , null).getTotalPage()){
			productSearch.setPage(productService.loadPageShop(productName , "1",null).getTotalPage());
			page = (productSearch.getPage()).toString();
		}else {
			productSearch.setPage(Integer.parseInt(page));
			page = productSearch.getPage().toString();
		}
		
		
		model.addAttribute("products",productService.loadPageShop(productName , page , sortby));
		model.addAttribute("categoriesNotNulls", categoriesService.findAllConditionParentIdNotNull());
		model.addAttribute("categoriesNulls", categoriesService.findAllConditionParentIdNull());
		if(productName.equals("all")) {
			model.addAttribute("productName", "All");
		}else {
			model.addAttribute("productName", productName);
		}
//		if(productName == null) {
//			model.addAttribute("productName", "Tất cả sản phẩm");
//		}else {
//			model.addAttribute("productName", productName);
//		}
		
		model.addAttribute("productSearch", productSearch);
		model.addAttribute("sortby", sortby);
		return "customer/shop";
	} 
	
	
}
