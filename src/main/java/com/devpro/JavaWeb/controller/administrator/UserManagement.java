package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.dto.UserSearch;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.impl.UserService;

@Controller
public class UserManagement  extends BaseController{
	
	@Autowired
	private UserService userService;
	
	/*
	 * @RequestMapping(value = {"/admin/qltk"} , method = RequestMethod.GET) public
	 * String cart1(final Model model, final HttpServletRequest request, final
	 * HttpServletResponse response ) throws IOException{ //trả về đường dẫn của
	 * shop model.addAttribute("users",userService.findAll() ); return
	 * "administrator/UserManagement"; }
	 */
	
	//delete
	@RequestMapping(value = { "/admin/user/delete/{userId}" }, method = RequestMethod.GET)
	public String adminDeleteUser(final Model model, final HttpServletRequest request,
			final HttpServletResponse response , @PathVariable("userId") int userId) throws IOException {
		
		  //String cf = request.getParameter("confirm"); 
		  //if(cf.equals("true")) {
		userService.deleteUser(userId); 
		  //}
		return "redirect:/admin/user/list";
	}
	
	
	//form thêm sản phẩm
		@RequestMapping(value = {"/admin/adduser"} , method = RequestMethod.GET)
		public String addUser(final Model model,
				final HttpServletRequest request,
				final HttpServletResponse response	
				)
		throws IOException{
			model.addAttribute("users", new User());
			return "administrator/adduser";
		}
		
		
		//sửa user
		@RequestMapping(value = {"/admin/user/management/{userId}"} , method = RequestMethod.GET)
		public String updateUserGet(final Model model,
				final HttpServletRequest request,
				final HttpServletResponse response,
				@PathVariable("userId") int userId
				)
		throws IOException{
			model.addAttribute("users", userService.getById(userId));
			return "administrator/adduser";
		}
		
		//sửa
		@RequestMapping(value = {"/admin/user/management/{userId}"} , method = RequestMethod.POST)
		public String updateUserPost(final Model model,
				final HttpServletRequest request,
				final HttpServletResponse response,
				@ModelAttribute("user") User user
				)
		throws IOException{
			userService.addOrUpdateUser(user);
			return "redirect:/admin/qltk";
		}
		
		
		//hien thi user va phan trang
		@RequestMapping(value = { "/admin/user/list" }, method = RequestMethod.GET)
		public String adminProductList(final Model model, final HttpServletRequest request,
				final HttpServletResponse response) throws IOException {
			
			String keyword = request.getParameter("keyword");
			
			Integer page = 1;
			try {
				page = Integer.parseInt(request.getParameter("page"));
			}catch(Exception e) {
				
			}
			UserSearch searchModel = new UserSearch();
			searchModel.setKeyword(keyword);
			searchModel.setPage(page);
			
			model.addAttribute("users", userService.searchUser(searchModel));
			model.addAttribute("searchModel", searchModel);
			return "administrator/UserManagement";
			
		}
}
