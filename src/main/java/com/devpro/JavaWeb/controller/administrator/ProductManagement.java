package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.CartItem;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.impl.CategoriesService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class ProductManagement  extends BaseController{
	
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoriesService categoriesService;
	
	
	/*
	 * @RequestMapping(value = {"/admin/qlsp"} , method = RequestMethod.GET) public
	 * String cart2(final Model model, final HttpServletRequest request, final
	 * HttpServletResponse response ) throws IOException{
	 * model.addAttribute("products", productService.findAll()); return
	 * "administrator/ProductManagement"; }
	 */
	
	
	//form thêm sản phẩm
	@RequestMapping(value = {"/admin/addproduct"} , method = RequestMethod.GET)
	public String addProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response	
			)
	throws IOException{
		model.addAttribute("product", new Product());
		return "administrator/addproduct";
	}
	

	//sửa product
	@RequestMapping(value = {"/admin/product/management/{productId}"} , method = RequestMethod.GET)
	public String adminProductDetails(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("productId") int productId
			)
	throws IOException{
		
		model.addAttribute("product", productService.getById(productId));
		// hàm này đã được BaseController xử lý
//		model.addAttribute("categorie", categoriesService.findAll());
		return "administrator/addproduct";
	}
	
	
	//save or update sản phẩm
	@RequestMapping(value = {"/admin/addproduct"} , method = RequestMethod.POST)
	public String addProductPost(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@ModelAttribute("product") Product product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures
			)
	throws IOException{
		if(product.getId() == null || product.getId() <= 0) {
			productService.addProduct(product, productAvatar, productPictures);
		} else { 
			productService.editProduct(product, productAvatar, productPictures); 
		}
		// trả về view(list), sử dụng redirect để chuyển hướng request.
		return "redirect:/admin/product/list";
	}
	
	
	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		String keyword = request.getParameter("keyword");
		String categoryId = request.getParameter("categoryId");
		
		Integer page = 1;
		try {
			page = Integer.parseInt(request.getParameter("page"));
		}catch(Exception e) {
			
		}
		ProductSearch searchModel = new ProductSearch();
		searchModel.setKeyword(keyword);
		searchModel.setCategoryId(categoryId);
		searchModel.setPage(page);
		
		model.addAttribute("products", productService.searchProduct(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "administrator/ProductManagement";
		
	}
	
	@RequestMapping(value = { "/admin/product/delete/{productId}" }, method = RequestMethod.GET)
	public String adminDeleteProduct(final Model model, final HttpServletRequest request,
			final HttpServletResponse response , @PathVariable("productId") int productId) throws IOException {
		
		  //String cf = request.getParameter("confirm"); 
		  //if(cf.equals("true")) {
			  productService.deleteProduct(productId); 
		  //}
		 
		
		return "redirect:/admin/product/list";
	}
}
